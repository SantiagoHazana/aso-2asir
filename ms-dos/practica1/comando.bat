@echo off

rem "Mensaje con rem, es un comentario"
:: "Otra forma de poner comentario"

echo "Mensjae con echo"
pause
cls
dir

:clase
echo "Esto es un bucle"
choice /m "Quiere continuar?"
if errorlevel 2 goto fin
if errorlevel 1 goto clase

:fin
echo "Fin del bucle"

rem "Creacion de variable"
set unaVariable = "Mensaje en variable"

rem "La variable se llama con %"
echo %unaVariable%

rem "Para pedir al usuario una variable"
set /p varUser = "Ingrese si o no: "
echo %varUser%


