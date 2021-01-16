echo Hola Mundo! #echo muestra un mensaje y el # sirve para comentar
echo Dime tu nombre
read nombre
echo Hola $nombre, bienvenido
echo El valor del primer parametro es: $1
echo Se introdujeron $# parametro/s #me dice cuantos parametros se introdujeron
nombre=Sara #cuando asignas el valor de una variable, va sin $ y NO hay que dejar espacios entre el =
echo "El valor del nuevo nombre (misma variable) es:" $nombre

mkdir $1
# if [ $? -eq 0 ]
# then
#     echo Se creo el directorio
# else
#     echo Error al crear el directorio
# fi

# este if con el test, equivale a lo mismo que el if de arriba
if test $? -eq 0
then
    echo Se creo el directorio
else
    echo Error al crear el directorio
fi
