if [ -f $1 -a -f $2 -a -r $1 -a -w $2 ]
then
    echo Desea sobreescribir el contenido de $2 con el de $1? Si/No; read resp
    if [ $resp = "Si" -o $resp = "si" ]
    then
        cat $1 > $2 # > sobreescribe, >> append
        echo Fichero copiado exitosamente!
    fi
else
    echo No se puede realizar la operacion
fi