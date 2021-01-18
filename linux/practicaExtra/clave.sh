pass="sesamo"

echo Ingrese la contraseña; read password

if [ $pass = $password ]
then
    cat /etc/passwd
else
    echo Clave incorrecta
fi