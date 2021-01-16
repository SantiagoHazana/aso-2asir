suma=$(( $1 + $2 + $3 ))
res1=$(( $suma / $# ))
res=`echo "scale=3; $suma / $#" | bc`
# res=$(echo "scale=3; $suma / $#" | bc) misma manera pero guardando el comando de otra forma $()

echo $res
echo $res1
