@echo off
title Show
setlocal
call :setESC

:S
cls
echo ---------------------------------------------------
echo              %ESC%[101;93mStart V 0.5.1.1%ESC%[0m
echo ---------------------------------------------------
echo         [  0  ]   %ESC%[32mStart to Cmd Tool%ESC%[0m
echo         [  1  ]   %ESC%[31mStart to Network Tool%ESC%[0m
echo         [  2  ]   %ESC%[36mStart to Open Program Tool%ESC%[0m
echo ---------------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:0
cd CmdTool
"Clobby.bat"
:1
cd networkTool
"Hlobby.bat"
:2
cd OpenProTool
"Olobby.bat"


:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)



