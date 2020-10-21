@echo off
if exist %1 (
	goto ordenar
)

echo "El archivo no existe"
goto fin

:ordenar
echo "El archivo existe"
sort /r %1

:fin
echo "Adios"


