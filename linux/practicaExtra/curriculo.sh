echo Ingrese su nombre; read name
echo Ingrese su apellido; read surname
echo Ingrese su edad; read age

if [ -z $name ]
then
    echo No deje el nombre vacio
    exit
elif [ -z $surname ]
then
    echo No deje el apellido vacio
    exit
elif [ -z $age ]
then
    echo Ingrese su edad
elif [ $age -gt 0 -o $age -le 0 2>/dev/null ]
then
    echo Usted se llama $name $surname y tiene $age años
else
echo Ingrese un numero como edad
fi
    