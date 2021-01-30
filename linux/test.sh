num=`echo $1 % 1 | bc`

if [ $num = 0 ]
then
    echo Entero
else
    echo Con decimales
fi
