@echo off
set /s contador=0
:bucle
set /a contador=%contador%+1
set /p val="Ingrese un valor: "
if %val%==para goto menu
goto bucle

:menu
echo MENUUUUUUUUUUUUUUUUUUUUUUUUUUU