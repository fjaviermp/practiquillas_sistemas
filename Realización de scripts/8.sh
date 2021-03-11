#!/bin/bash
clear
if [ $# -eq "1" ]; then
    find $1
else
echo "Introduce tan solo un parametro";
fi