if [ $# -ne 1 ]
then
    echo Numero de parametros invalido, intente nuevamente
    exit
fi

if [ ! -f $1 ]
then
    comando="a"
    until [ $comando = "touch" ]
    do
        echo Ingrese el comando correcto para crear el fichero; read comando
        if [ "$comando" = "touch" ]
        then
            echo Se creara el fichero con nombre $1
            touch $1
        else
            echo Comando incorrecto, intente nuevamente
            exit
        fi
    done
fi



# echo Ingrese un numero de filas a eliminar de arriba; read num
# filas=`wc -l < $1`
# filas=$(($filas + 1))
# fila=$(($filas - $num))
# tail -$fila $1 > temp.txt
# mv temp.txt $1


# echo Ingrese un numero de filas a eliminar de arriba; read num
# filas=`wc -l < $1`
# filas=$(($filas + 1))
# fila=$(($filas - $num))
# head -$fila $1 > temp.txt
# mv temp.txt $1

# echo Ingrese un numero de filas a eliminar de arriba; read num1
# echo Ingrese un numero de filas a eliminar de abajo; read num2
# filas=`wc -l < $1`
# filas=$(($filas - $num1 + 1))
# tail -$fila $1 > temp.txt
# mv temp.txt $1


# filas=$(($fila-$num2))
# head -$fila $1 > temp.txt
# mv temp.txt $1