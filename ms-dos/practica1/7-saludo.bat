@echo off

:inicio
echo "1.- Saludo"
echo "2.- Despedida"
echo "3.- Salir"

choice /m "Seleccione una opcion" /c:123
if errorlevel 3 goto fin
if errorlevel 2 cls & echo "Adios" & goto inicio
if errorlevel 1 cls & echo "Hola" & goto inicio

:fin
echo Adios