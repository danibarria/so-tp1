#!/bin/bash
#
# shellscript1

if [ $# -ne 1 ]; then
    echo "uso: shellscript1 <patron> | -h"
    exit 1
fi
if [ $1 = "-h" ]; then
    echo "Texto explicativo."
    exit 0
fi
PATRON=$1
for i in `find ./ -name "*.[hc]"`
do
    echo "--------------"
    grep $PATRON $i && echo $i     #busca el patron en el archivo
done
