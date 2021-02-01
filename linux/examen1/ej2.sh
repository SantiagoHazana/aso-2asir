opc="c"

while [ "$opc" != "a" -a "$opc" != "b" ]
do
    echo
    echo ------ Menu ------
    echo a. Busqueda
    echo b. Potencia
    echo ------------------
    echo Seleccione una opcion [a,b]; read opc

    if [ "$opc" = "a" ]
    then
        echo Ingrese la cadena a buscar; read cadena
        echo Ingrese donde se hara la busqueda; read lugar
        if [ -f $lugar ]
        then
            grep -i "$cadena" $lugar
            echo
            if [ $? -ne 0 ]
            then
                echo
                echo No existe $cadena dentro del fichero
                echo
            fi
        elif [ -d $lugar ]
        then
            var=`find -name "$cadena"`
            if [ "$var" = "" ]
            then
                echo
                echo No existe $cadena en el directorio
                echo
            else
                echo
                echo $var
                echo Se encontro la cadena
                echo
            fi
        fi
    elif [ "$opc" = "b" ]
    then
        echo Ingrese la base; read base
        echo Ingrese el exponente; read exp
        echo $(($base**$exp))
        # echo "$base^$exp" | bc
    else
        echo Opcion no valida
    fi
done