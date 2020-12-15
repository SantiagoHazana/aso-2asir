@echo off

set /p num="Ingrese un numero: "
set /p exp="Ingrese el exponente: "
set res=1
for /L %%i in ( 1, 1, %exp% ) do (
    set /a res*=%num% 
    ::set /a res=%res% * %num% esto por alguna razon no funciona, pero equivale a lo de arriba
)

echo %res%