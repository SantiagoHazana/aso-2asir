
for i in $*
do
    if [ "$i" -eq "$i" ] 2> /dev/null
        then
            echo Es un numero

        else
            if [ -f "$i" ]
            then
                echo Es un fichero
                ultimaPalabra=`awk 'END {print $NF}' $i`
                echo Adivine la ultima palabra
                read ultimaUsuario
                if [ "$ultimaPalabra" = "$ultimaUsuario" ]
                then
                    echo Acertaste!!! Crack
                else
                    echo No Acertaste
                fi
            else
                if [ -d "$i" ]
                then
                    echo Es un directorio
                    maspeque=`stat -c "%s" * $i | sort -n | head -1`
                    echo Adivine el tamano del fichero mas pequeno
                    read tamUsuario
                    if [ "$maspeque" -eq "$tamUsuario" ]
                    then
                        echo Adivinaste el tamano
                    else
                        echo No adivinaste
                    fi
                else
                    echo No es nada, es una palabra
                    ficheros=`find . -maxdepth 1 -type f`
                    for i in $ficheros
                    do
                        echo $i
                    done
                fi
            fi
        fi
done