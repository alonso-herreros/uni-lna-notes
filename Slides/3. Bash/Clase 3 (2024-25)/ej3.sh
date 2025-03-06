#!/bin/bash
set -x -e

if [ $# -ne 1 ]
then
    echo "error en params"
    exit 1
fi

maximo=$1

m=`expr 1 + $maximo \* $RANDOM / 32768`

echo Trampa: $m

fin=0
while [ $fin -ne 1 ]
do
    read -p "Adivina:" typed
    if test $typed == $m
    then
	echo "Felicidades"
	fin=1
    else
	echo "Prueba otra vez"
    fi
done

