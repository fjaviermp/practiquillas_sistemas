#!/bin/bash
clear
if [ $# -eq 1 ];then
    if [ -f $1 ];then
    echo "El archivo existe,"
    read ""
    echo "El contenido de" $1 "es:"
    echo "----------------------------------------------------------------------------------------------------"
    cat $1
    echo "----------------------------------------------------------------------------------------------------"
    exit
    fi

elif [ $# -eq 2 ];then
        cat $1 >> $2
        echo "El contenido de" $1 "es:"
        echo "----------------------------------------------------------------------------------------------------"
        cat $1
        echo "----------------------------------------------------------------------------------------------------"
fi