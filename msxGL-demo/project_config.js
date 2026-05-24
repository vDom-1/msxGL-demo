// msxGL-demo build configuration

// Project name (will be used for output filename)
ProjName = "msxGL_demo";

// List of project modules to build
ProjModules = ["main"];

// List of library modules to build
LibModules = ["system", "bios", "vdp", "print", "input", "memory"];

// Target MSX machine version (2 for MSX2, since Graphic 4 / Screen 5 is used)
Machine = "2";

// Target program format
Target = "ROM_64K";

// Add code to check MSX version at program startup
CheckVersion = true;

// Add a ROM signature to help flasher and emulator to detect the ROM type properly
AddROMSignature = true;

// Add application signature to binary data
AppSignature = true;
AppCompany = "GL";
AppID = "D1";

// Code optimization priority
CompileComplexity = "Default";

// Activate verbose mode and get more build information
Verbose = true;
