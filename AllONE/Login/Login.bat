@echo off
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
set/p "passwordl=_               Password : "
echo.
IF "%unamel%"=="" goto LOGINERROR
IF "%passwordl"=="" goto LOGINERROR
IF NOT %unamel%==%uname% goto LOGINERROR
IF NOT %passwordl%==%pass% goto LOGINERROR
goto DONE

:LOGINERROR
echo -------------------------------------------------
echo                     Error
echo -------------------------------------------------
echo Invalid Username or password
pause
goto LOGIN

:DONE
title Done
cls
echo -------------------------------------------------
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
echo -------------------------------------------------
pause
cd ..
cd HackingTool
"Hlobby.bat"


