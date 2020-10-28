@echo off

set /a countdiv=0

if "%1"=="" set /p val="Ingrese un numero o palabra: " && goto menu
set val=%1

:menu
set /a check=%val% + 0
if %check%==%val% goto numero
goto palabra

:numero
echo.
echo A. Divisores
echo B. Potencias
echo C. Salir
choice /m "Seleccione una opcion del menu: " /c:ABC
if errorlevel 3 goto salir
if errorlevel 2 goto pot
if errorlevel 1 goto div


:div
if %countdiv%==3 goto numero
set /p divisor="Ingrese un divisor: "
set /a res=%val% / %divisor%
set /a res2=%res% * %divisor%
if %res2%==%val% set /a countdiv=%countdiv% + 1
goto div

:pot
set res=1
for /L %%i in (1, 1, %val%) do (
    set /a res*=%val%
)
echo %res%
echo.
goto numero


:palabra
echo.
echo A. Cantidad
echo B. Salir
choice /m "Seleccione una opcion: " /c:AB
if errorlevel 2 goto salir

:cant
set /p file="Ingrese un fichero o directorio: "

if exist %file% (
    type %file%>nul
    if errorlevel 1 goto directorio
    find /i /v /n "%val%" %file%
    echo.
    goto palabra

    :directorio
    dir %file% | find /i /v "%val%"
    echo.
    goto palabra
)
goto cant


:salir
echo.
echo Adios