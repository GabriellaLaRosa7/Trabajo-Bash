#!/bin/bash
Base="$HOME/EPNro1"

crear_entorno() {
    if [ -d "$Base" ]; then
        echo "Error: El entorno ya existe en $Base"
    else
        mkdir -p "$Base/entrada" "$Base/salida" "$Base/procesado"
        echo "Entorno creado correctamente en $Base"
    fi
}



#variable con la ruta donde se crea
#define la funcion crear_entorno
#muestra error si ya existe
#crea las carpetas
#se confirma que se creo bien
#se cierra la estructura condicional 
#cierra la funcion
