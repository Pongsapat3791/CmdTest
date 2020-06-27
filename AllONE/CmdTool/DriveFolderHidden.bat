@echo off
title Drive Folder Hidden
:S
cls
echo -------------------------------------------
echo    Ex.     "C:\ --> C"
echo            "D:\ --> D"
echo -------------------------------------------
fsutil fsinfo drives
set /p "Drive=Name is > "
%Drive%:
attrib -s -h -r /s /d
set /p "Back=Back Y/N > "
if "%Back%"=="N" goto S
lobby.bat
