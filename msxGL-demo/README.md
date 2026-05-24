# 🐧 msxGL-demo: Labirinto do Pinguim para MSX2

Um jogo/demonstração de labirinto para a plataforma **MSX2**, escrito em C e desenvolvido com a biblioteca [msxGL](https://github.com/aoineko-org/MSXgl) (MSX Game Library). 

Este projeto demonstra o uso de recursos avançados do chip gráfico (VDP) do MSX2, incluindo comandos de cópia ultra-rápida de VRAM, paletas personalizadas, sprites multicoloridos sobrepostos (Sprite OR) e física simplificada com deslizamento de parede.

---

## 🕹️ Como Jogar

O objetivo do jogo é guiar o pequeno pinguim até a saída do labirinto.

*   **Controles:** Use as **Setas do Teclado** (Cima, Baixo, Esquerda, Direita) para mover o pinguim.
*   **Mecânica de Deslizamento:** Caso o pinguim colida diagonalmente em uma parede, ele deslizará suavemente ao longo dela se houver espaço livre.
*   **Vitória:** Chegue ao bloco de chegada (marcado com um padrão de xadrez quadriculado). Ao vencer, a tela ficará verde e o jogo será concluído.

---

## 🛠️ Detalhes Técnicos e Arquitetura

### 1. Gráficos em SCREEN 5 (Graphic 4)
O demo é configurado no modo **SCREEN 5**, que oferece uma resolução de $256 \times 212$ pixels com 16 cores simultâneas de uma paleta de 512.
*   **Paleta Personalizada:** Cores específicas são configuradas dinamicamente na inicialização usando `VDP_SetPaletteEntry` (como o branco puro e tons de laranja para o bico/pés do pinguim).
*   **Sprites sobrepostos (Sprite OR):** Para superar a restrição do MSX de apenas 1 cor por linha por sprite, o pinguim de $16 \times 16$ pixels é composto por **dois sprites sincronizados em posição**:
    1.  **Sprite 0:** Padrão base (`g_SpritePenguin`), renderizado em Branco (Cor 2).
    2.  **Sprite 1:** Padrão de sobreposição (`g_SpritePenguinOR`), renderizado em Preto (Cor 1) com a flag de cor `VDP_SPRITE_CC` ativa (aplicando operação OR lógica), criando contornos e detalhes em múltiplas cores.

### 2. Renderização de Alto Desempenho do Labirinto (VDP Commands)
O labirinto é desenhado de forma extremamente rápida, evitando a lentidão da CPU:
*   Os padrões de ladrilho para a parede (`g_TileWall`) e para a chegada (`g_TileFinish`) são inicialmente enviados para a VRAM oculta (fora da tela, coordenada $Y=216$) usando o comando `VDP_CommandHMMC` (High-speed Move CPU to VRAM).
*   Durante a renderização do cenário na função `DrawMaze`, o jogo lê a matriz do mapa e executa o comando `VDP_CommandHMMM` (High-speed Move VRAM to VRAM) para estampar os blocos nas coordenadas correspondentes da tela visível de forma instantânea.

### 3. Hitbox e Colisão
*   O pinguim tem um tamanho visual de $16 \times 16$ pixels, mas utiliza uma **hitbox reduzida de $8 \times 8$ pixels** centralizada no meio do sprite (com offset de +4 pixels nas bordas).
*   Isso garante uma sensação de colisão mais justa e fluida ao caminhar pelos corredores de 8 pixels do labirinto.

---

## 📂 Estrutura de Arquivos

*   📁 [emul/](file:///c:/MSX/msxGL-demo/emul) - Pasta reservada para configurações e binários do emulador (como o openMSX).
*   📁 [out/](file:///c:/MSX/msxGL-demo/out) - Diretório onde os arquivos compilados (incluindo o arquivo `.rom`) são gerados.
*   📄 [main.c](file:///c:/MSX/msxGL-demo/main.c) - Código-fonte principal do jogo. Contém a inicialização do VDP, loops de controle, IA de colisão e o desenho do labirinto.
*   📄 [msxgl_config.h](file:///c:/MSX/msxGL-demo/msxgl_config.h) - Arquivo de configuração de recursos da biblioteca msxGL (habilitando/desabilitando módulos como BIOS, VDP, Input, etc.).
*   📄 [project_config.js](file:///c:/MSX/msxGL-demo/project_config.js) - Arquivo de configuração do build. Define o formato de saída (`ROM_32K`), máquina alvo (MSX2), módulos a incluir e nível de compilação.
*   📄 [gen_maze.js](file:///c:/MSX/msxGL-demo/gen_maze.js) - Script utilitário em Node.js que gera um novo labirinto aleatório usando o algoritmo de busca em profundidade (DFS) e formata a saída como uma matriz C de 32x26.
*   📄 [maze_out.txt](file:///c:/MSX/msxGL-demo/maze_out.txt) - O resultado da última execução do gerador de labirinto (matriz de dados C).
*   📄 [build.bat](file:///c:/MSX/msxGL-demo/build.bat) - Script em lote para automatizar a compilação do projeto chamando o motor de build do msxGL.

---

## 🚀 Compilação e Execução

### Pré-requisitos
1.  **msxGL** Presente em seu sistema (o script de build padrão aponta para o diretório padrão `C:\MSX\MSXgl-1.4.1\`).
2.  **Node.js** Disponibilizado pela msxGL (caso queira gerar novos labirintos aleatórios usando o `gen_maze.js`).
3.  Um emulador de MSX2 (como o **openMSX**) associado para rodar a ROM gerada.

### Passos para Compilar
1.  Abra o terminal (Command Prompt ou PowerShell) no diretório do projeto.
2.  Execute o script de build:
    ```cmd
    build.bat
    ```
3.  O compilador chamará o compilador SDCC (Small Device C Compiler) por trás das cenas e gerará a ROM na pasta `out/` com o nome `msxGL_demo.rom`.

### Gerando um novo Labirinto (Opcional)
Se desejar gerar um novo layout de labirinto aleatório:
1.  Execute o script gerador com o Node.js:
    ```bash
    node gen_maze.js
    ```
2.  Copie o conteúdo de `maze_out.txt` e substitua a matriz `g_Maze` dentro do arquivo [main.c](file:///c:/MSX/msxGL-demo/main.c).
3.  Compile o jogo novamente.