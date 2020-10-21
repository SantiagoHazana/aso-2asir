@echo off
if exist %1 ( if exist %2 goto copiar)
echo no existen & goto fin

:copiar
echo Los archivos existen y se van a copiar
copy %1 %2
:fin

