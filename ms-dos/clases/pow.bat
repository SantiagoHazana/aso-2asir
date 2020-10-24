@echo off

set /p num="Numero a elevar: "
set /p exp="Exponente: "
set resultado=1

for /L %%i in (1, 1, %exp%) do (
    set /a resultado*=%num%
)

echo El resultado es %resultado%