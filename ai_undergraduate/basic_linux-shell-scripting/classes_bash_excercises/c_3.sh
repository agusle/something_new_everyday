#!/usr/bin/env bash

###############################################################
# Crear un script que reciba dos rutas a archivos de texto 
# y que indique si estos archivos tienen la misma cantidad 
# de líneas. Validar que los archivos existen y se pueden leer.
###############################################################

[[ $# -lt 2 ]] && echo "Debe ingresar al menos dos rutas de archivos de texto como argumentos" && exit 0

#existencia de archivo
[[ ! -e $1 ]] && echo "El archivo $1 no existe" && exit 1
[[ ! -e $2 ]] && echo "El archivo $2 no existe" && exit 2

#permiso de lectura
[[ ! -r $1 ]] && echo "El archivo $1 no tiene permiso de lectura" && exit 3
[[ ! -r $2 ]] && echo "El archivo $2 no tiene permiso de lectura" && exit 4

#archivo de texto
[[ ! $1 = *.txt ]] && echo "El archivo $1 no es un archivo de texto" && exit 5
[[ ! $2 = *.txt ]] && echo "El archivo $2 no es un archivo de texto" && exit 6


LINEAS1=$(cat $1 | wc -l)
LINEAS2=$(cat $2 | wc -l)

if [[ $LINEAS1 -eq $LINEAS2 ]] 
then 
	echo "Ambos archivos poseen la misma cantidad de lineas ($LINEAS1)"
else
	echo "Ambos archivos poseen diferentes cantidades de lineas:"
	echo "$1: $LINEAS1"
	echo "$2: $LINEAS2"
fi 
