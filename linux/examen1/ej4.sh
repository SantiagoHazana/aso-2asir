contra="letmein"
contador=1
echo Ingrese la contrasena; read entrar
while [ $contador -lt 3 -a "$contra" != "$entrar" ]
do
    contador=$(($contador + 1))
    echo Error! Ingrese la contrasena; read entrar
done

if [ $contador -eq 3 ]
then
    echo Ingresaste 3 veces mal la contrasena
    exit
fi
echo
echo Permiso para entrar!!!
echo
contador=0;
resp=""
while [ $contador -lt 5 -a "$resp" != "no" ]
do
    echo
    echo Introduce un nombre; read nombre
    numFila=`wc -l < alumnos.txt`
    numFila=$(($numFila + 1))
    echo $nombre:$numFila: >> alumnos.txt
    echo
    echo Desea continuar? si/no; read resp
    contador=$(($contador + 1))
done

opc=""
until [ "$opc" = "c" ]
do
    echo
    echo a. Nombres
    echo b. Clave
    echo c. Salir
    echo
    echo Seleccione una opcion; read opc

    if [ "$opc" = "a" ]
    then
        echo
        cat alumnos.txt | cut -d ":" -f 1
    elif [ "$opc" = "b" ]
    then
        echo
        echo Ingrese la clave a buscar; read clave
        echo
        grep $clave alumnos.txt | cut -d ":" -f 1
    fi

done