@echo off
echo %hola%
:menu
echo A. Ordena
echo B. Busca
echo C. Potencia
echo D. Fin

choice /m "Seleccione una opcion" /c:ABCD
if errorlevel 4 goto salir
if errorlevel 3 goto pow
if errorlevel 2 goto finder
if errorlevel 1 goto sorting

:sorting
set /p file="Ingrese un fichero valido: "
type %file%>nul
if errorlevel 1 goto sorting
set /p col="Ingrese la columna por la cual se ordenara: "
sort /+%col% %file%

choice /m "Desea guardar el resultado en un fichero?"
if errorlevel 2 goto menu
set /p file2="Ingrese el nombre del fichero: "
sort /+%col% %file% > %file2%
goto menu

:finder
if "%file%"=="" (
    :init
    set /p file="Ingrese un fichero valido: "
    type %file%>nul
    if errorlevel 1 goto init
)

set /p word="Ingrese una palabra: "
choice /m "Desea buscar o no buscar la palabra"
if errorlevel 2 goto nobus
goto bus

:nobus
find /i /v %file%
choice /m "Desea guardar el resultado en un fichero?"
if errorlevel 2 goto menu
set /p file2="Ingrese el nombre del fichero: "
find /i /v %file% > %file2%
goto menu

:bus
find /i %file%
choice /m "Desea guardar el resultado en un fichero?"
if errorlevel 2 goto menu
set /p file2="Ingrese el nombre del fichero: "
find /i %file% > %file2%
goto menu

:pow
set /p num="Ingrese la numero a elevar: "
set /p exp="Ingrese el exponente: "
set res=1


for /L %%i in (1, 1, %exp%) do (
    set /a res*=%num%
)
echo.
echo El resultado es %res%
echo.
goto menu

:salir
echo.
echo Adios