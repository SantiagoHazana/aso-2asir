# echo Ingrese una palabra; read palabra
# echo
# echo $palabra
# palabra=carlos
# echo $palabra


# echo $1
# echo $2
# echo
# echo $1 $2

# echo Ingrese un numero; read num
# if [ $num -lt 0 ]
# then
#     echo El numero es negativo
# elif [ $num -eq 0 ]
# then
#     echo El numero es neutro
# else
#     echo El numero es positivo
# fi

# find /home -name "calc.sh" > /dev/null

# if [ $? -eq 0 ]
# then
#     echo Se encontro el fichero
# else
#     echo No se encontro el fichero
# fi

# echo Ingrese una palabra; read palabra

# if [ -f $palabra ]
# then
#     echo Es un fichero
# elif [ -d $palabra ]
# then
#     echo Es un directorio
# else
#     echo No es nada
# fi

# echo Bucle While

# num=0
# while [ $num -lt 10 ]
# do
#     echo $num
#     num=$(($num + 1))
# done

# echo
# echo Bucle Until

# num=0
# until [ $num -ge 10 ]
# do
#     echo $num
#     num=$(($num + 1))
# done

# echo
# echo "Bucle foreach"
# echo Se ingresaron $# parametros
# for i in $*
# do
#     echo $i
# done

# #bucle foreach que recorre un rango de valores
# for i in $(seq 0 9)
# do
#     echo $i
# done
# #bucle foreach que recorre un rango de valores
# for i in {0..9}
# do
#     echo $i
# done

# echo
# echo "Bucle for"
# for ((i=0; i<10; i++)) 
# do
#     echo $i
# done

# ejecutar algo hasta que se indique lo contrario

# resp="y"
# until [ $resp = "n" -o $resp = "N" -o $resp = "no" -o $resp = "No"]
# do
#     echo 
#     whoami
#     pwd
#     echo Desea repetirlo? N=No, Y=Si
#     read resp
# done

# Hecho con while
# resp="y"
# while [ $resp = "y" -o $resp = "Y" ]
# do
#     echo 
#     whoami
#     pwd
#     echo Desea repetirlo? N=No, Y=Si
#     read resp
# done