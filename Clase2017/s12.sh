#!/bin/sh
# Escribir como parametro posicional el nombre del fichero
FICHERO=$1
if 
	test -f $FICHERO 
then
	echo $FICHERO si que existe
else
	echo $FICHERO NO existe
fi	