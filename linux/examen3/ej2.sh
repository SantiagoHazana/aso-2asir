
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
    echo Numero $1
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