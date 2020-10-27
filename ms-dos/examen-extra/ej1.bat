@echo off

if "%1"=="" set /p var="Ingrese algo: " && goto menu
set var=%1

:menu
if exist %var% (
    type %var%>nul
    if errorlevel 1 goto direct
    set /p valor="Ingrese un valor para buscar en el fichero: "
    find /i "%valor%" %var%
    goto end

    :direct
    set /p valor="Ingrese un valor para buscar en el directorio: "
    dir /s %var% | find /i "%valor%"
    goto end
)

set /p num="Ingrese un numero: "
for /L %%i in (1, 1, %num%) do (
    echo %var%
)

:end
echo.
echo Adios
