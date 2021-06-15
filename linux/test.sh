# echo Ingrese un numero de filas a eliminar de arriba; read num
# filas=`wc -l < $1`
# filas=$(($filas + 1))
# fila=$(($filas - $num))
# tail -$fila $1 > temp.txt
# cat temp.txt > $1

# read algo
# res=`find /home -name $algo | head -1`

# if [ "$res" = "" ]
# then
#     echo No se encontro fichero
#     read algo
#     res=`find /home -name $algo -type f | head -1`
#     if [ "$res" = "" ]
#     then
#         echo No se encontro fichero
#     else
#         echo Si se encontro fichero
#     fi
# else
#     echo Si se encontro fichero
# fi

ficheros=`find . -maxdepth 1 -type f`
for i in $ficheros
do
    echo $i
done