mv $1 $2 2> /dev/null
if [ $? -eq 0 ]
then
    echo Se movio exitosamente $1 a la carpeta $2
else
    echo No se pudo mover, alguno no existe
fi