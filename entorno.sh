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
