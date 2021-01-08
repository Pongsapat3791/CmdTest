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
Hlobby.bat
:1
cls
echo -------------------------------------------
echo      Ex.       "0.0.x.x"
echo                "www.Ex.com"
echo -------------------------------------------
set /p "P=is > "
Ping %P%
pause
goto S
:2
cls
echo -------------------------------------------
echo      Ex.       "0.0.x.x"
echo                "www.Ex.com"
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
echo -------------------------------------------
echo      Ex.       -t      -a
echo -------------------------------------------
set /p "Ne=is > "
netstat %Ne%
pause
goto S


