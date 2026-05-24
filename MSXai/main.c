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
    u32 mid_key;

    while (low <= high) {
        i16 mid = low + (high - low) / 2;
        mid_key = 0; 

        // Read 3 bytes from the sorted VRAM index
        VDP_ReadVRAM(ADDR_INDEX + (mid * 3), (u8*)&mid_key, 3);
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
    g_CurrentKey = ((g_CurrentKey << 6) & KEY_MASK) | (char_code & 0x3F);
}

// --- Main Application ---

void main() {
    // 1. Initialize Hardware
    VDP_SetMode(VDP_MODE_TEXT2); // 80 column mode
    VDP_ClearVRAM();
    Print_SetColor(0xF4); // White text, dark blue background
    
    Print_DrawText("MSXai V1.0\nINITIALIZING BRAIN...\n");

    // 2. Unpack Data to VRAM
    Pletter_UnpackToVRAM(brain_index_comp, ADDR_INDEX);
    Pletter_UnpackToVRAM(brain_data_comp, ADDR_DATA);

    Print_DrawText("READY.\n\nPROMPT: ");

    while(1) {
        // Check for user input to seed the AI
        u8 key = Keyboard_ReadKey();
        if (key != 0) {
            // Find char in our alphabet
            for (u8 i = 0; i < 64; i++) {
                if (Alphabet[i] == key) {
                    Print_Char(key);
                    UpdateKey(i);
                    break;
                }
            }
        }

        // If we have a context, start generating
        u16 state_idx = FindStateIndex(g_CurrentKey);
        
        if (state_idx != 0xFFFF) {
            u8 block[8];
            VDP_ReadVRAM(ADDR_DATA + (state_idx * 8), block, 8);
            
            u8 next_char_code = WeightedPick(block);
            
            // Artificial delay for "thinking" effect
            for(volatile u16 d=0; d<2000; d++); 

            Print_Char(Alphabet[next_char_code]);
            UpdateKey(next_char_code);
        } else {
            // If the AI is stuck, wait for user input
            Halt();
        }
    }
}