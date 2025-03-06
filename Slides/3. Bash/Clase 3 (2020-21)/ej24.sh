#!/bin/bash

# Ficheros de un determinado tipo

directorio=$HOME
salida=0

if [ $# -gt 1 ]
then
    echo "Solo un argumento o cero"
    exit
fi

if [ $# -ne 0 ]
then
    directorio=$1
fi

while [ $salida -ne 1 ]
do

    if [ -d "$directorio" ] && [ -x "$directorio" ]
    then
	echo "Procesando el directorio: $directorio"
    else
	echo "No es un directorio"
	exit
    fi
    cd $directorio
    
    echo "Directorios en los que se puede entrar"
    for fichero in *
    do
	
	# Si el fichero es un directorio
	if [ -d "$fichero" ] && [ -x "$fichero" ]
	then
	    echo "$fichero "
	fi
    done
    
    echo "Ficheros que se pueden escribir y ejecutar: "
    for fichero in *
    do
	
	
	# Si el fichero es un directorio
	if [ -f "$fichero" ] && [ -x "$fichero" ] && [ -w "$fichero" ]
	then
	    echo "$fichero "
	fi
    done
    
    echo -n "¿Quiere procesar otro directorio? (s/n) "
    read entrada
    if [ "$entrada" = "n" ]
    then
	salida=1
    else
	echo -n "Introduzca el nombre de directorio: "
	read directorio
    fi
done
