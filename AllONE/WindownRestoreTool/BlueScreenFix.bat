@echo off
title Show
setlocal
call :setESC

:Start
cls
echo -------------------------------------------
echo                   %ESC%[101;93mBlue Screen Fix%ESC%[0m
echo -------------------------------------------
echo           [  0  ]   %ESC%[32mBack%ESC%[0m
echo           [  1  ]   stop code: UNEXPECTED STORE EXCEPTION
echo -------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%

:0
Clobby.bat

:1
DISM.exe /Online /Cleanup-image /Restorehealth
sfc /scannow
pause
goto Start

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)