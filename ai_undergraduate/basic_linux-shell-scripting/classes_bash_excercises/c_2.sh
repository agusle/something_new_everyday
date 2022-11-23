#!/usr/bin/env bash

REVERSE=$(echo $1 | rev)

[[ $1 == $REVERSE ]] && echo "El argumento ingresado es Palindromo" || echo "El argumento ingresado no es palindromo"

