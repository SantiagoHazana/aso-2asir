echo Ingrese el directorio a buscar el mayor fichero
read direct
# du -sh $fich/* | sort -n | tail -1 | cut -f 2
ls -lSr $direct | tail -1 | cut -f 13 -d " "