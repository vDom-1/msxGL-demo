@echo off
cls

:: Generate brain data and compress to plt files using Pletter
echo Generating and compressing brain data...
cd data
C:\MSX\MSXgl-1.4.1\tools\build\Node\node.exe trainer.js
if errorlevel 1 (
    echo Error: Failed to generate or compress brain data
    exit /b 1
)
cd ..

:: Build the project using MSX-GL
C:\MSX\MSXgl-1.4.1\tools\build\Node\node.exe C:\MSX\MSXgl-1.4.1\engine\script\js\build.js %1 %2 %3 %4 %5 %6 %7 %8 %9

