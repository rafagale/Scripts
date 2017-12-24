#!/bin/sh
# Escribir como parametro posicional el nombre del fichero
# Que cuente los que haya en el sistema
FICHERO=$1
CONTA=0
if 
	test -f $FICHERO #Si existe en dir actual busca en lo demas
then
	echo $FICHERO si que existe
	find / -type f  -name $FICHERO > salida 2>/dev/null
	CONTA=`cat salida | wc -l`
	echo Hay $CONTA $FICHERO en el sistema
else
	echo $FICHERO NO existe
fi

#otra forma
##!/bin/sh
# Escribir como parametro posicional el nombre del fichero
# Que cuente los que haya en el sistema
#FICHERO=$1
#CONTA=0

#find / -type f  -name $FICHERO > salida 2>/dev/null
#if 
#	[ -s salida ] 
#then
#	echo $FICHERO si que existe
#	CONTA=`cat salida | wc -l`
#	echo Hay $CONTA $FICHERO en el sistema
#else
#	echo $FICHERO NO existe
#fi