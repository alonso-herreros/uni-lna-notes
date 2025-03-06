#!/bin/bash

echo el asterisco: $*
echo el primero: $1
echo el cero $0
echo el sostenido: $#
echo $$

echo "el triangulo"

# gt, ge
# lt le
# eq ne

while [ $# -gt 0 ]
do
    echo $@
    shift
done
