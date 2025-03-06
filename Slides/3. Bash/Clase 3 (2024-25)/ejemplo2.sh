#!/bin/bash


Suma () {
    n=`expr $1 + $2`
    echo $n
}

Ayuda () {
    echo "la fincion es:kljfkjsdf"
    echo "la ayuda"
}

ayuda=0
fich=""
error=0


while [ $# -ne 0 ]
do
    case $1
    in
	-h)
	    echo "ayuda"
	    ayuda=1
	    ;;
	-f)
	    echo fichero
	    shift
	    if [ -z "$fich" -a $# -ge 1 ]
	    then
		fich=$1
	    else
		echo "error"
		error=1
	    fi
	    ;;
	*)
	    echo "otra cosa"
	    ;;
    esac
    shift
done

echo error: $error
echo ayuda: $ayuda

if [ $ayuda -eq 1 ]
then
    Ayuda
    exit 1
fi

echo fichero: $fich

echo "llamo a suma"

Suma 2 3
