echo Ingrese el nombre de un fichero
read file

# Esto sirve para comprobar si existe el fichero y si es un fichero
if [ ! -f $file ]
then
    echo NO Existe el fichero
else
    echo Existe el fichero
fi

echo Ingrese el nombre de un directorio
read dir

# Esto sirve para comprobar si existe el directorio y si es un directorio
if [ -d $dir ]
then
    echo El directorio existe
else
    echo NO existe el directorio
fi
