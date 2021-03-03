#!/bin/bash
clear
if [ $# -eq "1" ];then      #Es un fichero
    echo "El fichero tiene el siguiente contenido"
    cat $1

    echo "----------------------------------------------"

    echo "Introduce todo el texto que deseas: "
    read texto

    echo $texto >> $1 

elif [ $# -eq "2" ];then    #El primero es un fichero, el segundo lo que queremos escribir
    echo $2 >> $1
fi