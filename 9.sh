#!/bin/bash

read -p "Introduce el precio del producto: " precio

read -p "Introduce la cantidad del producto:" cantidad

echo "Se aplica un IVA del 6%"
    iva=`expr $precio \* 6 / 100`
echo "El IVA de cada producto es " $iva

    subtotal=`expr $precio + $iva`
echo "El subtotal (precio por producto CON IVA) son " $subtotal

    total=`expr $subtotal \* $cantidad` 
echo "El total de la compra (IVA incluido) son " $total
   
