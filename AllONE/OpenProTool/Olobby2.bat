@echo off
title Show
setlocal
call :setESC

:S
cls
echo ---------------------------------------------------
echo                  %ESC%[101;93mOpenProTool%ESC%[0m
echo ---------------------------------------------------
echo  %ESC%[93mEx. p1 p2%ESC%[0m   [ p+n ]   %ESC%[96mNext part%ESC%[0m
echo              [  0  ]   %ESC%[32mLobby Start%ESC%[0m
echo              [  1  ]   Add Hardware Wizard
echo              [  2  ]   Local Group Policy Editor
echo ---------------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:0
cd ..
Start.bat
:1
hdwwiz
goto S
:2
Gpedit.msc
:p1
Olobby.bat


:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)







