#!/bin/bash
sum=0
while [ $# -gt 0 ]  
do
    echo $1
    sum=`expr $sum + $1`
    shift 
done

echo $sum