#!/bin/bash
clear
if [ $# -eq 2 ]; then
    cont=0
    for i in `ls -l $1 | tr -s ' ' '/' | cut -d '/' -f5 | sed '1d'`
    do
        if [ $i -lt $2 ];then
        cont=`expr $cont + 1`
        fi
    done
echo "Existen" $cont "ficheros que pesen menos de" $2 

else
    echo "Introduce DOS parametros"
fi