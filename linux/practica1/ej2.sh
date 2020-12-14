resp="y"
until [ $resp = "n" -o $resp = "N" ]
do
    echo 
    sh ej1.sh
    echo Desea repetirlo? N=No, Y=Si
    read resp
done

# Hecho con while
# resp="y"
# while [ $resp = "y" -o $resp = "Y" ]
# do
#     echo 
#     sh ej1.sh
#     echo Desea repetirlo? N=No, Y=Si
#     read resp
# done