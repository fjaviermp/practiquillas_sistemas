#!/bin/bash
for i in `ls -l $1 | tr -s ' ' | sort +2 -t ' ' | cut -f9 -d ' ' | sed "1d" `
    do
        if [ `ls -l $1/$i | tr -s ' ' | sort +2 -t ' ' | cut -f5 -d ' ' -gt 100` ];then
        echo $i
        fi
        echo $i >> datos
    done