
fichero(){
    opc="a"
    until [ "$opc" = "c" ]
    do
        echo
        echo ------ Menu --------
        echo a. Buscar palabra
        echo b. Mostrar contenido
        echo c. Salir
        echo --------------------
        echo
        echo Seleccione una opcion; read opc

        case $opc in

        a|A)
            echo Ingrese la palabra a buscar en el fichero; read word
            grep -i "$word" $1
        ;;

        b|B) cat $1;;

        c|C) exit;;
        esac
    done
    
}

directorio(){
    opc="a"
    until [ "$opc" = "c" ]
    do
        echo
        echo ------ Menu --------
        echo a. Buscar archivo
        echo b. Ordenar de forma inversa
        echo c. Salir
        echo --------------------
        echo
        echo Seleccione una opcion; read opc

        case $opc in

        a|A)
            echo Ingrese el archivo a buscar en el directorio; read fich
            find . -maxdepth 1 -name "$fich" -type f
        ;;

        b|B) ls -r;;

        c|C) exit;;
        esac
    done
}

if [ $# -eq 0 ]
then
    echo Ingrese algo; read var
else
    var=$1
fi

if [ "$var" -eq "$var" ] 2> /dev/null
then
    echo Es un numero. hasta la vista baby!
    exit
fi

if [ -f $var -a $var ]
then
    fichero $var
elif [ -d $var -a $var ]
then
    directorio $var
elif [ $var ]
then
    echo $var >> nofichero.dat
else
    echo No ingresaste nada, intenta nuevamente
fi