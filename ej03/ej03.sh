#!/bin/bash
sum=0
if [ $# -ge 5 ] && [ $# -le 7 ] 
then
    while [ $# -gt 0 ]  
    do
        echo $1
        sum=`expr $sum + $1`
        shift 
    done

    echo $sum
else
    echo "uso : ej03.sh param_numerico1 param_numerico2 param_numerico3 param_numerico4 param_numerico5 [param_numerico6] [param_numerico7]"
fi

