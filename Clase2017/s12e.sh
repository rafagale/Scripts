#!/bin/sh
# Pasarle tantos parametros posicionales como archivos

CONTA=0

while 
	[ $# -gt 0 ] 
do
	ELEMENTO=$1 #Darle valor aqui
	find /  -name $ELEMENTO > salida 2>/dev/null
	if 
		[ -s salida ] 
	then
		echo $ELEMENTO "EXISTE"		
	else
		echo $ELEMENTO "NO existe"
	fi
shift
done
