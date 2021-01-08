@echo off
title Show
setlocal
call :setESC

:S
cls
echo -------------------------------------------
echo                 %ESC%[101;93mHacking%ESC%[0m
echo -------------------------------------------
echo         [  0  ]   %ESC%[32mLobby Start%ESC%[0m
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







:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)