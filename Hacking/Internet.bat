@echo off
title Internet
:S
cls
echo -------------------------------------------
echo            [  0  ]   Back
echo            [  1  ]   Ping
echo            [  2  ]   nslookup
echo            [  3  ]   ipconfig
echo            [  4  ]   netstat
echo -------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:0
lobby.bat
:1
cls
echo -------------------------------------------
echo      Ex.       "ping 0.0.x.x"
echo                "ping www.Ex.com"
echo -------------------------------------------
set /p "P=is > "
Ping %P%
pause
goto S
:2
cls
echo -------------------------------------------
echo      Ex.       "ping 0.0.x.x"
echo                "ping www.Ex.com"
echo -------------------------------------------
set /p "Ns=is > "
nslookup %Ns%
pause
goto S
:3
cls
ipconfig
pause
goto S
:4
cls
set /p "Ne=is > "
netstat %Ne%
pause
goto S


