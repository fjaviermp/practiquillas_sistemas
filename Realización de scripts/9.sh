#!/bin/bash
clear
if ! [ $# -eq "2" ]; then
    echo "Solo puedes introducir dos parametros"
elif [ ! -d "$1" ];then 
echo "No se ha encontrado el directorio";
else

    if [ -f /"$1"/"$2" ];then
    echo "SI"
    elif [ -f /"$1"/*/"$2" ];then
    echo "SI"
    fi

fi