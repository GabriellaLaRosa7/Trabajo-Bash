#!/bin/bash/

source entorno.sh

if [ "$1" == "-d" ]; then
	echo "Borrando entorno..."

	rm -rf "$HOME/EPNro1"
	pkill -f consolidar.sh 2>/dev/null #si hay algún error (salida 2), se redirige a /dev/mull para que no se muestren por pantalla. 
	
	echo "Entorno borrado con exito."
	exit 0
fi

seguir=1

while [ $seguir -eq 1 ]
do

	echo "======Menú======"
	echo "1) Crear entorno"
	echo "2) Correr proceso"
	echo "3) Listar alumnos"
	echo "4) Top 10 notas"
	echo "5) Buscar alumno"
	echo "6) Salir"

	read -p "Elija una opción (1-6): " opcion

	case $opcion in
		1)
			crear_entorno
			echo "Entorno creado." ;;
		2)
			bash consolidar.sh & 
			echo "Corriendo proceso" ;;
		3)
			bash script3.sh  ;;
		4)
			bash script4.sh  ;;
		5)
			bash script5.sh ;;
		6)
			echo "Salir" 
			seguir=0 ;;
		*)
			echo "Opción invalida." ;;
	esac
done
