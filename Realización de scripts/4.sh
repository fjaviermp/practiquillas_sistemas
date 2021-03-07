#!/bin/bash
clear
if [ ! $# -eq 1 ];then 
    echo "Introduce un solo argumento"
else
cont=0 
    for i in `ls $1`
    do
        cont=`expr $cont + 1`
        if [ -f $1/$i ];then
            echo "Fichero: " $i
        elif [ -d $1/$i ];then
            echo "Directorio " $i
        fi
    done
fi