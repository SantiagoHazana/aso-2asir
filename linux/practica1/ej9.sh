# # quien esta conctado
# who

# # por parametro ver quien esta conectado
# grep -i "nombreUsuario"

# who | grep -i -c "$1" # -c te da la cuenta de ocurrencias

num=`who | grep -i -c "$1"`

if [ $num -eq 0 ]
then
    echo No esta conectado $1
else
    echo $1 esta conectado $num veces
fi