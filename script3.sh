#!bin/bash

echo "ELegiste la opcion 3"
if ls "$HOME/EPNro1/salida/$FILENAME.txt" 1>/dev/null 2>&1; then
	opcion3=$(cut -d " " -f1,2,3 "$HOME/EPNro1/salida/$FILENAME.txt" | sort -n )
	echo "$opcion3"  
else
	echo "No existen archivos"
fi

#if SOLO busca archivos .txt
#ls busca todos los archivos que coincidan con $FILENAME en salida
#1>/dev/null 2>&1 hace ls luego de ejecutarse se rediriga a una carpeta vacia, para asi no mostrar por pantalla el directoroi("$HOME/EPNro1/salida/$FILENAME")
#cut -d define el delimitador, en este caso un espacio
#-f1 verifica que campo mostar, en este caso f1 es el numero de padron y 2,3 los nombres y apellidos
#sort -n ordena numericamente de menor a mayor
#else por si no se encuentran archivos.txt en salida
