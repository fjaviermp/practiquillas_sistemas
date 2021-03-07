#!/bin/bash
clear
if [ ! $# -eq "2" ]; then
    echo "Solo puedes introducir dos parametros"
else
    for i in `ls $1`
    do
        if [ $i = $2 ];then
        echo $1/$i `ls -l $1/$i | tr -s ' ' ' ' | cut -d' ' -f1,5,8` | tr -s '/' '/'
        fi
        if [ -d $1/$i ];then
            sh $0 $1/$i $2
        fi
done
fi