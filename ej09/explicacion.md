tenemos dos variables A y B que se van alternando a traves de la variable <<toggle>>
si la variable se encuentra en A, repite la entrada que recibio, cambia a B
si la variable se encuentra en B, no hace nada, cambia a A. 

el programa muestra la primer entrada, omite la segunda, muestra la tercera, y sigue... 
el programa tiene parametros opcionales 
    -p      la primera entrada no se escribe, la segunda si, la tercera no se muestra, y sigue...


en el caso de la entrada
    nuevo
    mes
    abril
    privamera
    invierno
al ejecutar ./ej-base > archivo
en archivo nos encontrariamos con:
    nuevo
    abril
    invierno


en el caso de la entrada
    viejo
    dia
    noche
    nace
al ejecutar ./ej-base -p > archivo
en archivo nos encontrariamos con:
    dia
    nace

