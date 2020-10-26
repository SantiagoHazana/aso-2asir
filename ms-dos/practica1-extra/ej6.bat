@echo off

:inicio
echo Menu
echo A. Ficheros ocultos
echo B. Atributo de lectura
echo C. Solo directorios
echo D. Ordenar
echo E. Busqueda de ficheros de texto
echo X. Salir

choice /m Elija una opcion: /c:ABCDEX
if errorlevel 6 goto salir
if errorlevel 5 goto busqueda
if errorlevel 4 goto ordenar
if errorlevel 3 goto direct
if errorlevel 2 goto lectura
if errorlevel 1 goto ocultos

:busqueda
dir *.txt
goto inicio

:ordenar
dir /o:d
goto inicio

:direct

goto inicio

:lectura
attrib +r /s
goto inicio

:ocultos
dir /a:h
goto inicio


:salir
echo Adios