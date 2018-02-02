# while
if #control de errores
        [ $# -le 0 ]
then
        echo Error 1
        exit 1
fi


echo numero de parametros: $#
echo parametros: $*
echo ----------------------------

CONT=0
while
        [ $# -gt 0 ]
do              
        CONT2=`expr $CONT + 1`
        CONT=`expr $CONT + 2`
        PAR1=$1
        PAR2=$2
       
        if
                 [ $# -gt 1 ]         
         then
                 echo parametros $CONT2 y $CONT: $PAR1 y $PAR2
                 shift 2
         else
                 echo ultimo parametro: $CONT2 $PAR1
                 shift
        fi

done

echo ----------------------------
echo numero de parametros: $#
echo parametros: $*
