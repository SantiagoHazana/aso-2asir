@echo off

set /a usage1 = 0;
set /a usage2 = 0;

:inicio
echo A. Crear un directorio
echo B. Crear un fichero
echo C. Mostrar un directorio
echo D. Mostrar un fichero
echo E. Salir

choice /m "Elija una opcion del menu" /c:ABCDE
if errorlevel 5 goto salir
if errorlevel 4 goto showFile
if errorlevel 3 goto showDirect
if errorlevel 2 goto createFile
if errorlevel 1 goto createDirect

:createDirect
echo.
set /a usage1 = 1;
mkdir %1
if errorlevel 1 echo "Error al crear el directorio" && goto inicio
echo "Directorio creado correctamente"
echo.
goto inicio

:createFile
echo.
set /a usage1 = 1;
notepad %1
if errorlevel 1 echo "Error al crear el fichero" && goto inicio
echo "Fichero creado correctamente"
echo.
goto inicio

:showDirect
echo.
set /a usage2 = 1
dir %2
if errorlevel 1 echo "Error al mostrar el directorio o lo ingresado no es directorio"
echo.
goto inicio

:showFile
echo.
set /a usage2 = 1
type %2
if errorlevel 1 echo "Error al mostrar el fichero o lo ingresado no es fichero"
echo.
goto inicio

:salir
echo.
if %usage1%==1 ( if %usage2%==1 echo Ambos parametros fueron utilizados )
if %usage1%==1 ( if %usage2%==0 echo Solo un parametro fue utilizado )
if %usage1%==0 ( if %usage2%==1 echo Solo un parametro fue utilizado )
if %usage2%==0 ( if %usage1%==0 echo Ningun parametro fue utilizado )
echo Adios