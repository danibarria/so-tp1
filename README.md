# so-tp1
trabajo practico numero 1 de sistemas operativos


TRABAJO PRÁCTICO LABORATORIO No 1: ​ Shell scripts
Comandos Básicos en Linux
1) Explique en no más de un renglón cada uno de los siguientes comandos:
a. Relacionados con archivos​ : ls, cat, more, less, cp, rm, mkdir, cd, pwd,
file, df, grep.
b. Relacionados con la documentación del sistema Linux​ : whatis,
apropos, info, man.
c. passwd, mount, time, date, vi, gcc, exit, reboot, halt, poweroff
d. Relacionados con procesos y memoria​ : ps, kill, top
e. Relacionados con redes​ : ifconfig, ping, ip, traceroute, ssh, telnet, ftp
2) Mencione al menos cinco comandos equivalentes en Windows, por ejemplo:
ls ≈ dir. Intente preferentemente con los relacionados a redes.
3) Explique (con la ayuda del manual en línea) y pruebe el comando chmod.
a. ¿Cómo invocaría chmod para asignar permisos de lectura, escritura y
ejecución al propietario, lectura y ejecución para el resto de los
usuarios del sistema? Suponga que estos permisos deben asignarse a
todos los archivos contenidos en una carpeta de nombre ​ scripts ​ (sin
entrar a la carpeta).
b. ¿Cómo invocaría chmod para asignar permisos de lectura y escritura
(sin ejecución) al propietario y solo lectura para el resto de los usuarios
del sistema? Suponga que estos permisos deben asignarse a todos los
archivos con extensión .​ txt ​ en el directorio actual.
UNPSJB- FACULTAD DE INGENIERÍA
1SISTEMAS OPERATIVOS / -S 2018
TRABAJO PRÁCTICO N° 1
Shell Scripts
Resolver los siguientes ejercicios en Linux
1. Dado el siguiente script:
clear
while :
do
echo -e "\033[H"
ps
done
a. Describir qué hace.
b. Modificar el script de tal forma que ejecute cualquier comando en forma
reiterada, en vez de hacerlo solo con ps.
2. ​ Construir un shellscript que reciba argumentos numéricos e imprima cada uno en
líneas separadas utilizando la estructura de repetición while. Mostrar al final, la suma
de todos los números pasados como parámetros.
3. Agregar al script anterior la condición de que solo se ejecute si la cantidad de
argumentos está entre 5 y 7 inclusive y todos los argumentos ingresados son
números. En caso que la cantidad de argumentos sea diferente y algún argumento
no sea un número, se debe mostrar un mensaje de uso y de error respectivamente.
4. Rehacer el script del punto 1, utilizando un for en lugar de while.
5. ​ Escribir un shellscript que solicite al usuario presionar una tecla y luego imprima
un mensaje indicando si se presionó una letra, un dígito u otro símbolo. La
instrucción para tomar información del teclado dentro de un shellscript es "​ read
<nombre_variable> ​ ". Utilizar un case para resolver el ejercicio
6. Crear un shellscript que permita listar los tipos de archivos que contiene un
directorio pasado como parámetro. Efectuar las correspondientes validaciones.
7. Crear un script que al pasarle un nombre de archivo como primer argumento,
ordene el mismo de forma ascendente o descendente, de acuerdo a si el segundo
parámetro es ‘-A’ o ‘-Z’. Verificar que el script reciba los 2 argumentos, sino mostrar
la forma de uso.
$> ./nombre_script.sh [archivo] [-A|-Z]
UNPSJB- FACULTAD DE INGENIERÍA
2SISTEMAS OPERATIVOS / -S 2018
TRABAJO PRÁCTICO N° 1
8. Dado el siguiente shellscript:
!#!/bin/bash
!#
!# prog5
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
Mediante inspección del código impreso, describir que es lo que hace. Luego
transcribir en Linux y probar.
NOTA: En la línea 16 se asigna a la variable lfn el contenido de la variable i
transformado a minúsculas.
9. Dado el siguiente ShellScript:
!#!/bin/bash
!# shscript
toggle="A"
if [ $1 == "-p" ]; then
toggle="B"
fi
while read line
do
if [ $toggle == "A" ]; then
echo $line
toggle="B"
else
toggle="A"
fi
done
a. Describa qué hace el shellscript.
b. Probar redireccionando en la entrada un archivo con texto.

10. El siguiente shellscript está pensado para recibir uno o dos parámetros en línea
de comandos, ni más ni menos:
!#! /bin/bash
!# shscript
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
a. Describa qué hace este shellscript.
b. Transcriba y pruebe en Linux.

11. Dado el siguiente Sellscript:
!#!/bin/bash
!#
!# shellscript1
if [ $# -ne 1 ]; then
echo "uso: shellscript1 <patron> | -h"
exit 1
fi
if [ $1 = "-h" ]; then
echo "Texto explicativo."
exit 0
fi
PATRON=$1
for i in `find ./ -name “*.[hc]”`
do
echo "--------------"
echo $i
grep $PATRON $i
done
a. Mediante inspección del código impreso, comente qué hace.
UNPSJB- FACULTAD DE INGENIERÍA
4SISTEMAS OPERATIVOS / -S 2018
TRABAJO PRÁCTICO N° 1
b. Cuál sería el contenido del archivo "salida.txt" si se ejecutara el
siguiente comando:
./shellscript1 shmget > salida.txt
Suponiendo que el directorio actual es /usr/src. (Directorio donde
normalmente está el código fuente del Sistema Operativo Linux,
distribuido a su vez en varios subdirectorios.)
c. Modificar el shellscript de tal forma que no se impriman los nombres de
los archivos que no contienen el patrón. Puede ser útil el uso del
operador &&.

12. ​ Buscar un servicio JSON en Internet que entregue la latitud y la longitud de una
ciudad. En base a esto construir un shell script que reciba el nombre de una ciudad y
muestre la latitud y longitud de la misma. Seguramente el servicio entregará más
datos que tendrán que ser desestimados. Para este script es posible que necesite
usar: wget, curl, sed, awk, etc.
