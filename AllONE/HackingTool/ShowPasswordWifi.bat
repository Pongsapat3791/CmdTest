@echo off
title Show Password Wifi
:S
cls
netsh wlan show profiles
echo ----------------------------------
echo           Show Password 
echo ----------------------------------
set /p "NAME=User Name is >"
netsh wlan show profiles "%NAME%" key=clear
set /p "Back=Back Y/N > "
if "%Back%"=="N" goto S
Hlobby.bat