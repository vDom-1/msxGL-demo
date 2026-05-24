@echo off
cls

:: Chama o sistema de build do MSX-GL usando o Node.js embutido nele
C:\MSX\MSXgl-1.4.1\tools\build\Node\node.exe C:\MSX\MSXgl-1.4.1\engine\script\js\build.js %1 %2 %3 %4 %5 %6 %7 %8 %9
