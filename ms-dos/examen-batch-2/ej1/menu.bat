@echo off


:menu
echo A. Fichero
echo B. Directorio
echo C. Salida

choice /m "Seleccione una opcion: " /c:ABC
if errorlevel 3 goto salir
if errorlevel 2 goto direct
if errorlevel 1 goto fich


:fich
echo.
set /p fichero="Ingrese el nombre de un fichero: "
type %fichero%>nul
if errorlevel 1 echo No es fichero
if errorlevel 0 goto buscar

:buscar
set /p palabra="Ingrese el texto a buscar: "
find /c "%palabra%" %fichero%
find /c "%palabra%" %fichero% >>aciertos.txt && find /v "%palabra%" %fichero% >>errores.txt

:direct

dir 

:salir