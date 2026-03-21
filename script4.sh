#!bin/bash

echo "Eligiste la opcion 4"
if ls  "$HOME/EPNro1/salida/$FILENAME.txt" 1>/dev/null 2>&1; then
	opcion4=$(cut -d " " -f5,2,3 "$HOME/EPNro1/salida/$FILENAME.txt" |  sort -k3,3nr | head -n 10)
	echo "$opcion4"
else
    echo "No existen archivos"
fi

#ls y 1>/dev/null 2>&1 hace lo mismo que en el script3.sh
#lo mismo con cut, solo que hora en vez de padron seran las notas
#sort ordena, -k3,3 usa el campo5 como clave de orden, n numerico, r descendente(de menor a mayor)
#Basicamente sort -k3,3nr ordena el tercer campo del RESULTADO DE cut , la nota
