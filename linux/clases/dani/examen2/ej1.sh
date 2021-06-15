fichero () {
    resp=""
    until [ "$resp"="c" -o "" ]
    echo 
    echo ------Menu Fichero------
    
}

if [ "$1" = "" ]
then
    echo Ingrese algo
    read algo
elif [ "$1" -eq "$1" ] 2> /dev/null
then
    echo No puedes ingresar un numero
    exit
else
    algo=$1
fi

if [ -f "$algo" ]
then
    echo Es un fichero!
    fichero $algo
elif [ -d "$algo" ]
then
    echo Es un directorio!
elif [ "$algo" ]
then
    echo Es una palabra!
fi

