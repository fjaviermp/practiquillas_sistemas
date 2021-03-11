#!/bin/bash
dirs=$1
d=`echo $dirs | cut -f1 -d' '`
cont=2
while [ -n "$d" ]
do
    for i in `ls $d`
    do
        echo $i
        if [ -f $d/$i -a -r $d/$i ];then
            numf=`expr $numf + 1`
        elif [ -d $d/$i ];then
            numd=`expr $numd + 1`
            dirs="$dirs $D/$i"
        fi
    done
    d=`echo $dirs | cut -f$cont -d' '`
    cont=`expr $cont + 1`
done
echo "Ficheros =" $numf
echo "Directorios =" $numd
