#!/bin/bash
A=Marta
N=3

test $A = Marta && echo $A 
test $A -eq Marta && echo $A 
test $N -eq 3 && echo $N 
test "$N" = "3" && echo $N 
test "$N" -eq `expr 2+1` && echo $N 
test "$N" -eq "expr 2+1" && echo $N 
