contra=`cat password.txt | head -1`
aciertosLineas=0
aciertosFicheros=0

changePassword(){
    echo Desea cambiar la Contraseña? [si/no]; read resp
    until [ "$resp" = "si" -o "$resp" = "no" ]
    do
        echo Opcion incorrecta, intente nuevamente; read resp
    done

    if [ $resp = "si" ]
    then
        echo Ingrese la nueva Contraseña; read nueva
        echo Contraseña cambiada!
        echo $nueva > password.txt
    fi
    echo Adios!
}

menu(){
    echo
    echo -------------- Menu --------------
    echo a. Lineas
    echo b. Ficheros
    echo c. Salir
    echo ----------------------------------
}

showResults(){
    echo
    echo ------------------- Resultados ---------------------
    echo Acertaste filas pares o impares $aciertosLineas veces
    echo Acertaste el numero de ficheros $aciertosFicheros veces
    echo ----------------------------------------------------
    echo
}

checkPassword(){
    if [ $# -eq 0 -o "$1" != "$contra" ]
    then
        echo Contraseña incorrecta, intente nuevamente; read nueva
        if [ $nueva != $contra ]
        then
            echo Contraseña incorrecta, Adios!
            exit
        fi
    fi
}

checkPassword


resp="s"
until [ "$resp" = "c" -o "$resp" = "C" ]
do
    menu
    echo Seleccione una opcion; read resp

    if [ "$resp" = "a" -o "$resp" = "A" ]
    then
        echo
        echo Ingrese el nombre del fichero a buscar; read fich
        first=`find /home -name "$fich" -type f 2> /dev/null | head -1 `
        if [ $first ]
        then
            echo
            echo Intentelo nuevamente; read fich
            first=`find /home -name "$fich" -type f 2> /dev/null | head -1 `
            if [ $first ]
            then
                echo No ingresaste algo correcto
                continue
            fi
        fi
        echo
        echo Tiene filas pares o impares?; read parImp
        numFilas=`wc -l < $first`
        numFilas=$(($numFilas + 1))
        numParImp=`echo "$numFilas % 2" | bc`
        if [ "$parImp" = "pares" -a $numParImp -eq 0 ]
        then
            echo
            echo Correcto! Tiene filas pares
            aciertosLineas=$(($aciertosLineas + 1))
        elif [ "$parImp" = "impares" -a $numParImp -ne 0 ]
        then
            echo
            echo Correcto! Tiene filas impares
            aciertosLineas=$(($aciertosLineas + 1))
        else
            echo
            echo No acertaste!
        fi
    elif [ "$resp" = "b" -o "$resp" = "B" ]
    then
        echo
        echo Ingrese el nombre del directorio a buscar; read dir
        first=`find /home -name "$dir" -type d 2> /dev/null | head -1`
        if [ $first ]
        then
            echo
            echo Intentelo nuevamente; read dir
            first=`find /Users/shazana/projects -name "$dir" -type d 2> /dev/null | head -1`
            if [ $first ]
            then
                echo No ingresaste algo correcto
                continue
            fi
        fi
        numFicheros=`ls $first -p | grep -v / | wc -l`
        echo Cuantos ficheros tiene el directorio?; read numDir
        if [ $numDir -eq $numFicheros ]
        then
            echo
            echo Correcto! Tiene $numFicheros
            aciertosFicheros=$(($aciertosFicheros + 1))
        else
            echo
            echo No acertaste!
        fi
    fi
done

showResults

changePassword