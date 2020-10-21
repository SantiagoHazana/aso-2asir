@echo off
if exist %1 goto mostrar

choice /m "No existe el fichero, desea crearlo?"
if errorlevel 2 goto create
if errorlevel 1 goto fin


:mostrar
echo "El fichero existe y este es su contenido"
type %1
goto fin

:create
type nul > %1
dir
goto fin


:fin
pause