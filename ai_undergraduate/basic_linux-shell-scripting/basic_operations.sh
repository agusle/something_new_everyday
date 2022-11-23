#!/usr/bin/env bash

[[ $# -lt 3 ]] && echo "El script $0 no posee 3 argumentos como mínimo" && exit 1

OPERADOR=$1
NUM1=$2
NUM2=$3

case $OPERADOR in 
	+) echo $(($2 + $3)) ;;
	-) echo $(($2 - $3)) ;;
	x) echo $(($2 * $3)) ;;
	/) echo $(($2 / $3)) ;;
	*) echo "$1 no es un operador válido entre \"+,-,x,/\"." && exit 2
esac
