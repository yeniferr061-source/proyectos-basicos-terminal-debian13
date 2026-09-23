#!/bin/bash
###############################################################################
# Script: 09_calculadora_espacio_disco.sh
# Descripción: Muestra el espacio ocupado por cada carpeta dentro del
#              directorio actual, ordenado de mayor a menor.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./09_calculadora_espacio_disco.sh [ruta_opcional]
###############################################################################

RUTA="${1:-.}"

if [ ! -d "$RUTA" ]; then
    echo "Error: la ruta '$RUTA' no existe."
    exit 1
fi

echo "Espacio ocupado por cada carpeta dentro de '$RUTA':"
du -sh "$RUTA"/*/ 2>/dev/null | sort -rh
