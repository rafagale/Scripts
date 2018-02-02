if
	[ $# -eq 0 ]
then
	echo Error. No hay parametros posicionales.
	exit 1
fi

PROCESO=$1
ps -le | grep " $PROCESO$" > misprocesos
if
	[ ! -s misprocesos ]
then
#-z es una opcion del test	
	echo El proceso $PROCESO no existe.
	exit 2
else 
	echo proceso $PROCESO
       	while
		read LINEA
	do
PID=`echo $LINEA | tr -s " " | cut -d" " -f4`
PPADRE=`echo $LINEA | tr -s " " | cut -d" " -f5`

if
	[ $PPADRE -eq 0 ]
then
	NPADRE="Es huerfano"
else
	NPADRE=`ps -p $PPADRE | tail -1 | sed 's/^ *//' | tr -s " "| cut -d" " -f4`
fi	

	echo Proceso $PROCESO
	echo "    PID: $PID PPID: $PPADRE Nombre: $NPADRE"
	done < misprocesos
fi
