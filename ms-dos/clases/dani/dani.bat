@echo off

@REM echo Hola Dani
@REM echo Como estas
@REM echo Rosalia te la va a poner en el examen

@REM pause
@REM cls
@REM dir

:: Ejercicio 7

@REM :inicio
@REM echo 1.- SALUDO
@REM echo 2.- DESPEDIDA
@REM echo 3.- SALIR

@REM choice /m "Seleccione una opcion: " /c:ABC
@REM if errorlevel 3 goto salir
@REM if errorlevel 2 goto despedida
@REM if errorlevel 1 goto saludo


@REM :saludo
@REM echo Hola
@REM goto inicio

@REM :despedida
@REM echo Adios
@REM goto inicio

@REM :salir

:: Ejercicio 8

@REM :: variable que guarda el nombre del archivo que queremos buscar
@REM set fichero="ejer.txt"

@REM if exist %fichero% type %fichero% && goto salir

@REM :: por defecto pone S/N, donde N es errorlevel 2 y S es errorlevel 1
@REM choice /m "Desea crear el archivo?"
@REM if errorlevel 2 goto salir
@REM if errorlevel 1 goto crear

@REM :crear
@REM echo Creando el fichero
@REM :: Primera forma de crear un fichero basado en el contenido de otro fichero
@REM type "test.txt">%fichero%
@REM :: Segunda forma de crear un fichero vacio, basado en nul
@REM @REM type nul>%fichero%
@REM :: Tercera manera, craerlo con notepad y ya poder cargarle contenido
@REM @REM notepad %fichero%
@REM if errorlevel 1 echo No se pudo crear el fichero
@REM if errorlevel 0 echo Se creo exitosamente el fichero


@REM :salir
@REM echo Adios

:: Ejercicio 9 - Con variable que introduce el usuario

@REM set /p fichero="Introduzca el nombre del fichero a buscar: "

@REM if exist %fichero% type %fichero% && goto salir

@REM choice /m "Desea crear el archivo?" 
@REM if errorlevel 2 goto salir

@REM echo Creando el fichero
@REM type nul>%fichero%
@REM if errorlevel 1 echo No se pudo crear el fichero && goto salir
@REM if errorlevel 0 echo Se creo exitosamente el fichero


@REM :salir
@REM :: echo. te hace un salto de linea, si se pone el punto por separado hace el salto pero imprime un punto antes
@REM echo.
@REM echo Adios

:: Ejercicio 9 - Con parametro

@REM if exist %1 type %1 && goto salir
@REM choice /m "Desea crear el archivo?" 
@REM if errorlevel 2 goto salir

@REM echo Creando el fichero
@REM type nul>%1
@REM if errorlevel 1 echo No se pudo crear el fichero && goto salir
@REM if errorlevel 0 echo Se creo exitosamente el fichero


@REM :salir
@REM :: echo. te hace un salto de linea, si se pone el punto por separado hace el salto pero imprime un punto antes
@REM echo.
@REM echo Adios


:: Ejercicio 12 - bucles for - imprima 3 ficheros que se
:: introducirán como parámetros.

@REM for %%i in (%1, %2, %3) do (
@REM     echo.
@REM     if exist %%i type %%i
@REM )

:: Ejemplo for con numeros, donde se ejecuta 6 veces imprimiendo
:: los numeros y luego un solo Adios
@REM for %%i in (1, 5, 6, 15, 48, 2) do (
@REM     echo %%i
@REM )
@REM echo Adios