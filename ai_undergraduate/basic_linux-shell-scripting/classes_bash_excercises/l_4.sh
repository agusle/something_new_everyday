#!/usr/bin/env bash

#########################################################################################
# Crear un script que permita el ingreso de una serie de números (consideremos que la	#
# entrada es adecuada, que la persona que emplea el script ingresa solo números) y	#
# determinar cuántos de ellos son:							#
# - pares										#
# - positivos										#
# - que tengan 3 cifras									#
#########################################################################################

RESULTADO=0

for NUMBER in $@
do
	[[ $(($NUMBER%2)) -eq 0 ]] && [[ $NUMBER -gt 99 ]] && RESULTADO=$(($RESULTADO+1))
done

echo "$RESULTADO numeros son pares, positivos y tienen 3 cifras"
