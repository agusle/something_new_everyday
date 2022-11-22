#!/bin/bash

funcion1(){
    echo $0
    echo $#
    echo $@
    echo $$
    ans=$(($1+$2))
    echo $?
    echo $ans
    echo $?
}
funcion1 2 2 3
echo $?


