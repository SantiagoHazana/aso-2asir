resp=""

until [ $resp = "C" -o $resp = "c" ]
do
    echo
    echo Ingrese el nombre del fichero; read fich
    echo A. Borrar fichero
    echo B. Mostrar fichero
    echo C. Salir
    echo
    echo Seleccione una opcion; read resp
    if [ $resp = "A" -o $resp = "a" ]
    then
        rm $fich
    elif [ $resp = "B" -o $resp = "b" ]
    then
        cat $fich
    fi
    echo
done