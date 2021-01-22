# Bucle while

# Programa que pide una palabra y hasta que no se ingresa fin, la muestra dos veces

# echo Ingrese una palabra, se mostrara dos veces y se pedira otra palabra
# echo Ingrese 'fin' para terminar; read word
# echo
# while [ $word != "fin" ]
# do
#     echo $word
#     echo $word
#     echo
#     echo Ingrese una nueva palabra; read word
# done
# echo 
# echo Finalizo el programa, adios!

# Bucle Until

# Programa que pide un numero y los acumula hasta que se ingresa 0 o menos
# echo Ingrese un numero; read num
# acumulador=0
# until [ $num -le 0 ]
# do
#     echo
#     echo Ingresaste $num
#     acumulador=$(($acumulador+$num))
#     echo
#     echo Ingrese un nuevo numero; read num
# done
# echo
# echo El acumulador finalizo en $acumulador

# Bucle for

# for i in $(seq 0 5); do
#     echo $i
# done
# echo
# for ((i=0; i<=5; i++)); do
#     echo $i
# done

# Recorrer todos los parametros
for var in $*
do
    echo $var
done