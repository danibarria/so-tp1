#!/bin/bash


#​ Escribir un shellscript que solicite al usuario presionar una tecla y luego imprima
#un mensaje indicando si se presionó una letra, un dígito u otro símbolo. La
#instrucción para tomar información del teclado dentro de un shellscript es "​ read
#<nombre_variable> ​ ". Utilizar un case para resolver el ejercicio

echo "ingrese entrada"
read entrada

case "$entrada" in
    [[:digit:]])
        echo "es numero" 
    ;;
    [[:alpha:]])
        echo "es caracter"
        ;;
    *)
        echo "es otro simbolo"
esac