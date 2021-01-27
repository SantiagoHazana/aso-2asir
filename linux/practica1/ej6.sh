if [ $# -ne 2 ]
then
    echo Debes ingresar solo dos parametros
    exit
fi

if [ $1 = $2 ]
then
    echo Las cadenas son iguales
else
    echo Las cadenas no son iguales
fi