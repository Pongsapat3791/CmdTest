@echo off
title Show
:Start
cls
echo -------------------------------------------
echo                   CmdTool
echo -------------------------------------------
echo           [color]   Color cmd
echo           [  0  ]   Back
echo           [  1  ]   Drive Folder Hidden
echo           [  2  ]   Fix Gpedit Enabler
echo -------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:0
cd ..
Start.bat
:1
DriveFolderHidden.bat
:2
gpedit-enabler.bat
:color 
color.bat 






