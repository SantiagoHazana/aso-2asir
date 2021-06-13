# # Mostrar mensaje
# echo Hola Mundo!

# # Como crear una variable, tener cuidado de NOOOO dejar espacio ni antes ni despues del =
# num=5
# echo $num
# nombre=Jorge
# echo $nombre

# # Como pedir al usuario algo y guardarlo en una variable
# echo Ingrese su nombre
# read nombre
# echo Bienvenido $nombre

# # Como leer los parametros que me introducen
# # Leo el primero, los siguiente segun el numero de la posicion
# echo $1

# # Como sabemos cuantos parametro introducen
# echo $#

# # Como tener una lista de parametros
# # $*

# # ifs
# num1=8
# num2=9

# if [ $num1 -lt $num2 ]
# then
#     echo $num2 es el mayor
# elif [ $num1 -eq $num2 ]
# then
#     echo Son iguales
# else
#     echo $num1 es el mayor
# fi

# # Como comprobar si algo es fichero y existe en el directorio actual
# echo Ingrese un fichero o directorio
# read var
# # Ponemos el $var entre comillas para evitar problemas si el usuario no mete nada
# if [ -f "$var" ]
# then
#     echo Es un fichero
# elif [ -d "$var" ]
# then
#     echo Es un directorio
# else
#     echo No existe $var en el directorio acutal 
# fi

# # Bucle while
# contador=0
# echo
# echo While
# while [ $contador -lt 5 ]
# do
#     echo $contador
#     contador=$(($contador + 1)) # para hacer operaciones matematicas simples, ponemos la operacion entre $(())
# done

# echo
# echo Until
# # Bucle until
# contador=0
# until [ $contador -ge 5 ]
# do
#     echo $contador
#     contador=$(($contador + 1))
# done

# echo
# echo For clasico
# # Manera clasica
# for ((i=0;i<5;i++))
# do
#     echo $i
# done

# echo
# echo For rango
# # For rango - va de 0 a 4 incluido
# for i in {0..4}
# do
#     echo $i
# done

# echo
# echo Foreach
# # Foreach lo utilizamos para recorrer todos los parametros
# for i in $*
# do
#     echo $i
# done


# # Ejemplo de menu de opciones
# respuesta=""
# until [ "$respuesta" = "c" -o "$respuesta" = "C" ]
# do
#     echo
#     echo ------Menu------
#     echo A. Saludo
#     echo B. Suma
#     echo C. Salir
#     echo Seleccione una opcione
#     read respuesta
#     echo

#     if [ "$respuesta" = "a" -o "$respuesta" = "A" ]
#     then
#         echo Hola
#     elif [ "$respuesta" = "b" -o "$respuesta" = "B" ]
#     then
#         echo Ingrese el primer numero
#         read num1
#         echo Ingrese el segundo numero
#         read num2
#         res=$(($num1 + $num2))
#         echo $res
#     fi
# done

# # Pedir contrasena para ingresar, se tiene 3 intentos. Si se entra, me muestra el menu
# contra="jorge"
# contadorIntentos=1
# contraUsuario="z"
# until [ "$contraUsuario" = "$contra" ]
# do
#     echo Ingrese la contrasena
#     read contraUsuario

#     if [ $contadorIntentos -eq 3 ]
#     then
#         echo 3 intentos fallidos, adios!
#         exit
#     fi
#     contadorIntentos=$(($contadorIntentos + 1))
# done

# echo Ingresaste!!!

# respuesta=""
# until [ "$respuesta" = "c" -o "$respuesta" = "C" ]
# do
#     echo
#     echo ------Menu------
#     echo A. Saludo
#     echo B. Suma
#     echo C. Salir
#     echo Seleccione una opcione
#     read respuesta
#     echo

#     if [ "$respuesta" = "a" -o "$respuesta" = "A" ]
#     then
#         echo Hola
#     elif [ "$respuesta" = "b" -o "$respuesta" = "B" ]
#     then
#         echo Ingrese el primer numero
#         read num1
#         echo Ingrese el segundo numero
#         read num2
#         res=$(($num1 + $num2))
#         echo $res
#     fi
# done

# # Operaciones matematicas mas complejas, modulo, division decimales. El operador bc es para hacer operaciones matematicas mas complejas
# # Ver si un numero es par o impar, si es impar mostrar la division por 3
# echo Ingrese un numero
# read num
# parimp=`echo "$num%2" | bc` # aqui se guarda el resultado del modulo
# if [ $parimp -eq 0 ]
# then
#     echo El numero es par
# else
#     echo El numero es impar
#     impar=`echo "scale=2; $num/3" | bc`
#     echo $impar
# fi

# # Comando grep - sirve para buscar palabras dentro de un fichero
# grep "palabra" fichero.txt # esto busca la palabra dentro del fichero y me devuelve las lineas que contengan la palabra
# grep -i "palabra" fichero.txt # busca igual pero no diferencia entre mayusculas y minisculas
# grep -c "palabra" fichero.txt # Me cuenta el numero de veces que aparece la palabra en las lineas del fichero
# grep -v "palabra" fichero.txt # me devuelve las lineas que NO contienen la palabra

# # Comando find - sirve para buscar ficheros o directorios en el disco
# find /home -name "test" # esto me buscara desde home hacia dentro, todos los archivos que se llame exactamente test
# find . -name "pal*" # con . buscamos en el directorio actual
# find /home -name "test*" -type f # busca ficheros que contengan en el nombre test, esto lo logro con -type f
# find /home -name "test*" -type d # busca directorios que contengan la palabra test
# find /home -maxdepth 1 -name "*test*"  # con maxdepth le decimos cuantas carpetas queremos meternos hacia dentro, 1 significa en la misma que estemos

# # Head y tail
# # El comando head se queda con las lineas de arriba que vos le digas
# head -2 fichero.txt
# # El comando tail se queda con las lineas de debajo que vos le digas
# tail -2 fichero.txt

# # Este comando se puede urilizar con el find para quedarnos un solo resultado
# # Buscar si existe algun fichero en el directorio que se llame test y mostrarlo
# resultado=`find /home -name "test.*" -type f | head -1` # en resultado se guarda el primer valor del find
# if [ "$resultado" = "" ]
# then
#     echo No hay resultado
# else
#     cat $resultado
# fi