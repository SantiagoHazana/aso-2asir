
fichero(){
    echo
    lastWord=`awk 'END {print $NF}' $1`
    echo Adivine la ultima palabra del fichero! read userWord
    if [ "$userWord" = "$lastWord" ]
    then
        echo
        echo Adivinaste!
    else
        echo
        echo No adivinaste!
    fi
}

directorio(){
    menor=`find $1 -maxdepth 1 -type f -printf '%s\n' | sort -n | head -1`
    echo
    echo Adivine el tamaño del fichero mas chico; read adiv
    echo
    if [ $menor -eq $adiv ]
    then
        echo Adivinaste!
    else
        echo No adivinaste
    fi
}

numeros(){
    opc="z"
    while [ $opc != "a" -a $opc != "b" ]
    do
        echo
        echo a. Divisores
        echo b. Potencias
        echo
        echo Seleccione una opcion; read opc
        echo
        if [ ! $opc ]
        then
            opc="z"
            continue
        fi

        if [ $opc = "a" ]
        then
            contadorAciertos=0
            until [ $contadorAciertos -eq 3 ]
            do
                echo Adivine un divisor; read divisor
                res=`echo "$1 % $divisor" | bc`
                if [ $res -eq 0 ]
                then
                    echo Es un divisor!
                    contadorAciertos=$(($contadorAciertos + 1))
                else
                    echo No es un divisor
                fi
            done
            echo Adivinaste los 3 divisores
        elif [ "$opc"="b" ]
        then
            echo
            echo $1 ^ $2 = $(($1**$2))
            echo
        fi

    done

    
}

palabra(){
    echo
    echo Adivine cuantas veces aparece la palabra dentro de los ficheros del directorio actual; read num
    count=`find . -type f -exec grep -o $1 {} \; | wc -l`
    if [ $count -eq $num ]
    then
        echo Adivinaste!
    else
        echo No adivinaste ":("
    fi
}


for algo in $*
do
    if [ -f $algo ]
    then
        fichero $algo
    elif [ -d $algo ]
    then
        directorio $algo
    elif [ "$algo" -eq "$algo" ] 2> /dev/null;
    then
        numeros $algo $#
    else
        palabra $algo
    fi
done