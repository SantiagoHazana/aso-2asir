resp="asd"
until [ "$resp" = "c" ]
do
    echo
    echo ------Menu------
    echo A. Fichero
    echo B. Valor
    echo C. Fin
    echo Seleccione una opcion
    read resp

    if [ "$resp" = "a" -o "$resp" = "A" ]
    then
        fich=""
        until [ "$fich" != "" ]
        do
            echo Ingrese un fichero
            read fichero
            fich=`find /home -name $fichero -type f | head -1`
        done
        echo Adivine el numero de lineas
        read adivLineas
        numLineas=`wc -l < $fich`
        numLineas=$(($numLineas + 1))
        if [ "$numLineas" -eq "$adivLineas" ]
        then
            echo $fich >> aciertos.dat
        else
            if [ "$numLineas" -gt "$adivLineas" ]
            then
                echo $fich >> mayores.dat
            else 
                echo $fich >> menores.dat
            fi
        fi

    elif [ "$resp" = "b" ]
    then
        echo Ingrese algo
        read algo
        if [ "$algo" -eq "$algo" ] 2> /dev/null
        then
            echo Es un numero
        else
            if [ -f "$algo" ]
            then
                echo Es un fichero
            else
                if [ -d "$algo" ]
                then
                    echo Es un directorio
                else
                    echo No es nada, es una palabra
                fi
            fi
        fi
    fi 
done