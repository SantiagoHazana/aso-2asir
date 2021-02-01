
if [ $# -eq 0 ]
then 
    echo introduce una variable; read var 
else
    var=$1
fi

if [ "$var" -eq "$var" ] 2>/dev/null
then 
    echo ha introducido un numero!
else
    echo ha introducido una palabra
    if [ -f $var ]
    then 
        opt="a"
        while [ "$opt" != "c" ]
        do
        echo Menu 
        echo a. Buscar una palabra 
        echo b. Mostrar contenido fichero
        echo c. Salir del programa
        echo elige una opcion[a,b,c]; read opt
            if [ $opt = "a" ]
            then 
                echo que palabra quieres buscar?; read resp 
                grep -i "$resp" $var 
            elif [ $opt = "b" ]
            then
                cat $var

            elif [ $opt = "c" ]
            then
                echo adios!
                exit
            fi 

        done
    
    elif [ -d $var ]
    then
        opt="a"
        while [ "$opt" != "c" ]
        do
        echo Menu 
        echo a. Buscar un archivo 
        echo b. Ordenar de forma inversa el contenido del directorio 
        echo c. Salir del programa
        echo elige una opcion[a,b,c]; read opt
            if [ $opt = "a" ]
            then 
                echo que archivo quieres buscar?; read resp 
                find . -name "$resp" 
            elif [ $opt = "b" ]
            then
                ls -r $var
            elif [ $opt = "c" ]
            then 
                echo adios!
                exit
            fi
        done
    else 
        echo no es un directorio ni un fichero
        $var > noficheros.dat
    
    fi
fi