
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
    echo Directorio $1
}

numeros(){
    # echo
    # echo a. Divisores
    # echo b. Potencias
    # echo
    # echo Seleccione una opcion; read opc
    # if [  ]

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
}

palabra(){
    echo Palabra $1
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
        numeros $algo
    else
        palabra $algo
    fi
done