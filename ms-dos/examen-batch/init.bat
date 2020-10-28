@echo off
set pass=rosalia
set /a tries=0
set /a maxTries=2

if "%1"=="" goto noParameter
set /a tries=1
goto parameter


:noParameter
if %tries%==%maxTries% goto salir
set /p userPass="Enter password: "
if %userPass%==%pass% call operations.bat && goto salir
set /a tries=%tries%+1
goto noParameter

:parameter
if %1==%pass% call operations.bat && goto salir
set /a tries=1
goto noParameter

:salir
echo.
echo Adios