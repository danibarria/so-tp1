#!/bin/bash
sum=0
if [ $# -ge 5 ] && [ $# -le 7 ] 
then    
    for var in $*
    do
        sum=`expr $sum + $var`
        shift
    done
    echo $sum
else
    echo "uso : ej03.sh param_numerico1 param_numerico2 param_numerico3 param_numerico4 param_numerico5 [param_numerico6] [param_numerico7]"
fi

