# 1. Realizar un script que realice la lectura de una variable que será introducida por 
# el usuario al inicio de su ejecución. A continuación preguntará al usuario si 
# lo introducido es un fichero o de un directorio. Si lo introducido coincide con lo 
# pedido, es decir, si existe y es lo indicado, saldrá un mensaje indicando tal éxito; 
# en caso contrario, comprobará si existe donde nos encontramos, y nos indicará el éxito o 
# el fracaso, y a continuación preguntará si se desea buscar en algún directorio en particular 
# o en todo el disco dicho valor con tal característica. Si se logra encontrar, nos saldrá 
# un mensaje de éxito, dando al usuario la posibilidad de mostrarlo por pantalla (hay que 
# mostrar su contenido de forma correcta); y en caso contrario, nos mostrará el valor introducido 
# y nos indicará su nula existencia.

echo introduce una palabra; read var
echo has introducido un fichero o directorio?; read var2
if [ -f $var -a "$var2"="fichero" ]
then
    echo el usuario ha introducido un fichero
elif [ -d $var -a "$var2"="directorio" ]
then
    echo el usuario ha introducido un directorio
elif [ -e $var ]
then
    echo Existe lo introducido en el directorio actual
else
    echo No existe en el directorio

    echo donde quieres buscarlo? disco/directorio; read resp
    if [ "$resp" = "disco" ]
    then
        # aca iria el find para buscar en todo el disco
        if [ -f $var ] # el -f va con el resultado del find
        then
            echo has encontrado el fichero, desea visualizarlo? si/no; read resp1
            if [ "$resp1" = "si" ]
            then 
                cat $var # seria cat de lo encontrado con el find
            fi
        elif [ -d $var ] # el -d iria con el resultado del find
        then
            echo has encontrado el directorio, desea visualizarlo? si/no; read resp1
            if [ "$resp1" = "si" ]
            then 
                ls $var # el ls seria de lo encontrado del find
            fi
        else    
            echo no existe nada con ese nombre  
        fi
    elif [ "$resp" = "directorio" ]
    then
        # falta pedirle al usuario el directorio donde buscar
        # find en el directorio dado por el usuario
        if [ -f $var ]
        then 
            echo has encontrado el fichero, desea ver su contenido? si/no; read resp1
            if [ "$resp1" = "si" ]
            then
                cat $var
            fi
        elif [ -d $var ]
        then 
            echo has encontrdo el directorio, desea ver su contenido? si/no; read resp1
            if [ "$resp1" = "si" ]
            then 
                ls $var
            fi
        fi 
    fi
    
fi