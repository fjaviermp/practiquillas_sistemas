#!/bin/bash
clear
if [ ! -d "$1" ];then 
    echo "El directorio no existe"
else
    if [ ! -f "datos.txt" ];then
    echo "El archivo datos.txt no existe"
    fi

    if [ -f "datos.txt" ];then
    > datos.txt             #Limpiar el archivo de texto para borrar resultados anteriores
    ls  >> datos.txt        #Escribir el resultado del comando LS en datos.txt
    cat datos.txt           #Mostrar en pantalla el contenido de datos.txt
    fi

fi