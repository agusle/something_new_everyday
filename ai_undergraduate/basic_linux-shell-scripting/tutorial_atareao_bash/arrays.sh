#!/bin/bash

DISTROS=(Ubuntu 'Linux Mint' Deepin Manjaro Elementary)

for DISTRO in "${DISTROS[@]}"
do
	echo $DISTRO
done


echo ${DISTROS[@]:2}

echo ${DISTROS[0]:0:3}

echo "Reemplazando ${DISTROS[1]} por Debian..." 
DISTROS=(${DISTROS[@]/'Linux Mint'/Debian})

echo "DISTROS tiene ${#DISTROS[@]} distribuciones"

echo "${DISTROS[0]} tiene ${#DISTROS[0]} caracteres"

DISTROS=('Linux Mint' "${DISTROS[@]}")

echo ${DISTROS[@]}

echo "Ahora sacamos ${DISTROS[-1]} del listado"
unset DISTROS[-1]

echo ${DISTROS[@]}
