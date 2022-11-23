#!/usr/bin/env bash

#################################################
# Crear un script que reciba la ruta absoluta 	#
# a un archivo e indique si existe o no y si se	#
# trata de un archivo regular o un directorio.	#
#################################################

PATH=$1

if [[ -e $PATH ]]
then
	[[ -f $PATH ]] && echo "Es un archivo regular"
	[[ -d $PATH ]] && echo "Es un directorio"
else
	echo "El archivo no existe"
fi 
