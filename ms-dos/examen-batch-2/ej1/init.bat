@echo off
set pass=5
set /a tries=0
set /a maxTries=2

if "%1"=="" goto noParameter
set /a tries=1
goto parameter


:noParameter
if %tries%==%maxTries% exit
set /p userPass="Enter number password: "
if %userPass%==%pass% call menu.bat && goto salir
set /a tries=%tries%+1
goto noParameter

:parameter
if %1==%pass% call menu.bat && goto salir
set /a tries=1
goto noParameter

:salir
echo.
echo Adios