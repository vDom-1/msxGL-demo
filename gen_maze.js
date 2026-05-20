const fs = require('fs');

const w = 15; // 31
const h = 12; // 25
const maze = Array(h * 2 + 1).fill(0).map(() => Array(w * 2 + 1).fill(1));

const visited = new Set();

function walk(x, y) {
    visited.add(`${x},${y}`);
    maze[y * 2 + 1][x * 2 + 1] = 0;
    
    const dirs = [[0, 1], [1, 0], [0, -1], [-1, 0]];
    // shuffle
    for (let i = dirs.length - 1; i > 0; i--) {
        const j = Math.floor(Math.random() * (i + 1));
        [dirs[i], dirs[j]] = [dirs[j], dirs[i]];
    }
    
    for (const [dx, dy] of dirs) {
        const nx = x + dx;
        const ny = y + dy;
        if (nx >= 0 && nx < w && ny >= 0 && ny < h && !visited.has(`${nx},${ny}`)) {
            maze[y * 2 + 1 + dy][x * 2 + 1 + dx] = 0;
            walk(nx, ny);
        }
    }
}

walk(0, 0);

// Set target to 2 at the end
maze[h * 2 - 1][w * 2 - 1] = 2;

// Make it 32x26 by adding a column and row of 1s
for (let r = 0; r < maze.length; r++) {
    maze[r].push(1);
}
maze.push(Array(w * 2 + 2).fill(1));

let output = '#define MAZE_WIDTH 32\n#define MAZE_HEIGHT 26\n#define BLOCK_SIZE 8\n\nconst u8 g_Maze[MAZE_HEIGHT][MAZE_WIDTH] = {\n';
for (let r = 0; r < maze.length; r++) {
    output += '    {' + maze[r].join(', ') + '},\n';
}
output += '};\n';

fs.writeFileSync('maze_out.txt', output);
