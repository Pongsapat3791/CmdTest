@echo off
title Show
setlocal
call :setESC

:Start
cls
echo -------------------------------------------
echo                   %ESC%[101;93mCmdTool%ESC%[0m
echo -------------------------------------------
echo           [  0  ]   %ESC%[32mLobby Start%ESC%[0m
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



:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)





