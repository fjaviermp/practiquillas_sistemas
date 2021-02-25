#~~FRANCISCO JAVIER MARTINEZ PLAZA~~~#
#~~DESARROLLO DE APLICACIONES WEB~~~~#

#!/bin/bash
A1=""

test -z $A1 && echo "A SI $A1"
test -z "$A1" && echo "B SI $A1"
test -n $A1 && echo "C SI $A1"
test -n "$A1" && echo "D SI $A1"
test ! -n $A1 && echo "E SI $A1"
test ! -n "$A1" && echo "F SI $A1"
