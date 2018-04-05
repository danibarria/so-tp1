#!/bin/bash

#Crear un script que al pasarle un nombre de archivo como primer argumento,
#ordene el mismo de forma ascendente o descendente, de acuerdo a si el segundo
#parámetro es ‘-A’ o ‘-Z’. Verificar que el script reciba los 2 argumentos, sino mostrar
#la forma de uso.
#$> ./nombre_script.sh [archivo] [-A|-Z]
forma_uso="uso $0 [archivo] [-A | -Z]" 
no_existe="archivo no existe"
archivo=$1
parametro=$2

if [ $# -eq 2 ] ;then
    if [ -e $1 ] ;then #el archivo existe
        case $2 in
            -A)
                sort $archivo > archivo_ascendente ;;
            -Z)
                sort -r $archivo > archivo_descendente ;; 
            *)
                echo $forma_uso
        esac
    else
        echo $no_existe
    fi
else
    echo $forma_uso
fi