@echo off
title Change Color
:S
cls
echo ---------------------------------------------------------
echo          0 = Black       8 = Gray
echo          1 = Blue        9 = Light Blue
echo          2 = Green       A = Light Green
echo          3 = Aqua        B = Light Aqua
echo          4 = Red         C = Light Red
echo          5 = Purple      D = Light Purple
echo          6 = Yellow      E = Light Yellow
echo          7 = White       F = Bright White
echo  Example: "FC" produces light red on bright white  
echo ----------------------------------------------------------
set /p "Color=Color Id is > "
color %Color%
pause
set /p "Back=Back Y/N > "
if "%Back%"=="N" goto S
Hlobby.bat

