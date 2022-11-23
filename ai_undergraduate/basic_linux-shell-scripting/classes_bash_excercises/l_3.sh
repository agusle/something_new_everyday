#!/usr/bin/env bash

###########################################################################
# Crear un script que reciba como argumentos una cantidad de palabras.	  # 
# El script debe determinar cuántas palabras son y cuántas de ellas 	  #
# tienen al menos 3 caracteres. En caso de no suministrarse argumentos,   #
# deberá indicar que sin argumentos el script no puede generar resultados #
###########################################################################

#validacion al menos un argumento
[[ $# -lt 1 ]] && echo "Debe ingresar al menos un argumento"

WORDS=0
CHAR3=0

#loop para contar palabras totales y aquellas con al menos 3 caracteres
for WORD in $1
do
	[[ ${#WORD} -ge 3 ]] && CHAR3=$(($CHAR3+1))
	WORDS=$(($WORDS+1))
done

#resultados
echo "El texto ingresado posee $WORDS palabras totales."
echo "$CHAR3 de ellas tienen al menos 3 caracteres."
