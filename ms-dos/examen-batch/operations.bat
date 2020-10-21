@echo off

:numero
set /p num="Ingrese un numero: "
:: falta comprobar que es un numero

:inicio
echo Menu
echo A. Cuadrado
echo B. Cubo
echo C. Salir

choice /m "Seleccione una operacion: " /c:ABC
if errorlevel 3 goto salir
if errorlevel 2 goto cubo
if errorlevel 1 goto cuadrado


:cubo
set /a res=%num%*%num%*%num%
echo El cubo de %num% es %res%
goto numero

:cuadrado
set /a res=%num%*%num%
echo El cuadrado de %num% es %res%
goto numero

:salir
choice /m "Seguro que desea salir?"
if errorlevel 2 goto numero