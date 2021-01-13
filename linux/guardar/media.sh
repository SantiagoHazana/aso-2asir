suma=$(( $1 + $2 + $3 ))
res1=$(( $suma / 3 ))
res=$(echo "scale=3; $suma / $#" | bc)

echo $res
echo $res1