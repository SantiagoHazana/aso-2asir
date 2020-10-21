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

type %val%>nul
if errorlevel 0 set /a contadorFicheros=%contadorFicheros% + 1 && goto bucle

dir %val%>nul
if errorlevel 0 set /a contadorDirectorios=%contadorDirectorios% + 1 && goto bucle

set /a contadorNada=%contadorNada% + 1 && goto bucle
goto bucle

:menu
set /a count=0
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
echo.
if %count%==0 echo Debe realizar alguna accion && goto menu
echo.
echo Adios
