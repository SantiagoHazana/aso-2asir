for fich in $*
do
    if [ -f $fich ]
    then
        cat $fich
        ls $fich >> mostrados.txt
    else
        ls $fich >> noMostrados.txt #preguntar como enviar el nombre de algo que no existe
    fi
done