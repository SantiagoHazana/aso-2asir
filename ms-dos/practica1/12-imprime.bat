@echo off


for %%i in (%1, %2, %3) do (
	if exist %%i type %%i
	if not exist %%i echo "No existe el fichero"
)