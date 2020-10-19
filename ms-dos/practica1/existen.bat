@echo off
dir c:\users\shazana\Documents\*.bak>nul
if errorlevel 1 goto copiarTodo
goto copiar

:copiarTodo
choice /m "Desea realizar la copia de todos los ficheros?"
if errorlevel 2 goto fin

copy c:\users\shazana\Documents\*.* C:\Users\shazana\Documents\asir\segundo\aso\ms-dos\micopia\*.bak
if errorlevel 1 echo "Error al realizar la copia" & goto fin
echo "Copia realizada correctamente" & goto fin

:copiar
move c:\users\shazana\Documents\*.bak C:\Users\shazana\Documents\asir\segundo\aso\ms-dos\micopia
if errorlevel 1 echo "No se pudo mover los ficheros" & goto fin
echo "Se movio correctamente los ficheros" & goto fin

:fin
echo "Adios! Bye!"
pause