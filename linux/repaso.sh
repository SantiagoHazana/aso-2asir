contador=0;
resp=""
while [ $contador -lt 3 -a $resp != "n" ]
do
    echo $contador
    contador=$(($contador + 1))
    echo
    echo Desea continuar? [s/n]; read resp
done

# contador=0
# until [ $contador -ge 3 ]
