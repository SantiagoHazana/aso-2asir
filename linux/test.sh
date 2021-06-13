echo Ingrese un numero de filas a eliminar de arriba; read num
filas=`wc -l < $1`
filas=$(($filas + 1))
fila=$(($filas - $num))
tail -$fila $1 > temp.txt
cat temp.txt > $1