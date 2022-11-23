#!/usr/bin/env bash

#########################################################
# Crear un script para mostrar por pantalla los números #
# pares del n al 2. n es un argumento recibido por la 	#
# línea de comandos y debe ser un entero mayor a 2.	#
#########################################################

read -p "Ingrese un número entero positivo mayor a 2: " N

# validacion entero positivo con regex
ENT_POS="^([1-9]+\\d*)|[0]"
[[ ! $N =~ $ENT_POS ]] || [[ ! $N -gt 2 ]] && echo "$N no es un número entero positivo mayor a 2" && exit 0

# print de resultados
echo "Los numeros pares del $N al 2 son:"

for NUMBER in $(seq $N -1 $((2+1)))
do 
	[[ $(($NUMBER%2)) -eq 0 ]] && echo -n "$NUMBER "
done
echo 
