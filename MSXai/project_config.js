//-----------------------------------------------------------------------------
// MSXgl Project Configuration
//-----------------------------------------------------------------------------

// Project name (will be the filename of the output .rom)
const ProjectName = "MSXai";

// Target MSX generation:
// 1: MSX1, 2: MSX2, 2P: MSX2+, TR: Turbo-R
const Machine = "2";

// ROM Type:
// ROM_8K, ROM_16K, ROM_32K, ROM_48K, ROM_64K
// Using 64K to fit our code + compressed brain data
const Target = "ROM_64K";

// List of modules to include
const LibModules = [
    "vdp",      // Essential for VRAM lookups
    "print",    // Fast text output for the terminal
    "input",    // For the chat interface later
    "math",     // For the weighted random selection
    "compress/pletter", // For decompressing the brain into VRAM
];

// Emulator to use for testing (e.g., "openmsx", "blueMSX")
const Emulator = "openmsx";

// Optimization level (for SDCC)
// "speed" or "size"
const Optimization = "speed";

// Advanced: Map binary files into the ROM
// This is how we get brain_index.bin and brain_data.bin into the ROM
// so the C code can see them as arrays.
const ROMAssets = [
    { name: "brain_index_comp", file: "data/brain_index.plt" },
    { name: "brain_data_comp",  file: "data/brain_data.plt" },
];

//-----------------------------------------------------------------------------
module.exports = { ProjectName, Machine, Target, LibModules, Emulator, Optimization, ROMAssets };

// Add this at the top or bottom of your project_config.js
const { execSync } = require('child_process');

// This function runs before the compiler starts
function PreBuild() {
    console.log("Compiling & Compressing Brain Data...");
    // 1. Run your Node generator (optional if you want it fully auto)
    // execSync('node generator.js'); 
    
    // 2. Run Pletter to compress the binaries
    // Note: Adjust the path to where your pletter.exe lives in MSXgl
    const pletterPath = "../../tools/build/Win32/pletter.exe"; 
    execSync(`${pletterPath} data/brain_index.bin data/brain_index.plt`);
    execSync(`${pletterPath} data/brain_data.bin data/brain_data.plt`);
}

module.exports = { 
    ProjectName, Machine, Target, LibModules, 
    Emulator, Optimization, ROMAssets, PreBuild 
};