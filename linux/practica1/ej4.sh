echo Ingrese la palabra a buscar
read word

res=`find . -name "*$word*"`

if [ $res="" ] 2> /dev/null
then
    echo "No hay resultados"
else
    echo $res
fi