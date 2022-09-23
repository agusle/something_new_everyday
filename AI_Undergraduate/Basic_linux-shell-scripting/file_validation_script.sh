#---------------------------------------------------------------
#EXCERCISE:
#Dado un archivo regular mostrar:
#. los permisos en formato octal
#. su tamaño en KB
# Algoritmo:
#- asegurarse de recibir al menos un argumento
#- asegurarse de que el archivo existe
#- asegurarse de que es un archivo regular
#- obtener los permisos del archivo en formato octal y mostrarlo
#- obtener su tamaño (pasarlo a KB de ser necesario) y mostrarlo
#---------------------------------------------------------------

#! /bin/bash

# imprimo cantidad de argumentos
echo "Cantidad de argumentos: $#"

#comparo la cantidad de argumentos con el numero 1
if [ $# -ge 1 ]
then
        echo "El script posee al menos un argumento"
else
        exit 47
fi

# el primer argumento es el archivo

ARCHIVO=$1

# asegurarse de que el archivo existe

[ ! -e $ARCHIVO ] && echo "No existe el archivo: $ARCHIVO" && exit 127

# asegurarse de que el archivo es regular

[ ! -f $ARCHIVO ] && echo "El archivo: $ARCHIVO no es regular" && exit 128

# obtener los permisos del archivo en formato octal y mostrarlo 

echo "Permisos octal: `stat --format "%a" $ARCHIVO`" 

# obtener su tamaño (pasarlo a KB de ser necesario) y mostrarlo

TAMANIO=$(stat --format "%s" $ARCHIVO)
echo "Tamanio (KB):  $((TAMANIO/1024))"

