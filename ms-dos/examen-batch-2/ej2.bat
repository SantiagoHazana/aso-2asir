@echo off

set countEven=0
set countOdd=0
set countLetters=0
set numbersEntered=0

:menu
echo A. Pares
echo B. Impares
echo C. Letras
echo D. Salir

choice /m "Seleccione una opcion" /c:ABCD
if errorlevel 4 goto salir
if errorlevel 3 goto letters
if errorlevel 2 goto odd
if errorlevel 1 goto even

:even
set /a countEven=%countEven%+1
set /p num="Ingrese un numero: "
set /a num2=%num% %%2
if %num2%==0 set /a numbersEntered=%numbersEntered%+1 && echo %numbersEntered%
if %numbersEntered%==3 goto menu
goto even

:odd
set /a countOdd=%countOdd%+1
set /p start="Ingrese desde que numero se comenzara: "
set /p end="Ingrese hasta que numero: "

:: Manera rosalia
@REM set /a res=%start%/2
@REM set /a check=%res%*2

@REM if %start%==%check% set /a start=%start%+1

:: Manera semi coherente
set /a mod=%start% %%2
if %mod%==0 set /a start=%start% + 1 

for /L %%i in (%start%, 2, %end%) do (
    echo %%i
)
goto menu


:salir
choice /m "Seguro que desea salir?"
if errorlevel 2 goto menu
echo Adios