echo Ingrese un numero; read num

if [ "$num" -eq "$num" ] 2> /dev/null
then
    echo Es un numero
else
    echo No es un numero
fi