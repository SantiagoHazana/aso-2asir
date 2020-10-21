@echo off
:: Programa que recibe por parametro un fichero y se fija si existe y lo muestro si existe
:: Si no existe, pregunta si se desea crear (vacio) y se pide el nuevo nombre del fichero por variable

if exist %1 type %1 && goto salir

choice /m "Desea crear el fichero?" /c:CN
if errorlevel 2 goto salir
if errorlevel 1 goto crear

:crear
choice /m "Desea utilizar el nombre original o uno nuevo?" /c:ON
if errorlevel 2 goto nuevo
if errorlevel 1 goto original

:original
type nul>%1
goto salir

:nuevo
set /p nombreFichero="Ingrese el nombre del nuevo fichero: "
type nul>%nombreFichero%
goto salir

:salir
echo.
echo Adios