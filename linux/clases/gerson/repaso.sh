# -e es que exista en el directorio actual, ya sea fichero o directorio
# -f que exista y sea fichero en el directorio actual
# -d que exista y sea directorio en el directorio acual
# if [ -e $1 ]
# then
#     echo Si es fichero
# else
#     echo No es fichero
# fi

# # bucle while i=0; i<5; i++
# contador=0
# respuesta="si"
# while [ $contador -lt 5 -a $respuesta != "no" ]
# do
#     echo $contador
#     contador=$(($contador + 1))
#     echo Desea continuar? [si/no]; read respuesta
# done

# until [ $contador -ge 5 -o $respuesta = "no" ]
# do
#     echo $contador
#     contador=$(($contador + 1))
#     echo Desea continuar? [si/no]; read respuesta
# done

# # for
# for ((i=0; i<5; i++));
# do
#     echo $i
# done

# # foreach
# for i in {0..4}
# do
#     echo $i
# done

# # foreach que recorre todos los parametro
# for i in $*
# do
#     if [ -f $i ]
#     then
#         echo $i >> existen.txt
#     else
#         echo $i >> noexiste.txt
#     fi
# done

# echo Introduce un numero; read num
# if [ "$num" -eq "$num" ]
# then
#     echo Es un numero
# fi

# # potencia, simple
# num=$(($1**$2))
# echo $num

# # operador bc
# num=`echo $1 % 2 | bc`
# if [ $num -eq 0 ]
# then
#     echo Es par
# else
#     echo Es impar
# fi

# # podemos hacer raices (sqrt) y redondear los numeros con scale
# num=`echo "scale=3; sqrt($1)" | bc`
# echo $num

# # realizar una division con decimales
# num=`echo "scale=2; $1 / $2" | bc`
# echo $num

# # programa que ingresa con contrasena alamcenada en un fichero y permite cambiarla
# contra=`cat contra.txt`

# echo Introduzca la contrasena; read pass
# contadorIntentos=1
# while [ $contadorIntentos -lt 3 -a $pass != $contra ]
# do
#     echo Contrasena incorrecta. Intente nuevamente; read pass
#     contadorIntentos=$(($contadorIntentos + 1))
# done

# if [ $contadorIntentos -eq 3 ]
# then
#     echo Acceso denegado, adios!
#     exit
# fi

# echo Contrasena correcta!!!

# echo Desea cambiar la contrasena? [si/no]; read resp
# if [ $resp = "si" ]
# then
#     echo Ingrese la nueva contrasena; read nueva
#     echo $nueva > contra.txt
# fi

# crear fichero vacio
# echo > gerson.txt
# touch gerson.txt

# # eliminar filas de un fichero
# # eliminamos x numero de filas del principio
# sed -i '1,xd' $fichero
# # eliminar x numero de filas del final
# # primero obtenemos el numero de filas
# filas=`wc -l $fichero`
# filas=$(($filas + 2)) # le sumo dos porque necesito pasarme en uno para eliminar correctamente
# inicio=$(($filas-$x)) # restamos las filas que queremos eliminar del final
# sed -i '$inicio,$d' $fichero
