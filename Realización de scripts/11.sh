#!/bin/bash
clear

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
    *)
    echo "Error en la respuesta"
    exit
    ;;
esac
echo `ls $2*.$1`