#!/usr/bin/env bash

###########################################################
#Crear un script que reciba una cantidad de argumentos sin 
#definir e indique si recibió una cantidad par o impar de 
#argumentos. Emplear construcciones de test (corchetes [ ]) y
#operadores lógicos (&& por ejemplo).
###########################################################

if [[ $(($#%2)) -eq 0 ]] 
then
	echo "El script recibió una cantidad par de argumentos ($#)"
else
	echo "El script recibió una cantidad impar de argumentos ($#)"
fi

