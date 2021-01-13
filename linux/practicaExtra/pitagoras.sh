echo Ingrese el primer valor
read num1
echo Ingrese el segundo valor
read num2
res=$(( $num1 * $num1 + $num2 * $num2 ))
total=`echo "scale=3; sqrt($res)" | bc`

echo "sqrt($num1 ˆ 2 + $num2 ˆ 2) = $total"