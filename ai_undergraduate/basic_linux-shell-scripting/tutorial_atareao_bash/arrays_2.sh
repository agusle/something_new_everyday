#!/bin/bash

DISTROS1=(Ubuntu Knoppix PureOS)
DISTROS2=(Mandrake CentOs Fedora)

echo Uniendo DISTRO1 y DISTRO2...
echo
DISTROS=(${DISTROS1[@]} ${DISTROS2[@]})
echo ${DISTROS[@]}

echo "Eliminando los ultimos dos distros: ${DISTROS[-1]} y ${DISTROS[-2]}" 

DISTROS=(${DISTROS[@]::$((${#DISTROS[@]}-2))})
echo 
echo ${DISTROS[@]}
