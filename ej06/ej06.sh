#!/bin/bash
#Crear un shellscript que permita listar los tipos de archivos que contiene un
#directorio pasado como parámetro. Efectuar las correspondientes validaciones.

# $1 informacion de directorio que vamos a utilizar
# directorio existe

if [ $# -eq 1 ] ;then #hay parametros
    directorio=$1
    if [ -d $directorio ] ;then #el directorio exist
        #ls -1 $directorio
        for i in $(ls $directorio)
        do 
            #echo $i
            if [ -d $i ];then
                echo "es directorio"
            elif [ -h $i ] ;then
                echo "enlace simbolico"
            elif [ -f $i ];then
                echo "archivo comun"
            fi
        done
    else
        echo "No existe $directorio"
        exit 1
    fi
else
    echo "uso : $0 <nombre_directorio>"
fi

