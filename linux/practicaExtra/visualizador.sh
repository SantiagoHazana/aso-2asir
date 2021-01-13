echo Ingrese la direccion absoluta del archivo
read dirAbs
first=`echo $dirAbs | cut -c1`
if [ $first = "/" ]
then
    echo La direccion es absoluta
fi