echo Ingrese el fichero a copiar ; read fich
echo Ingrese el directorio donde copiarlo ; read direct

if [ ! -e $fich ]
then
    echo
    echo El fichero no existe, intentelo nuevamente
    exit
elif [ ! -e $direct ]
then
    echo
    echo El directorio no existe, intentelo nuevamente
fi

echo Se copiara el fichero $fich en el directorio $direct
cp $fich $direct
if [ $? -eq 0 ]
then
    echo Se copio exitosamente el fichero en el directorio
else
    echo Error al copiar el fichero en el directorio
fi