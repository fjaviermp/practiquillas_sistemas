#!/bin/bash
clear

if [ $# -eq 2];then
    
        echo "Elige que operacion deseas realizar:"
        echo "(C)opiar"
        echo "(M)over"
        read op
        case $op in
            C* | c*)
                cp *.$1 $2
                ;;
            M* | m*)
                mv *.$1 $2
                ;;
        esac
        echo `ls $2/*.$1`

else
    echo "Por favor, introduce tan solo dos parámetros"
fi