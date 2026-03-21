#!bin/bash

echo "Elegiste la opcion 5"
read -p "Ingrese un numero de Padron: " padron

archivo="$HOME/EPNro1/salida/$FILENAME"

if [ -f "$archivo" ]; then
    grep -w "$padron" "$archivo"
	if ! grep -q "$padron" "$HOME/EPNro1/salida/$FILENAME"; then
   		 echo "No se encontro su numero de padron"
	fi
else
    echo "No existe el archivo "
fi

#le pido al usuario un padroon y lo guardo en una variable
#llamo archivo a el FILENAME
#if -f verifico que exista y sea un archivo 
#grep -w busco EXACTAMENTE(sin coincidencias(-w)) el numero de padron ingresado en FILENAME  
#if !(Si no lo encuentras haz X) dentro del if, si el archivo existe pero el usuario ingresa un padron que no existe, devolvera que no se encontro su nr de padron 
#-q (quiet) evita que haya coincidencias en el numero de padron
