@echo off
:inicio
if "%1"=="" (
	echo "Menu 2"
	echo "A. Abrir el editor de texto"
	echo "B. Indicar la fecha u hora del sistema"
	echo "C. Salir"
	
	choice /m "Elija una opcion: " /c:ABC
	if errorlevel 3 goto salir
	if errorlevel 2 goto timeDate
	if errorlevel 1 goto editor
	
)

echo "Menu 1"
echo "A. Abrir el editor de texto"
echo "B. Mostrar el contenido de un fichero"
echo "C. Indicar la fecha u hora del sistema"
echo "D. Salir"

choice /m "Elija una opcion: " /c:ABCD
if errorlevel 4 goto salir
if errorlevel 3 goto timeDate
if errorlevel 2 goto show
if errorlevel 1 goto editor






:timeDate
choice /m "Desea mostrar la hora o la fecha?" /c:FH
if errorlevel 2 time /t
if errorlevel 1 date /t
goto inicio

:show
type %1
goto inicio

:editor
if "%1"=="" notepad && goto inicio
notepad %1
goto inicio

:salir
echo "Adios"