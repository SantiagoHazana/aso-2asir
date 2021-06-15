
if [ "$2" = "" ]
then
    echo Ingrese un numero
    read num2
else
    num2=$2
fi

until [ "$num2" -eq "$num2" ] 2> /dev/null
do
    echo Debes ingresar un numero, intenta nuevamente
    read num2
done

if [ "$1" = "" ]
then
    echo Ingrese un numero
    read num1
else
    num1=$1
fi

until [ "$num1" -eq "$num1" ] 2> /dev/null
do
    echo Debes ingresar un numero, intenta nuevamente
    read num1
done

resp="asd"
until [ "$resp" = "d" -o "$resp"="D" ]
do
    echo
    echo ------Menu------
    echo A. Factorial
    echo B. 
done
