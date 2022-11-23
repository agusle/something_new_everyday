#!/usr/bin/env bash

#################################################################################################
# Crear un script que permita recibir tres argumentos: una palabra P, un número positivo n	#
# y una ruta. Se debe validar la cantidad de argumentos, que n cumpla los requerimientos y	#
# se tenga permiso de escritura en la ruta indicada.						#
# Deberá generarse con esta información un archivo llamado “palabra_P.dat” en la ruta		#
# especificada, que contenga n líneas numeradas y que cada línea el texto indique		#
# “Se ingresó la palabra P”.									#
#################################################################################################

#validacion de cantidad de argumentos 3
[[ $# -ne 3 ]] && echo "Se deben ingresar 3 argumentos para ejecutar el script." && exit 0

#validacion numero positivo
[[ $2 -le 0 ]] && echo "El segundo argumento: $2 debe ser un numero positivo" && exit 1

#validacion ruta con permiso de escritura
[[ ! -x $3 ]] && echo "La ruta $3 debe tener permiso de escritura" && exit 2


LINE=1

for LINES in $(seq $2) 
do
	echo "$LINE - Se ingresó la palabra $1" >> $3/palabra_$1.dat && LINE=$(($LINE+1))
done
