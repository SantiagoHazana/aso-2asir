echo Ingrese un fichero; read fich

until [ -f $fich ]
do
    echo Ingrese un fichero; read fich
done
echo
echo ----------Contenido del fichero------------
echo
cat $fich