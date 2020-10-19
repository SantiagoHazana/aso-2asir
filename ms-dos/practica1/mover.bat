@echo off
move C:\Users\shazana\Documents\asir\segundo\aso\ms-dos\*.txt C:\Users\shazana\Documents\asir\segundo\aso\ms-dos\midisco\
if errorlevel 1 echo "No se pudo realizar la copia" & goto fin

if errorlevel 0 echo "Se movio exitosamente los archivos"

:fin