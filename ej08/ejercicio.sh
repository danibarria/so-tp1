#!/bin/bash
#
# prog5
if [ $# -gt 0 ]; then
    if [ $# -ne 1 -o $1 != "-h" ]; then
        echo "uso: prog5 [-h]"
        exit 1
    fi
    echo "Texto explicativo."
    exit 0
fi

for i in *
do
    lfn=`echo $i | gawk ' {str = tolower($0);print str }'`
    if [ $lfn != $i ]; then
        mv $i $lfn
    fi
done