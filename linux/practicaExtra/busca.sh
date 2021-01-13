echo Ingrese la direccion absoluta del fichero a verificar
read fich

caracter=`echo $fich | cut -c 1,1`
echo $caracter
if [ $caracter != "/" ]
then
    echo No es una direccion absoluta
else
    if [ -f $fich ]
    then
        if [ -s $fich ]
        then
            echo El fichero existe y tiene contenido
        else
            echo El fichero existe pero esta vacio
        fi
    else
        echo El fichero no existe
    fi
fi