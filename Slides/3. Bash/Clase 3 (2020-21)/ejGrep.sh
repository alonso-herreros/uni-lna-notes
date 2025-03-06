#!/bin/bash

#
# Iterar mientras el usuario teclee entrada
#
echo $*
echo Primero $1


echo -n "Cadena: "
while read date
do
  grep $date "$1"
  echo -n "Cadena: "
done

