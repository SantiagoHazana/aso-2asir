@echo off

set usefich=0
set usedir=0

set countdir=0

:getnum
set /p num="Ingrese un numero: "
set /a check=%num% + 0
if %check%==%num% goto menu
goto getnum

:menu
echo.
echo A. Ficheros
echo B. Directorios
echo C. Salir
choice /m "Seleccione una opcion: " /c:ABC
if errorlevel 3 goto salir
if errorlevel 2 goto direct
if errorlevel 1 goto fich

:fich
set countfich=0
if not %usefich%==0 (
    set /p num="Ingrese un numero: "
    set /a check=%num% + 0
    if not %check%==%num% goto fich
)
set usefich=1
:askfich
if %countfich%==%num% goto menu
set /p fichero="Ingrese un fichero: "
type %fichero%>nul
if errorlevel 1 goto askfich
set /a countfich=%countfich% + 1
goto askfich


:direct
set countdir=0
if not %usedir%==0 (
    set /p num="Ingrese un numero: "
    set /a check=%num% + 0
    echo %num%
    echo %check%
    if not %check%==%num% goto direct
)
set usedir=1
:askdir
if %countdir%==%num% goto menu
set /p dire="Ingrese un directorio: "
dir %dire%>nul
if errorlevel 1 goto askdir
set /a countdir=%countdir% + 1
goto askdir

:salir
echo.
echo Adios