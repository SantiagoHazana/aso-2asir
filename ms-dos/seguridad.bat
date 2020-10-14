@echo off
set fich="ejer.txt"
if exist %fich% goto mostrar

choice /m "No existe el fichero, desea crearlo?"
if errorlevel 2 goto fin

type nul > %fich%
dir
goto fin


:mostrar
echo "El fichero existe y este es su contenido"
type %fich%
goto fin


:fin
echo "Adios"