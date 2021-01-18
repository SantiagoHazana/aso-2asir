echo Ingrese la direccion absoluta del fichero; read fich
check=`echo $fich | cut -c1`
if [ $check != "/" ]
then
    echo No es una direccion absoluta
    exit
fi

size=`stat -f%z $fich` # en linux seria -c%s
if [ $size -gt 200 ]
then
    echo El fichero es muy grande
else
    cat $fich
fi