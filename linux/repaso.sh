for i in $*
do
    if [ -f $i ]
    then
        echo Es un fichero $i
    elif [ -d $i ]
    then
        echo Es un directorio $1
    elif [ "$i" -eq "$i" ] 2>/dev/null
    then
        echo Es un numero
    else
        echo Es una palabra
    fi
done
