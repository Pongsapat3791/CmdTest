@echo off
title Show
:S
cls
echo ---------------------------------------------------
echo                Start V 0.3.2            
echo ---------------------------------------------------
echo         [  0  ]   Start to Cmd Tool
echo         [  1  ]   Start to Hacking Tool
echo         [  2  ]   Start to Open Program Tool
echo ---------------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:0
cd CmdTool
"Clobby.bat"
:1
cd Login
"Login.bat"
:2
cd OpenProTool
"Olobby.bat"



