@echo off
if exist %1 ( if exist %2 goto copiar)
echo Falta algun parametro && goto fin

:copiar
echo.
copy %1 %2
if errorlevel 1 echo Ocurrio un error al copiar los archivos
if errorlevel 0 echo Archivos copiados exitosamente

:fin
echo.
echo Adios
