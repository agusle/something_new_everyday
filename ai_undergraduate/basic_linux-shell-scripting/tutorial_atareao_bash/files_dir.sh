#!/bin/bash

ARCHIVOS=$(find . -maxdepth 1 -type f | wc -l)
DIRECTORIOS=$(find . -maxdepth 1 -type d | wc -l)
LISTADO=$(ls)
echo "Hay $ARCHIVOS archivos y $DIRECTORIOS en el directorio actual"
echo "Son los siguientes:" # si incluyo $LISTADO lo imprime con saltos de linea
echo $LISTADO #imprime uno al lado de otro sin salto de linea
