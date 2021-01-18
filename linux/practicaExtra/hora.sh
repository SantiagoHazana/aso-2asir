dir=/home/reloj
fich=/home/reloj/hora.txt

if [ -d $dir ]
then
    if [ -f $fich ]
    then
        echo date +%T >> $fich
    else
        echo El fichero no existe, se creara
        touch $fich
    fi
else
    echo No existe ni el directorio ni el fichero, se crearan
    mkdir $dir
    touch $fich
fi
