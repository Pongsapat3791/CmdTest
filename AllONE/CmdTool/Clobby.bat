@echo off
title Show
:Start
cls
echo -------------------------------------------
echo                   CmdTool
echo -------------------------------------------
echo           [color]   Color cmd
echo           [  0  ]   Lobby Start
echo           [  1  ]   Drive Folder Hidden
echo           [  2  ]   Fix Gpedit Enabler
echo -------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:color 
color.bat 
:0
cd ..
Start.bat
:1
DriveFolderHidden.bat
:2
gpedit-enabler.bat 






