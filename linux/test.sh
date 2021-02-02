echo Ingrese un numero de filas a eliminar de arriba; read num1
echo Ingrese un numero de filas a eliminar de abajo; read num2
filas=`wc -l < $1`
filas=$(($filas - $num1 + 1))
tail -$filas $1 > temp.txt
mv temp.txt $1


filas=$(($filas-$num2))
head -$filas $1 > temp.txt
mv temp.txt $1


# echo Ingrese un numero de filas a eliminar de arriba; read num1
# echo Ingrese un numero de filas a eliminar de abajo; read num2
# filas=`wc -l < $1`
# filasSup=$(($filas - $num1 + 1))
# filasInf=$(($filas - $num2))
# tail -$filasSup $1 | head -$filasInf > temp.txt
# mv temp.txt $1