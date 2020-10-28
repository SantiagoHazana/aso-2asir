@echo off

if "%1"=="" echo Debe ingresar un parametro && goto salir

if exist %1 (
    echo El fichero o directorio existe, se mostrara su contenido
    echo.
    type %1>nul
    if errorlevel 1 goto direct
    type %1
    goto salir

    :direct
    dir %1
    goto salir
)

choice /m "Desea buscar en todo el disco el valor?"
if errorlevel 2 goto salir

set /p fichero="Ingrese el nombre del fichero donde guardar el resultado: "
dir /s c:\ | find "%1" > %fichero%

:salir
echo.
echo Adios