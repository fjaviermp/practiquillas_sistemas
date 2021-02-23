#!/bin/bash
read -p "Introduce un numerillo: " num1
read -p "Introduce otro numerillo: " num2
read -p "Introduce el ultimo numerillo: " num3

suma=`expr $num1 + $num2 + $num3`
echo "La suma acumulada es " $suma

producto=`expr $num1 \* $num2 \* $num3`
echo "La producto acumulado es " $producto

media=`expr $suma / 3`
echo "El valor medio es " $media
