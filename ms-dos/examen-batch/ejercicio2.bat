@echo off
:: Variables contadoras
set /a contadorFicheros=0
set /a contadorDirectorios=0
set /a contadorNada=0

:bucle
echo.
set /p val="Ingrese ficheros, directorios o algo. Ingrese 'listo' para finalizar: "
echo.

if %val%==listo goto menu

:fichero
type %val%>nul
if errorlevel 1 goto directorio
if errorlevel 0 set /a contadorFicheros=%contadorFicheros% + 1 && goto bucle

:directorio
dir %val%>nul
if errorlevel 1 goto nada
if errorlevel 0 set /a contadorDirectorios=%contadorDirectorios% + 1 && goto bucle

:nada
set /a contadorNada=%contadorNada% + 1 && goto bucle
goto bucle


set count=0
:menu
echo.
echo Menu
echo A. Ficheros
echo B. Directorios
echo C. Nada
echo D. Salir

choice /m "Seleccione una opcion, debe realizar algo antes de salir: " /c:ABCD
if errorlevel 4 goto salir
if errorlevel 3 echo Se ingresaron %contadorNada% nadas && set /a count=1 && goto menu
if errorlevel 2 echo Se ingresaron %contadorDirectorios% directorios && set /a count=1 && goto menu
if errorlevel 1 echo Se ingresaron %contadorFicheros% ficheros && set /a count=1 && goto menu

:salir
echo %count%
if %count%==0 echo Debe realizar alguna accion && goto menu
echo.
echo Adios
