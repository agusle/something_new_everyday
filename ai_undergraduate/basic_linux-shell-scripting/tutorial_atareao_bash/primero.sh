#!/bin/bash
echo Hola mundo
echo "Este script se llama $0"
echo "Tiene $# argmumentos"
echo "Lo ejecutó $USER"
echo "Dentro de la maquina $HOSTNAME"
echo "El proceso con id: $$"
echo "Tardó $SECONDS segundos en ejecutarse"
echo "Tiene $LINENO lineas de codigo"
echo "La salida del ultimo comando es:$?"
