#!/bin/bash



Ayuda(){
    echo "usage: $0 [argumentos] maximo"
    echo "Calcula un número entre 1 y maximo, y le pide al usuario"
    echo "que lo adivine."
    echo "Argumentos:"
    echo "-help: Imprime Help (este mensaje) y acaba"
    echo "-pistas: Aporta pistas al usuario"
}

Pistas(){
    # $1 que sea el num a adivinar
    # $2 que sea el metido por usuario
    if [ $1 -lt $2 ]
    then
	echo "es más pequeño el num a adivinar"
    elif [ $1 -gt $2 ]
    then
	echo "es mayor el num a adivinar"
    else
	echo "felicidades"
    fi	     
}

ayuda=0
pistas=0
maximo=""

if [ $# -lt 1 ]
then
    echo "error en params"
    Ayuda
    exit 1
fi



while [ $# -ne 0 ]
do
    case $1
    in
	-help)
	    ayuda=1
	    ;;
	-pistas)
	    pistas=1
	    ;;
	*)
	    maximo=$1
	    ;;
    esac
    shift
done

echo Maximo: $maximo

if [ -z "$maximo" ]
then
    echo "error"
    Ayuda
    exit 1
fi

if [ $ayuda -eq 1 ]
then
    Ayuda
    exit 0
fi


m=`expr 1 + $maximo \* $RANDOM / 32768`

echo A adivinar: $m

fin=0
while [ $fin -ne 1 ]
do
    read -p "Adivina:" typed
    if test $typed == $m
    then
	echo "Felicidades"
	fin=1
    else
	if [ $pistas -eq 0 ]
	then
	    echo "Prueba otra vez"
	else
	    Pistas $m $typed
	fi
	
    fi
done


