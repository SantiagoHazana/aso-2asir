# contador=0;
# while [ $contador -lt 3 ]
# do
#     echo $contador
#     contador=$(($contador + 1))
# done

# contador=0
# until [ $contador -ge 3 ]
# do
#     echo $contador
#     contador=$(($contador + 1))
# done

# for ((i=0;i<3;i++))
# do
#     echo $i
# done

# for i in {0..2}
# do
#     echo $i
# done

# # Este foreach recorre todos los parametros introducidos y los muestra
# for i in $*
# do
#     echo $i
# done


# # Solo puedo ingresar si pongo bien la contrasena
# contrasena="2asir"
# contadorIntentos=0
# echo Ingrese la contrasena; read contrasenaUsuario

# until [ $contadorIntentos -ge 2 -o $contrasena = $contrasenaUsuario ]
# do
#     echo Contrasena incorrecta, intentelo nuevamente; read contrasenaUsuario
#     contadorIntentos=$(($contadorIntentos + 1))
# done

# if [ $contrasena = $contrasenaUsuario ]
# then
#     echo Ingresaste!!!
# else
#     echo Fallaste demasiado, adios!
# fi

# contrasena="2asir"
# contadorIntentos=0;
# echo Ingrese la contrasena; read contrasenaUsuario

# while [ $contrasenaUsuario != $contrasena -a $contadorIntentos -lt 2 ]
# do
#     echo Contrasena incorrecta, intentelo nuevamente; read contrasenaUsuario
#     contadorIntentos=$(($contadorIntentos + 1))
# done

# if [ $contrasena = $contrasenaUsuario ]
# then
#     echo Ingresaste!!!
# else
#     echo Fallaste demasiado, adios!
# fi


# # Pedir palabras hasta que se ingrese 'fin'

# resp=""
# until [ $resp = "fin" ]
# do
#     echo Ingrese una palabra; read resp
#     echo
#     echo $resp
#     echo
# done