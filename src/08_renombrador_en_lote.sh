#!/bin/bash
###############################################################################
# Script: 08_renombrador_en_lote.sh
# Descripción: Agrega un prefijo a todos los archivos de una carpeta,
#              recorriéndolos mediante un bucle for.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./08_renombrador_en_lote.sh carpeta prefijo
###############################################################################

CARPETA="$1"
PREFIJO="$2"

if [ -z "$CARPETA" ] || [ -z "$PREFIJO" ]; then
    echo "Uso: $0 carpeta prefijo"
    exit 1
fi

if [ ! -d "$CARPETA" ]; then
    echo "Error: la carpeta '$CARPETA' no existe."
    exit 1
fi

# Recorrer cada archivo de la carpeta y renombrarlo con el prefijo
for archivo in "$CARPETA"/*; do
    if [ -f "$archivo" ]; then
        NOMBRE_BASE=$(basename "$archivo")
        mv "$archivo" "$CARPETA/${PREFIJO}_${NOMBRE_BASE}"
        echo "Renombrado: $NOMBRE_BASE -> ${PREFIJO}_${NOMBRE_BASE}"
    fi
done
