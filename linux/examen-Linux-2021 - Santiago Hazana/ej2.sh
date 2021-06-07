menu(){
    echo ------ Menu ------
    echo a. Usuarios
    echo b. Numeros
    echo c. Palabras
    echo d. Salida
    echo ------------------
}

usuarios(){
    echo
    echo ------ Usuarios ------
    cat /etc/passwd | grep "bash" | cut -f1 -d ":"
    echo ----------------------
    echo
}

numeros(){
    sumNumeros=0;
    countNums=0;
    echo Ingrese un numero; read num

    while [ "$num" -eq "$num" ] 2> /dev/null
    do
        countNums=$(($countNums + 1))
        sumNumeros=$(($sumNumeros + $num))
        echo Ingrese un numero; read num
    done

    media=`echo "scale=3; $sumNumeros / $countNums" | bc`
    echo
    echo La media ponderada es $sumNumeros / $countNums = $media
    echo

}

palabras(){
    var="z"
    until [ "$var" = "fin" ]
    do
        echo Ingrese una palabra, para finalizar ingrese 'fin'; read var

        if [ "$var" = "fin" ]
        then
            continue
        fi

        if [ -f $var -o ! $var ]
        then
            echo
            echo Ingreso un fichero o nada, no se contabilizara
            echo
        elif [ -d $var -o ! $var ]
        then
            echo
            echo Ingreso un directorio o nada, no se contabilizara
            echo
        elif [ "$var" -eq "$var" ]
        then
            echo
            echo Ingreso un numero, no se contabilizara
            echo
        else
            echo $var >> palabras.dat
        fi
    done
}

opc="z"
until [ "$opc" = "d" ]
do
    menu
    echo Seleccione una opcion; read opc
    case $opc in

        a|A) usuarios
        ;;

        b|B) numeros
        ;;

        c|C) palabras
        ;;

    esac
done

echo
echo Adios!