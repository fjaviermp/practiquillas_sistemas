#!/bin/bash
if [ $# -eq 1 ];then
    if [ ! -f datos ];then
        echo "No existe el fichero datos, creare uno"
        touch datos
    fi

    #for i in `ls -l | cut -f3 -d ' '`
        #do
            #echo $i
    #done

    #echo "Ficheros con peso de mas de 20 bytes:" < datos
    #find $1 -maxdepth 1 -type f -size +19c -exec ls -l {} \; | cut -f9 -d ' ' |sort -k 3 > datos
    #cat datos

    echo "Ficheros ordenador por duenio:" < datos
    find $1 -type f -exec ls -l {} \; | cut -f2 -d ' ' | sort -k 3 > datos
    #cat datos

fi