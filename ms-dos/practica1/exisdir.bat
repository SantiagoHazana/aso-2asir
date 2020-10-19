@echo off
set /p direc="Ingrese un directorio para mostrar su contenido: "
if exist %direc% goto mostrar
echo "No existe el directorio"
goto fin

:mostrar
type %direc%>null
if errorlevel 1 echo "Es un directorio y este es su contenido" & dir %direc% & goto fin
if errorlevel 0 echo "Es un fichero"

:fin
pause