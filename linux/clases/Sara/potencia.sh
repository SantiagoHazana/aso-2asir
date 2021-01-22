echo Ingrese la base
read num1
echo Ingrese el exponente
read num2
resultado=1
contador=0
until [ $contador -eq $num2 ]
do
    resultado=$(($resultado*$num1))
    contador=$(($contador+1))
done
echo
echo $resultado

# Se puede hacer directamente de la siguiente manera
echo $(($num1**$num2))