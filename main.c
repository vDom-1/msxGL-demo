#include "msxgl.h"
#include "vdp.h"
#include "input.h"
#include "bios.h"

// Posição inicial do jogador
u8 g_PlayerX = 128;
u8 g_PlayerY = 100;

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

    BIOS_SetKeyClick(FALSE);

    // Loop principal do jogo
    while(1)
    {
        // Lê a entrada do teclado (Setas)
        if (Keyboard_IsKeyPressed(KEY_UP))    g_PlayerY--;
        if (Keyboard_IsKeyPressed(KEY_DOWN))  g_PlayerY++;
        if (Keyboard_IsKeyPressed(KEY_LEFT))  g_PlayerX--;
        if (Keyboard_IsKeyPressed(KEY_RIGHT)) g_PlayerX++;

        // 4. Desenha o jogador (sprites sobrepostos) na nova posição
        VDP_SetSpritePosition(0, g_PlayerX, g_PlayerY);
        VDP_SetSpritePosition(1, g_PlayerX, g_PlayerY);

        // 5. Espera o sincronismo vertical (V-Sync) para manter a velocidade constante
        Halt(); 
    }
}