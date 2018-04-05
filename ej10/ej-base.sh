#! /bin/bash
# shscript
if [ "$1" = "-" ]
then
    for i in *
    do
        grep "$2" $i > /dev/null || echo $i
    done
else
    for i in *
    do
        grep "$1" $i > /dev/null && echo $i
    done
fi