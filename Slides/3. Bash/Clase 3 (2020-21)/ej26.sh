#!/bin/bash
#
#Seguir los ascendentes de un proceso
#
#

if [ $# -ne 1 ]
then
  echo "El script debe recibir un parametro (y solo uno): el PID a seguir."
  exit 1
fi

pid=$1

if [ $pid -eq 1 ]
then
    echo "El PID a seguir ya es el proceso con PID=1"
    exit 1
fi

if [ $pid -lt 1 ]
then 
    
    echo "El PID debe ser mayor o igual a 1"
    exit 1
fi

while [ $pid -ne 1 ]
do

    padre=`ps  l --no-headers --pid $pid  | awk -F\  '{print $4}'`
#padre=`ps --pid $padre -o "%P" --no-headers`
    if [ "$padre" = "" ]
    then
	echo "El PID $pid No existe"
	exit 1
    fi
    
    echo $pid creado por el proceso $padre
    pid=$padre
done
