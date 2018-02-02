FICHERO=$1
if
	[ ! -s fichero  ]
then
	echo No hay procesos
else	

	while
		read LINEA
	do	
		echo Linea leida: $LINEA
	done < $FICHERO

fi

#Te dice lo que hay en el fichero que le pases como 
#paremetro posicional
