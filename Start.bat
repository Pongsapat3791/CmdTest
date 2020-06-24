@echo off
title Show
:S
cls
echo ------------------------------------------
echo                Start V 0.1               
echo ------------------------------------------
echo        [  0  ]   Start to Fix Tool
echo        [  1  ]   Start to Hacking Tool
echo ------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:0
cd CmdTool
"Clobby.bat"
:1
cd HackingTool
"Hlobby.bat"



