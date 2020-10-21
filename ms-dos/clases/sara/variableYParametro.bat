@echo off

:: Pedimos por parametro un fichero, si existe lo mostramos
@REM if exist %1 type %1

:: Pedirmos por variable un fichero, si existe lo mostramos
@REM set /p nombreFichero="Ingrese el nombre de un ficher para mostrarlo: "
@REM if exist %nombreFichero% type %nombreFichero%

:: Programa que recibe por parametro el nombre de un fichero y se fija si existe y lo muestro si existe y salgo
:: Si no existe, pregunta si se desea crear (crearlo vacio), si se desea crear, se pregunta si se utiliza el 
:: nombre original o se pide el nuevo nombre del fichero por variable

if exist %1 type %1 && goto salir
if not exist %1 goto crear

:crear
choice /m "Desea crear el fichero?"
if errorlevel 2 goto salir
if errorlevel 1 goto consulta

:consulta
choice /m "Desea ingresar un nuevo nombre?"
if errorlevel 2 notepad %1 && goto salir
if errorlevel 1 goto crear2

:crear2
set /p nuevoNombre="Nuevo nombre: "
notepad %nuevoNombre%
goto salir

:salir
echo.
echo.
echo Adios