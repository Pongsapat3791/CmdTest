@echo off
title Show
setlocal
call :setESC

:S
cls
echo ---------------------------------------------------
echo                 %ESC%[101;93mOpenProTool 1%ESC%[0m
echo ---------------------------------------------------
echo  %ESC%[93mEx. p1 p2%ESC%[0m   [ p+n ]   %ESC%[96mNext part%ESC%[0m
echo              [  0  ]   %ESC%[32mLobby Start%ESC%[0m
echo              [  1  ]   Msconfig
echo              [  2  ]   Regedit
echo              [  3  ]   Cmd
echo              [  4  ]   Services
echo              [  5  ]   Advanced System setting
echo              [  6  ]   Windows Firewall
echo              [  7  ]   Task Manager
echo              [  8  ]   Local Users and Groups
echo              [  9  ]   Disk Management
echo ---------------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:0
cd ..
Start.bat
:1
msconfig
goto S
:2
regedit
goto S
:3
cmd
goto S
:4
services.msc
goto S
:5
sysdm.cpl
goto S
:6
firewall.cpl
goto S
:7
taskmgr
goto S
:8
lusrmgr.msc
goto S
:9
diskmgmt.msc
goto S
:p2
Olobby2.bat




:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)




