echo Menu
echo a. Mostrar primer parametro
echo b. Potencia
echo c. Salir
echo Ingrese su opcion; read opc
while [ $opc != "c" ]
do

    if [ $opc = "a" ] 
    then
        echo $1
    elif [ $opc = "b" ] 
    then
        echo Ingrese la base
        read num1
        echo Ingrese el exponente
        read num2
        echo
        echo $(($num1**$num2))
    else
        echo Ingreso una opcion incorrecta
    fi
    echo Ingrese su opcion; read opc
done
echo
echo Adios!