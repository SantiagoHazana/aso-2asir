contra="letmein"
contador=1
echo Ingrese la contrasena; read entrar
while [ $contador -lt 3 -a $contra != $entrar ]
do
    contador=$(($contador + 1))
    echo Error! Ingrese la contrasena; read entrar
done

if [ $contador -eq 3 ]
then
    echo Ingresaste 3 veces mal la contrasena
    exit
fi

echo Permiso para entrar!!!