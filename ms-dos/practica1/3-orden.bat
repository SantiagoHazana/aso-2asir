@echo off
if exist micole.dat (
	goto ordenar
)
goto fin

:ordenar
echo "El archivo existe"
sort /r micole.dat
goto salir

:fin
echo "El archivo no existe"

:salir
echo "Adios"