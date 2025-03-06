#!/bin/bash


echo "En prueba: $*"
./ej1.sh "$*"
echo "En prueba $@"
./ej1.sh "$@"
echo "@@@@@"
echo "En prueba: $*"
./ej1.sh $*
echo "En prueba $@"
./ej1.sh $@
