const fs = require('fs');

// 1. 64-Character Alphabet (6 bits per character)
const ALPHABET = " ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?'\"()-+/;:=" + " ".repeat(11); 
const CHAR_TO_INT = Object.fromEntries(ALPHABET.split('').map((c, i) => [c, i]));

function compileBigBrain(inputFile) {
    const rawText = fs.readFileSync(inputFile, 'utf8').toUpperCase();
    const text = rawText.split('').filter(c => ALPHABET.includes(c)).join('');
    
    console.log(`Training on ${text.length} characters...`);

    const transitions = {};
    const N_GRAM = 5; // 4 chars context -> 1 char prediction

    for (let i = 0; i < text.length - N_GRAM; i++) {
        const context = text.substring(i, i + (N_GRAM - 1));
        const nextChar = text[i + (N_GRAM - 1)];
        
        // 24-bit Key (4 chars * 6 bits)
        let keyId = 0;
        for(let j=0; j<context.length; j++) {
            keyId = (keyId << 6) | CHAR_TO_INT[context[j]];
        }

        if (!transitions[keyId]) transitions[keyId] = {};
        transitions[keyId][nextChar] = (transitions[keyId][nextChar] || 0) + 1;
    }

    // Sort keys so the MSX can use Binary Search
    const sortedKeys = Object.keys(transitions).map(Number).sort((a, b) => a - b);
    
    const indexFile = Buffer.alloc(sortedKeys.length * 3); // 24-bit (3 bytes) keys
    const brainFile = Buffer.alloc(sortedKeys.length * 8); // 4 chars + 4 weights

    sortedKeys.forEach((keyId, i) => {
        // Write 24-bit key to index
        indexFile.writeUIntLE(keyId, i * 3, 3);

        // Sort next-char probabilities
        const sortedProbs = Object.entries(transitions[keyId])
            .sort((a, b) => b[1] - a[1])
            .slice(0, 4);

        const maxFreq = sortedProbs[0][1];
        for (let j = 0; j < 4; j++) {
            if (sortedProbs[j]) {
                brainFile.writeUInt8(CHAR_TO_INT[sortedProbs[j][0]], i * 8 + j);
                brainFile.writeUInt8(Math.min(255, Math.round((sortedProbs[j][1] / maxFreq) * 255)), i * 8 + 4 + j);
            }
        }
    });

    fs.writeFileSync('brain_index.bin', indexFile);
    fs.writeFileSync('brain_data.bin', brainFile);
    
    console.log(`States captured: ${sortedKeys.length}`);
    console.log(`Index Size: ${(indexFile.length / 1024).toFixed(2)} KB`);
    console.log(`Data Size: ${(brainFile.length / 1024).toFixed(2)} KB`);
    console.log(`Total VRAM required: ${((indexFile.length + brainFile.length) / 1024).toFixed(2)} KB`);
}

compileBigBrain('training-data.txt');