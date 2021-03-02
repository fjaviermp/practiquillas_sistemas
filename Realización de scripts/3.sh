#!/bin/bash
if [ ! -f "$1" ];then 
    echo "El archivo no existe"
else
    while [ ! -z "$linea" ]
        do
        read linea
        num_linea="expr $num_linea + 1"
        if [ ! -z "$linea" ]
        then
        echo "La linea numero: $num_linea del fichero es… $linea"
        fi
done < /tmp/ejemplo_texto
echo "Total lineas: `expr $num_linea - 1`"
fi