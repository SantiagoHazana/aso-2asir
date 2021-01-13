echo Ingrese una palabra
read pal1
echo Ingrese otra palabra
read pal2

if [ $pal1 = $pal2 ]
then
    echo Las palabras son iguales
else
    echo Las palabras no son iguales
fi