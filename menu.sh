#!/bin/bash/

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
			echo "Crear entorno" ;;
		2)
			echo "Correr proceso" ;;
		3)
			echo "Listar alumnos" ;;
		4)
			echo "Top 10 notas" ;;
		5)
			echo "Buscar alumno" ;;
		6)
			echo "Salir" 
			seguir=0 ;;
		*)
			echo "Opción invalida." ;;
	esac
done
