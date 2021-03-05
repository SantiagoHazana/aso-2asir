# echo Ingrese algo
# read algo
# echo
# # algo=$1 # de esta manera guardo el primer parametro en una variable

# # Con este if podemos comprobar que lo ingresado sea un numero, se pone entre comillas para comprobar si ingreso algo tambien
# if [ "$algo" -eq "$algo" ] 2> /dev/null
# then
#     echo Es un numero!
# else
#     if [ -f "$algo" ] # compruebo que sea fichero y sea algo con las ""
#     then
#         echo Es un fichero!
#     elif [ -d "$algo" ] # compruebo que sea directorio y sea algo con las ""
#     then
#         echo Es un directorio!
#     elif [ "$algo" ] # compruebo que sea algo, que no haya metido un enter vacio
#     then
#         echo Es una palabra!
#     fi
# fi

# Tenemos dos manera de enviar los mensajes a null
# con 2> /dev/null enviamos solo los errores
# con &> /dev/null enviamos TODOS los mensajes, sean error o no


# num1=7
# num2=8

# if [ $num1 -gt $num2 ]
# then
#     echo $num1 es mayor que $num2
# else
#     echo $num2 es mayor que $num1
# fi
# Operadores numeros
# -eq (equals) para comprobar si son iguales
# -ne (not equals) para comprobar si son distintos
# -lt (less than) menor
# -le (less or equal) menor o igual
# -gt (greater than) mayor
# -ge (greater or equal) mayor o igual

# # Asi podemos chequear si es un numero Y si es meyor que 5, no mostrando los errores por si llega a no ser un numero
# if [ "$num1" -eq "$num1" -a $num1 -gt 5 ] 2> /dev/null
# then
#     echo Es un numero mayor que 5
# fi

# # Operaciones basicas con numeros (suma, resta, multiplicacion, division entera(sin decimales) y potencia)
# # se tiene que poner $(()) y dentro la operacion
# num1=13
# num2=3
# suma=$(($num1 + $num2))
# resta=$(($num1-$num2))
# division=$(($num1 / $num2))
# multiplicacion=$(($num1*$num2))
# potencia=$(($num1**$num2))

# echo La suma es $suma
# echo La resta es $resta
# echo La division es $division
# echo La multiplicacion es $multiplicacion
# echo La potencia es $potencia

# # Queremos la division con decimales

# resultado=`echo "scale=3; $num1/$num2" | bc`
# echo La division con decimales es $resultado

# # Queremos saber si un numero es par o impar
# resultado=`echo "$num1%2" | bc`
# if [ $resultado -eq 0 ]
# then
#     echo El numero es par
# else
#     echo El numero es impar
# fi


# Ejercicio
echo Ingrese un numero
read num

if [ "$num" -eq "$num" ] 2> /dev/null
then
    parimp=`echo "$num%2" | bc`
    if [ $parimp -eq 0 ]
    then
        res=`echo "scale=2; $num/3" | bc`
        echo $res
    else
        echo $(($num**2))
    fi
else
    echo No es un numero
fi

