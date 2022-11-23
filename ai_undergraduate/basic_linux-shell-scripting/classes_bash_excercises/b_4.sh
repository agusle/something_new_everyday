#!/usr/bin/env bash

if [[ ! -e ./tmp/args ]]
then 
	mkdir tmp
	touch ./tmp/args
fi

echo $* >> ./tmp/args
cat ./tmp/args
