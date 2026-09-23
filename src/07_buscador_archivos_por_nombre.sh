#!/bin/bash
###############################################################################
# Script: 07_buscador_archivos_por_nombre.sh
# Descripción: Busca archivos cuyo nombre contenga una palabra clave,
#              dentro de una ruta indicada.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./07_buscador_archivos_por_nombre.sh ruta palabra_clave
###############################################################################

RUTA="${1:-.}"
PALABRA="$2"

if [ -z "$PALABRA" ]; then
    echo "Uso: $0 ruta palabra_clave"
    exit 1
fi

if [ ! -d "$RUTA" ]; then
    echo "Error: la ruta '$RUTA' no existe."
    exit 1
fi

echo "Buscando archivos que contengan '$PALABRA' en '$RUTA'..."
RESULTADOS=$(find "$RUTA" -type f -iname "*$PALABRA*")

if [ -z "$RESULTADOS" ]; then
    echo "No se encontraron coincidencias."
else
    echo "$RESULTADOS"
fi
