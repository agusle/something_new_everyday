#!/bin/bash

if [[ $(($1 % 2)) -eq 0 ]]
then
	echo $1 es par
else
	echo $1 es impar
fi 
