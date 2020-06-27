@echo off
title Show
:S
cls
echo ---------------------------------------------------
echo                     CmdTool
echo ---------------------------------------------------
echo             [color]   Color cmd
echo             [ p+n ]   Next part
echo             [  0  ]   Lobby Start
echo             [  1  ]   Msconfig
echo             [  2  ]   Regedit
echo             [  3  ]   Cmd
echo             [  4  ]   Services
echo             [  5  ]   Advanced System setting
echo             [  6  ]   Windows Firewall
echo             [  7  ]   Task Manager
echo             [  8  ]   Local Users and Groups
echo             [  9  ]   Disk Management
echo ---------------------------------------------------
set /p "Idcmd=is > "
goto %Idcmd%
:color 
color.bat
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






