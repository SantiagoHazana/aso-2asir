@echo off

:inicio
echo "Menu"
echo "A. Borrar la pantalla"
echo "B. Escanear el sistema"
echo "C. Salir del menu"
choice /m "Elija una opcion: " /c:ABC
if errorlevel 3 goto exit
if errorlevel 2 goto scan
if errorlevel 1 goto clear

:scan
chkdsk c:
goto inicio

:clear
cls
goto inicio

:exit
echo "Adios"