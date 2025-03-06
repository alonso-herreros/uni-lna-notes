#!/bin/bash

a=5
echo Mi variable es: $a

echo estoy en $HOME
whoami
b=`who`
echo $b

if [ $# -eq 0 ]
then
    echo "No args"
    exit
else
    echo "args suficientes"
fi

echo $*
echo $@
echo $0
#echo $1
#echo $2
#echo $4
echo Num args: $#
echo mi pid: $$
# cuidado no acceder a variables no definidas (mayor que el num de args)
#echo $10 

echo $*
shift
echo $*
shift
echo $*
shift
echo $*


a=4
case $a
in
    2)
	echo "es un 2"
	;;
    3)
	echo "es un 3"
	;;
    *)
	echo es el default
	;;
esac


while [ $# -ne 0 ]
do
    case $1
    in
	-h)
	    echo "presneto help"
	    ;;
	*)
	    echo lo que sea
	    ;;
    esac
    shift
done
