#!/bin/bash
if [ $# -eq "2" ]; then
       if [ $1 -eq $2 ] ; then
              echo "Los dos numeros son iguales";
        elif [ $1 -gt $2 ] ; then
             echo "$1 es mayor que $2";
        elif [ $1 -lt $2 ] ; then
             echo "$2 es mayor que $1";
       fi
else
echo "Introduce tan solo dos parametros, ni mas ni menos";
fi