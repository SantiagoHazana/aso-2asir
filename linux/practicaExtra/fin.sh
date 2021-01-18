echo Ingrese una frase, con fin se saldra del programa; read word
esc="fin"
while [ $word != $esc ] 
do
    echo $word | tr [:lower:] [:upper:]
    echo Ingrese una frase, con fin se saldra del programa; read word
done