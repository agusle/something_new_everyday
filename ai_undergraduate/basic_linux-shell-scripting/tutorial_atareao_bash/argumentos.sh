#!/bin/bash

#--------------------------------------------------------------------------------------------------#
# Ejecutar el script en consola:./argumentos.sh arg1 arg2 arg3 arg4 arg5 arg6 arg7 arg8 arg9 arg10 #
#--------------------------------------------------------------------------------------------------#

echo "Este script detectó $# argumentos"
echo "Este es el primer argumento: $1"
echo "Todos los argumentos: $@"
echo "El argumento 9 es: $9"
echo "El argumento 10 es: ${10}"
