@echo off

:inicio
echo "A.- Escanear disco duro"
echo "B.- Edito de Texto"
echo "C.- Estructura de ficheros y directorios"
echo "D.- Salir"
choice /m "Seleccione una opcion" /c:ABCD
if errorlevel 4 goto salir
if errorlevel 3 goto estructura
if errorlevel 2 goto editor
if errorlevel 1 goto escanear


:escanear
chkdsk C:
goto inicio

:editor
notepad
goto inicio

:estructura
tree /f
goto inicio

:salir
choice /m "Seguro que desea salir?"
if errorlevel 1 goto inicio
echo Adios