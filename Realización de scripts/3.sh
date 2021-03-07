#!/bin/bash
if [ $# -eq 1 ]
then
    if [ ! -f $1 ]
    then
        echo "El archivo no existe"
    else
        echo "El archivo contiene: " `wc -l $1 | cut -c1-1` " lineas"
    fi
else
    echo "Introduce tan solo un parametro";
fi