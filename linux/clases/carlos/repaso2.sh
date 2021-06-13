# # Pedir algo al usuario y mostrarlo
# echo Ingrese algo
# read algo
# echo Ingresaste $algo
# algo="Otra cosa"
# echo $algo

# # Como leer parametros
# echo $1
# algo=$1 # nos guardamos el parametro en una variable
# echo $# # numero de parametros introducidos
# algo=$#

# if [ $algo -eq 2 ]
# then
#     echo Ingresaste dos parametros, hiciste lo correcto.
# elif [ $algo -eq 1 ]
# then
#     echo Te falta un parametro, metiste solo 1
# else
#     echo Tenes que ingresar dos parametros
# fi


# # Comprobar si lo ingresado es un numero
# Operadores numeros
# -eq (equals) para comprobar si son iguales
# -ne (not equals) para comprobar si son distintos
# -lt (less than) menor
# -le (less or equal) menor o igual
# -gt (greater than) mayor
# -ge (greater or equal) mayor o igual
# echo Mete un numero loco
# read num

# if [ "$num" -eq "$num" ] 2> /dev/null
# then
#     echo Es un numero
# else
#     echo No es un numero
# fi

# # Comprobar si algo es un numero, fichero, directorio o nada
# echo Ingresa algo
# read algo

# if [ "$algo" -eq "$algo" ] 2> /dev/null
# then
#     echo Es un numero
# else
#     if [ -f "$algo" ]
#     then
#         echo Es un fichero
#     else
#         if [ -d "$algo" ]
#         then
#             echo Es un directorio
#         else
#             echo No es nada, es una palabra
#         fi
#     fi
# fi

# # Operaciones simples
# num1=10
# num2=3
# res=$(($num1+$num2))
# res=$(($num1-$num2))
# res=$(($num1*$num2))
# res=$(($num1/$num2)) # division entera
# res=$(($num1**$num2)) # potencia
# echo $res

# # Operaciones especiales
# divisionDecimal=`echo "scale=2; $num1/$num2" | bc` # division con decimales, se especifica cuantos decimales con scale
# echo $divisionDecimal

# modulo=`echo "$num1%$num2" | bc`
# echo $modulo

# # Bucle while
# contador=0
# while [ $contador -lt 5 ]
# do
#     echo $contador
#     contador=$(($contador+1))
# done

# # Bucle until
# contador=0
# until [ $contador -ge 5 ]
# do
#     echo $contador
#     contador=$(($contador+1))
# done

# # Ejemplo de bucle para pedir algo al usuario
# echo Ingrese hola
# read algo
# until [ "$algo" = "hola" ]
# do
#     echo No ingresaste hola, intenta nuevamente
#     read algo
# done
# echo Lo lograste!

# resp="z"
# until [ "$resp"="c" -o "$resp"="C" ]
# do
#     echo ------Menu------
#     echo A. Saludo
#     echo B. Puteada
#     echo C. Salir
#     echo Seleccione una opcion
#     read resp

#     if [ "$resp"="a" ]
#     then
#         echo Hola!
#     elif [ "$resp"="b" ]
#     then
#         echo Forro de mierda retrasado mental hijo de re mil puta
#     fi

# done

# # Bucle for
# # for clasico
# for ((i=0;i<5;i++))
# do
#     echo $i
# done

# # for en un rango
# for i in {0..4}
# do
#     echo $i
# done

# # for que recorre todos los parametros y los muestra
# for i in $*
# do
#     echo $i
# done


# Como ingresar con contrasena
pass="letmein"
countIntentos=0

echo Ingrese la contrasena
read contra
until [ "$contra" = "$pass" ]
do
    countIntentos=$(($countIntentos+1))
    if [ $countIntentos -eq 3 ]
    then
        echo Demasiados intentos! Adios!
        exit
    fi
    echo Contrasena incorrecta, intente nuevamente
    read contra
done

echo Ingresaste!!!