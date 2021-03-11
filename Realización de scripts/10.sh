#!/bin/bash
clear
if [ $# -eq 1 ];then
    if [ -f $1 ];then
    echo "El archivo existe"
    echo "El contenido de" $1 "es:"
    echo "----------------------------------------------------------------------------------------------------"
    cat $1
    echo "----------------------------------------------------------------------------------------------------"
    exit
    fi

    elif [ $# -eq 2 ];then
    if [ -f $1 ];then
        cat $2 >> $1
        echo "El contenido de" $1 "es:"
        echo "----------------------------------------------------------------------------------------------------"
        cat $1
        echo "----------------------------------------------------------------------------------------------------"
    else
        echo $1 "no existe"
        exit
    fi
else
    echo "Introduce uno o dos parametros"
    exit
fi