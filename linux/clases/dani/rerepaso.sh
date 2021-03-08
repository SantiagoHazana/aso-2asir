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


# # Ejercicio
# echo Ingrese un numero
# read num

# if [ "$num" -eq "$num" ] 2> /dev/null
# then
#     parimp=`echo "$num%2" | bc`
#     if [ $parimp -eq 0 ]
#     then
#         res=`echo "scale=2; $num/3" | bc`
#         echo $res
#     else
#         echo $(($num**2))
#     fi
# else
#     echo No es un numero
# fi

# Bucles

# contador=0
# while [ $contador -lt 5 ]
# do
#     echo $contador
#     contador=$(($contador + 1))
# done

# contador=0

# until [ $contador -ge 5 ]
# do
#     echo $contador
#     contador=$(($contador + 1))
# done

# for var in $*
# do
#     echo $var
# done

# for i in {0..4}
# do
#     echo $i
# done

# echo Ingrese el nombre de un fichero para buscarlo
# read fich

# var=`find /home -name $fich`
# # si me quiero quedar con el primer resultado, hago el comando head -1
# var=`find /home -name $fich | head -1`
# # si me quiero quedar con el ultimo resultado, hago el comando tail -1
# var=`find /home -name $fich | tail -1`
# cat $var

# # Para buscar solo ficheros, agregamos -type f y para directorios -type d
# find /home -name "algo" -type f

# numLineas=`wc -l < rerepaso.sh`
# numLineas=$(($numLineas + 1))
# echo El fichero rerepaso tiene $numLineas lineas
# echo la mitad superior es
# echo ------------------------------------------------------------------------------------
# numLineasSup=$(($numLineas/2))
# head -$numLineasSup rerepaso.sh
# echo
# echo La mitad inferior es
# echo ------------------------------------------------------------------------------------
# tail -$numLineasSup rerepaso.sh

# # Escribir 5 nombres de persona en un fichero
# contador=0
# until [ $contador -eq 5 ]
# do
#     echo Ingrese nombres de personas
#     read persona
#     echo $persona >> personas.txt
#     contador=$(($contador+1))
# done

# # Eliminar la mitad inferior de un fichero
# fich="personas.txt"
# numLineas=`wc -l < $fich`
# numLineas=$(($numLineas + 1))
# numLineasSup=$(($numLineas/2))
# head -$numLineasSup $fich > temp.txt
# cat temp.txt > $fich
# rm temp.txt


# Comando grep, sirve para buscar palabras dentro de un fichero
grep "palabra" fichero.txt # buscara si aparece "palabra" dentro de fichero, devuelve las lineas que tienen esa palabra
grep -i "palabra" fichero.txt # busca y no diferencia entre mayusculas y minusculas
grep -c "palabra" fichero.txt # devuelve el numero de veces que aparece palabra dentro de fichero
grep -v "palabra" fichero.txt # devuelve todas las lineas donde NO aparece "palabra"
grep -c -v "palabra" fichero.txt # me da el numero de lineas que NO tienen "palabra"

# comando ls, muestra el contenido del directorio
ls -p # agrega a los directorio una / al final, asi pueden ser diferenciados