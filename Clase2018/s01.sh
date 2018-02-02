#!/bin/sh


#Prueba con variables

#VAR=valor
echo introduce un valor:
read VAR
echo Has escrito: $VAR
MINUS=`echo $VAR | tr [:upper:] [:lower:]`
MAYUS=`echo $VAR | tr [:lower:] [:upper:]`
echo En mayusculas $MINUS
echo En minusculas $MAYUS
