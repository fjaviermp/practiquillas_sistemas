#!/bin/bash
carp=`echo $* | cut -d ' ' -f$#`
cont=0
while [ $# -gt 1 ]
do
    if [ -f $carp/$1 ];then
        cont=`expr $cont + 1`
    fi
    shift
done
echo "Numero de archivos a buscar que se encuentran:" $cont