//-----------------------------------------------------------------------------
// MSXgl Project Configuration
//-----------------------------------------------------------------------------

// Project name (will be the filename of the output .rom)
ProjName = "msxai";

// List of project modules to build
ProjModules = ["main", "brain_data"];

// List of library modules to build
LibModules = [
    "vdp",      // Essential for VRAM lookups
    "print",    // Fast text output for the terminal
    "input",    // For the chat interface later
    "math",     // For the weighted random selection
    "compress/pletter", // For decompressing the brain into VRAM
];

// Target MSX machine version (2 for MSX2)
Machine = "2";

// ROM Type (ROM_64K to fit code + compressed brain data)
Target = "ROM_64K";

// Code optimization priority
CompileComplexity = "Default";

// Activate verbose mode
Verbose = true;

// Advanced: Map binary files into the ROM
// This is how we get brain_index.bin and brain_data.bin into the ROM
// so the C code can see them as arrays.
ROMAssets = [
    { name: "brain_index_comp", file: "data/brain_index.plt" },
    { name: "brain_data_comp",  file: "data/brain_data.plt" },
];