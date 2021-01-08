@echo off

setlocal
call :setESC
  
:LOGIN
set/p uname=< uname.txt
set/p pass=< pass.txt
title Login
cls
echo -------------------------------------------------
echo                       Login
echo -------------------------------------------------
echo.
echo.
set/p "unamel=_               Username : "
set/p "passwordl=_               Password : %ESC%[30m"
echo.%ESC%[0m
IF "%unamel%"=="" goto LOGINERROR
IF "%passwordl"=="" goto LOGINERROR
IF NOT %unamel%==%uname% goto LOGINERROR
IF NOT %passwordl%==%pass% goto LOGINERROR
goto DONE

:LOGINERROR
cls
echo%ESC%[92m -------------------------------------------------
echo                     Error
echo -------------------------------------------------
echo.
echo     #     #
echo      #   #
echo       # #            Login Error
echo        #
echo       # #
echo      #   #
echo     #     #  
echo.
echo -------------------------------------------------
echo Invalid Username or password %ESC%[0m
pause
goto LOGIN

:DONE
title Done
cls
echo %ESC%[92m-------------------------------------------------
echo                       Done
echo -------------------------------------------------
echo.
echo               #
echo             #
echo     #     #            Login Successfully
echo      #  #
echo       #
echo.
echo.
echo -------------------------------------------------%ESC%[0m
pause
cd ..
cd HackingTool
"Hlobby.bat"

:setESC
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do rem"') do (
  set ESC=%%b
  exit /B 0
)


