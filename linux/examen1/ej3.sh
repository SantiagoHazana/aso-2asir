if [ $# -ne 1 ]
then
    echo Numero de parametros invalido, intente nuevamente
    exit
fi

if [ ! -f $1 ]
then
    echo Ingrese el comando correcto para crear el fichero; read comando
    if [ "$comando" = "touch" ]
    then
        echo Se creara el fichero con nombre $1
        touch $1
    else
        echo Comando incorrecto, intente nuevamente
        exit
fi

