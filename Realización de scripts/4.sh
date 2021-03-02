#!/bin/bash
clear
if [ ! -d "$1" ];then 
    echo "El directorio no existe"
else
    ls -R $1
    echo "Se ha detectado el siguiente numero de archivos:"
    ls -R $1 | wc -l
fi