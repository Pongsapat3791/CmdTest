@echo off
title Show
:S
cls
echo -------------------------------------------
echo                 Hacking
echo -------------------------------------------
echo         [color]   Color cmd
echo         [  0  ]   Back
echo         [  1  ]   Show Profiles Wifi
echo         [  2  ]   Internet
echo -------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:0
cd ..
Start.bat
:1
ShowPasswordWifi.bat
:2
Internet.bat
:color
color.bat




