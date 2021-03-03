#!/bin/bash
clear
if [ $# -eq "2" ]; then
  
    if [ ! -d "$1" ];then 
    echo "El directorio no existe"
    #elif [ $2 =~ ^-?[0-9]+$   ];then
    #echo "El segundo parametro debe ser un numero de bytes"
    else
        find $1 -type f -size -$2c
    fi

else
    echo "Introduce DOS parametros"
fi