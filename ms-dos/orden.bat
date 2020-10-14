@echo off
if exist micole.dat (
	goto ordenar
)
goto fin

:fin
echo "El archivo no existe"

:ordenar
echo "El archivo existe"
sort /r micole.dat



