#!/usr/bin/env bash

#########################################################
# Crear un script para mostrar por pantalla los números #
# impares del 1 al n. n es un argumento recibido por 	#
# la línea de comandos y debe ser un entero positivo.	#
#########################################################

read -p "Ingrese un número entero positivo: " N

# validacion entero positivo con regex
ENT_POS="^([1-9]+\\d*)|[0]"
[[ ! $N =~ $ENT_POS ]] && echo "$N no es un número entero positivo" && exit 0

# print de resultados
echo "Los numeros impares del 1 al $N son:"

for NUMBER in $(seq 1 $N)
do 
	[[ $(($NUMBER%2)) -ne 0 ]] && echo -n "$NUMBER "
done
echo 
