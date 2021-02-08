countValidos=0
countVacios=0
countFichPares=0
countImpares=0

checkFiles(){
    var=$1
    if [ ! -f $var -o ! $var ]
    then
        echo
        echo No se ingreso un fichero, intente nuevamente; read var
        if [ ! -f $var -o ! $var ]
        then
            echo No se introdujo nada
            return
        fi
    fi
    countValidos=$(($countValidos + 1))
    contenido=`cat $var`
    if [ ! $contenido ] 2> /dev/null
    then
        echo
        echo El fichero $var esta vacio
        countVacios=$(($countVacios + 1))
    else
        numLineas=`wc -l < $var`
        numLineas=$(($numLineas + 1)) # Es necesario sumarle uno porque el comando wc me devuelve la cantidad -1
        parImpLineas=`echo " $numLineas % 2 " | bc`
        if [ $parImpLineas -eq 0 ]
        then
            supInf=`echo "$countFichPares % 2" | bc`
            mitadLineas=$(($numLineas / 2))
            if [ $supInf -eq 0 ]
            then
                head -$mitadLineas $var
            else
                tail -$mitadLineas $var
            fi
            countFichPares=$(($countFichPares + 1))
        else
            echo
            echo Acierte el numero de lineas que tiene el fichero; read adiv
            if [ $adiv -eq $numLineas ]
            then
                echo Acertaste!
                countImpares=$(($countImpares + 1))
            else
                echo No acertaste
            fi
        fi
    fi
}

for var in $*
do
    checkFiles $var
done

countFich=$#

if [ $# -lt 10 ]
then
    echo
    echo Tiene que ingresar mas ficheros
    until [ $countFich -eq 10 ]
    do
        echo Ingrese un fichero; read var
        checkFiles $var
        countFich=$(($countFich + 1))
    done
fi
echo
echo Desea ingresar mas fichero? [si/no]; read opc
if [ "$opc" = "si" ]
then
    echo Ingrese un fichero, cuando quiera finalizar escriba 'fin'; read var
    until [ "$var" = "fin" ]
    do
        countFich=$(($countFich + 1))
        checkFiles $var
        echo Ingrese un fichero, cuando quiera finalizar escriba 'fin'; read var
    done
fi


echo
echo ------ Resultados ------
echo Parametros validos introducidos $countValidos
echo Parametros totales introducidos $countFich
echo Cantidad de ficheros vacios $countVacios
echo Cantidad de ficheros pares $countFichPares
echo Aciertos impares $countImpares
echo ------------------------
echo Adios!