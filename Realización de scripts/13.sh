#!/bin/bash
dir=`echo $* | cut -f$# -d ' '`
cont=0
while [ $# -gt 1 ]
    do
        ls $dir/$1 > /dev/null 2>/dev/null
        if [ $? -eq 0 ]
        then
            cont=`expr $cont + 1`
        fi
        shift
    done
echo $cont
