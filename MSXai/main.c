#include "msxgl.h"
#include "vdp.h"
#include "math.h"
#include "input.h"
#include "compress/pletter.h"

// --- Constants & VRAM Map ---
#define ADDR_INDEX    0x1000 // 15.3KB (5116 states * 3 bytes)
#define ADDR_DATA     0x5000 // 40.9KB (5116 states * 8 bytes)
#define STATE_COUNT   5116
#define KEY_MASK      0x00FFFFFF // 24-bit mask

// From project_config.js ROMAssets
extern const u8 brain_index_comp[];
extern const u8 brain_data_comp[];

// 64-character alphabet matching our Node.js generator
const u8 Alphabet[64] = " ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?'\"()-+/;:=";

// --- Global State ---
u32 g_CurrentKey = 0;

// --- Core Functions ---

/**
 * Perform a Binary Search in VRAM for the 24-bit context key.
 */
u16 FindStateIndex(u32 target_key) {
    i16 low = 0;
    i16 high = STATE_COUNT - 1;
    u8 key_bytes[3];

    while (low <= high) {
        i16 mid = low + (high - low) / 2;
        u32 mid_key = 0;

        // Read 3 bytes from the sorted VRAM index
        // VDP_ReadVRAM takes 4 params in 128K mode: (srcLow, srcHigh, dest, count)
        VDP_ReadVRAM((u16)ADDR_INDEX + (mid * 3), 0, key_bytes, 3);
        mid_key = ((u32)key_bytes[0] << 16) | ((u32)key_bytes[1] << 8) | (u32)key_bytes[2];
        mid_key &= KEY_MASK;

        if (mid_key == target_key) return (u16)mid;
        if (mid_key < target_key)  low = mid + 1;
        else                       high = mid - 1;
    }
    return 0xFFFF; // Not found
}

/**
 * Choose the next character based on stored probabilities.
 */
u8 WeightedPick(u8* block) {
    u16 total_weight = 0;
    for (u8 i = 4; i < 8; i++) total_weight += block[i];
    
    if (total_weight == 0) return 0; // Space fallback

    u16 roll = Math_GetRandom16() % total_weight;
    u16 acc = 0;

    for (u8 i = 0; i < 4; i++) {
        acc += block[i + 4];
        if (roll < acc) return block[i];
    }
    return block[0];
}

/**
 * Slide the 24-bit window with a new 6-bit character.
 */
void UpdateKey(u8 char_code) {
    g_CurrentKey = (((u32)g_CurrentKey << 6) & (u32)KEY_MASK) | (u32)(char_code & 0x3F);
}

// --- Main Application ---

void main() {
    // 1. Initialize Hardware
    VDP_SetMode(VDP_MODE_TEXT2); // 80 column mode
    VDP_ClearVRAM();
    Print_SetColor(15, 1); // White text (15) on dark blue background (1)
    
    Print_DrawText("MSXai V1.0\nINITIALIZING BRAIN...\n");

    // 2. Unpack Data to VRAM
    Pletter_UnpackToVRAM(brain_index_comp, ADDR_INDEX);
    Pletter_UnpackToVRAM(brain_data_comp, ADDR_DATA);

    Print_DrawText("READY.\n\nPROMPT: ");

    while(1) {

        // 1. Get the last pressed key (returns ASCII or 0)
        u8 key = Keyboard_ReadNextChar();

        // 2. 0 means no key, 255 usually means a function key we should ignore
        if (key != 0 && key != 255) {
            // 3. Convert lowercase to uppercase (since our Brain is uppercase)
            if(key >= 'a' && key <= 'z') key -= 32;

            // 4. Check if the character exists in our 64-char Alphabet
            for (u8 i = 0; i < 64; i++) {
                if (Alphabet[i] == key) {
                    // 5. Echo to screen
                    c8 out_user[2] = { key, 0 };
                    Print_DrawText(out_user);
                    
                    // 6. Seed the AI with this new character
                    UpdateKey(i);
                    break; 
                }
            }
        }

        // If we have a context, start generating
        u16 state_idx = FindStateIndex(g_CurrentKey);
        
        if (state_idx != 0xFFFF) {
            static u8 block[8];  // Use static to ensure stable memory location
            VDP_ReadVRAM((u16)ADDR_DATA + (state_idx * 8), 0, block, 8);
            
            u8 next_char_code = WeightedPick(block);
            
            // Artificial delay for "thinking" effect
            for(volatile u16 d=0; d<2000; d++); 

            // Print the generated character
            c8 out_char[2] = { Alphabet[next_char_code], 0 };
            Print_DrawText(out_char);
            UpdateKey(next_char_code);
        } else {
            // If the AI is stuck, wait (or restart)
            Halt();
        }
    }
}