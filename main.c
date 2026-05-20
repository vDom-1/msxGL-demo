#include "msxgl.h"
#include "vdp.h"
#include "input.h"
#include "bios.h"

#define MAZE_WIDTH 32
#define MAZE_HEIGHT 26
#define BLOCK_SIZE 8

const u8 g_Maze[MAZE_HEIGHT][MAZE_WIDTH] = {
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
    {1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1},
    {1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 1},
    {1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1},
    {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 1},
    {1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1},
    {1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 1},
    {1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1},
    {1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1},
    {1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1},
    {1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 1},
    {1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 1},
    {1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1},
    {1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 1},
    {1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 1},
    {1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 1, 1},
    {1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 1},
    {1, 0, 1, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 1, 0, 1, 0, 1, 1},
    {1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 1, 1, 1, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1},
    {1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 1, 0, 1, 0, 0, 0, 1, 0, 1, 1},
    {1, 0, 1, 1, 1, 0, 1, 1, 1, 0, 1, 0, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 0, 1, 1, 1, 1, 1, 0, 1, 1},
    {1, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 2, 1, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
    {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1},
};

// Posição inicial do jogador
u8 g_PlayerX = 4;
u8 g_PlayerY = 4;

// Sprite pattern (Pinguim 16x16 - Base branca)
const u8 g_SpritePenguin[] = {
    // Top-Left
    0x00, 0x00, 0x00, 0x03, 0x06, 0x06, 0x07, 0x03,
    // Bottom-Left
    0x01, 0x0B, 0x7B, 0x7B, 0x03, 0x03, 0x07, 0x00,
    // Top-Right
    0x00, 0x00, 0x00, 0xB8, 0xE8, 0xE8, 0xF8, 0xF8,
    // Bottom-Right
    0xF0, 0xF8, 0xFA, 0xFA, 0xF8, 0xC0, 0xA0, 0x70
};

// Sprite pattern (Pinguim 16x16 - Camada de cor / OR)
const u8 g_SpritePenguinOR[] = {
    // Top-Left
    0x17, 0x3F, 0x1F, 0x3C, 0x39, 0x39, 0x38, 0x3C,
    // Bottom-Left
    0x1E, 0x74, 0x84, 0x84, 0xFD, 0x3F, 0x0F, 0x07,
    // Top-Right
    0xE0, 0xF8, 0xF8, 0x44, 0x14, 0x14, 0xE4, 0xC4,
    // Bottom-Right
    0x08, 0x06, 0x05, 0x05, 0xC7, 0xFC, 0xF0, 0xF8
};

bool CheckWall(u8 x, u8 y) {
    u8 col = x / 8;
    u8 row = y / 8;
    if (col >= MAZE_WIDTH || row >= MAZE_HEIGHT) return TRUE;
    return g_Maze[row][col] == 1;
}

bool CheckTarget(u8 x, u8 y) {
    u8 col = x / 8;
    u8 row = y / 8;
    if (col >= MAZE_WIDTH || row >= MAZE_HEIGHT) return FALSE;
    return g_Maze[row][col] == 2;
}

bool IsCollision(u8 x, u8 y) {
    // Check screen boundaries
    if (x > 256 - 16 || y > 212 - 16) return TRUE;
    
    // Use an 8x8 hitbox centered in the 16x16 penguin (offsets +4)
    if (CheckWall(x + 4, y + 4)) return TRUE;
    if (CheckWall(x + 11, y + 4)) return TRUE;
    if (CheckWall(x + 4, y + 11)) return TRUE;
    if (CheckWall(x + 11, y + 11)) return TRUE;
    
    return FALSE;
}

const u8 g_TileWall[32] = {
    0x66, 0x66, 0x66, 0x66, // Dark Red line
    0x68, 0x88, 0x86, 0x88, // Med Red + Dark Red lines
    0x68, 0x88, 0x86, 0x88, 
    0x66, 0x66, 0x66, 0x66, // Dark Red line
    0x88, 0x68, 0x88, 0x86, // Shifted brick
    0x88, 0x68, 0x88, 0x86,
    0x66, 0x66, 0x66, 0x66, // Dark Red line
    0x68, 0x88, 0x86, 0x88
};

const u8 g_TileFinish[32] = {
    0xFF, 0xFF, 0x11, 0x11,
    0xFF, 0xFF, 0x11, 0x11,
    0xFF, 0xFF, 0x11, 0x11,
    0xFF, 0xFF, 0x11, 0x11,
    0x11, 0x11, 0xFF, 0xFF,
    0x11, 0x11, 0xFF, 0xFF,
    0x11, 0x11, 0xFF, 0xFF,
    0x11, 0x11, 0xFF, 0xFF
};

void DrawMaze() {
    // 1. Draw tile patterns to offscreen VRAM (Y=216)
    VDP_CommandHMMC(g_TileWall, 0, 216, 8, 8);
    VDP_CommandHMMC(g_TileFinish, 8, 216, 8, 8);

    // 2. Loop through maze and stamp tiles using HMMM
    for (u8 y = 0; y < MAZE_HEIGHT; y++) {
        for (u8 x = 0; x < MAZE_WIDTH; x++) {
            if (g_Maze[y][x] == 1) {
                VDP_CommandHMMM(0, 216, x * BLOCK_SIZE, y * BLOCK_SIZE, 8, 8);
            } else if (g_Maze[y][x] == 2) {
                VDP_CommandHMMM(8, 216, x * BLOCK_SIZE, y * BLOCK_SIZE, 8, 8);
            }
        }
    }
}

// Função principal
void main(void)
{
    // 1. Inicializa o modo de vídeo SCREEN 5 (Graphic 4) [1]
    VDP_SetMode(VDP_MODE_GRAPHIC4);
    
    // Limpa a tela preenchendo a VRAM com a cor preta
    VDP_FillVRAM_16K(0x00, 0, 0x8000); 

    // Ajusta a paleta de cores
    VDP_SetPaletteEntry(2, RGB16(7, 7, 7)); // Cor 2: Branco (Barriga e Rosto)
    VDP_SetPaletteEntry(3, RGB16(7, 4, 1)); // Cor 3: Laranja (Bico e Pés - soma da Cor 1 e 2)
    // A Cor 1 (Preto) é o padrão do MSX, será usada nos contornos do pinguim!

    // Configura os Sprites
    VDP_EnableSprite(TRUE);
    VDP_SetSpriteFlag(VDP_SPRITE_SIZE_16 | VDP_SPRITE_SCALE_1);
    
    // Carrega os 2 padrões (4 blocos de 8 bytes cada)
    VDP_LoadSpritePattern(g_SpritePenguin, 0, 4);   // Padrão base no índice 0
    VDP_LoadSpritePattern(g_SpritePenguinOR, 4, 4); // Padrão de sobreposição no índice 4
    
    // Configura os 2 sprites simultâneos
    VDP_SetSpriteExUniColor(0, g_PlayerX, g_PlayerY, 0, 0x02); // Camada 1 (Cor 2)
    VDP_SetSpriteExUniColor(1, g_PlayerX, g_PlayerY, 4, VDP_SPRITE_CC | 0x01); // Camada 2 (Cor 1 c/ sobreposição)

    // Draw the maze blocks
    DrawMaze();

    BIOS_SetKeyClick(FALSE);

    // Loop principal do jogo
    while(1)
    {
        u8 nextX = g_PlayerX;
        u8 nextY = g_PlayerY;

        // Lê a entrada do teclado (Setas)
        if (Keyboard_IsKeyPressed(KEY_UP))    nextY--;
        else if (Keyboard_IsKeyPressed(KEY_DOWN))  nextY++;
        
        if (Keyboard_IsKeyPressed(KEY_LEFT))  nextX--;
        else if (Keyboard_IsKeyPressed(KEY_RIGHT)) nextX++;

        // Only move if there is no collision
        if (!IsCollision(nextX, nextY)) {
            g_PlayerX = nextX;
            g_PlayerY = nextY;
        } else if (nextX != g_PlayerX && nextY != g_PlayerY) {
            // Try sliding along walls
            if (!IsCollision(nextX, g_PlayerY)) {
                g_PlayerX = nextX;
            } else if (!IsCollision(g_PlayerX, nextY)) {
                g_PlayerY = nextY;
            }
        }

        if (CheckTarget(g_PlayerX + 4, g_PlayerY + 4) || CheckTarget(g_PlayerX + 11, g_PlayerY + 11)) {
            // Reached target! Stop and fill screen with green
            VDP_FillVRAM_16K(0x33, 0, 0x8000); 
            while(1) { Halt(); }
        }

        // 4. Desenha o jogador (sprites sobrepostos) na nova posição
        VDP_SetSpritePosition(0, g_PlayerX, g_PlayerY);
        VDP_SetSpritePosition(1, g_PlayerX, g_PlayerY);

        // 5. Espera o sincronismo vertical (V-Sync) para manter a velocidade constante
        Halt(); 
    }
}