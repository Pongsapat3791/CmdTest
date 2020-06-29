@echo off
title Show
:S
cls
echo ---------------------------------------------------
echo                  OpenProTool
echo ---------------------------------------------------
echo              [color]   Color cmd
echo  Ex. p1 p2   [ p+n ]   Next part
echo              [  0  ]   Lobby Start
echo              [  1  ]   Add Hardware Wizard
echo ---------------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:color 
color.bat
:0
cd ..
Start.bat
:1
hdwwiz
goto S
:p1
Olobby.bat







