@echo off

:: Pedimos un valor al usuario y lo guardamos en la variable
set /p nombreVar="Introduce el nombre de un fichero: "

:: Si existe lo introducido por el usuario, lo mostramos
if exist %nombreVar% type %nombreVar%

type %nombreVar%>nuevo.txt


:: Aca utilizamos parametros

if exist %1 type %1
if exist %2 type %2