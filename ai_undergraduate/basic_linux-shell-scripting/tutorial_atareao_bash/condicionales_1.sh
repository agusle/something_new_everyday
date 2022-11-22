#!/bin/bash

if [[ $1 =~ (.*)a$ ]]
then
	echo Sra. $1
else
	echo Sr. $1
fi
