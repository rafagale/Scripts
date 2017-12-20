echo introduce un numero
read VAR1
echo introduce otro numero
read VAR2

if 
	[ $VAR1 -gt $VAR2 ]
then	
	echo $VAR1 es el mayor
elif
	[ $VAR1 -eq $VAR2 ]
then
	echo son iguales
else	
	echo $VAR2 es el mayor
fi	
