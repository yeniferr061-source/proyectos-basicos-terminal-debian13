#!/bin/bash
###############################################################################
# Script: 12_creador_archivos_vacios_lote.sh
# Descripción: Crea varios archivos vacíos numerados automáticamente,
#              usando un bucle for.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./12_creador_archivos_vacios_lote.sh cantidad nombre_base extension
# Ejemplo: ./12_creador_archivos_vacios_lote.sh 5 archivo txt
###############################################################################

CANTIDAD="$1"
NOMBRE_BASE="${2:-archivo}"
EXTENSION="${3:-txt}"

# Validar que la cantidad sea un número entero positivo
if ! [[ "$CANTIDAD" =~ ^[0-9]+$ ]] || [ "$CANTIDAD" -eq 0 ]; then
    echo "Error: debe indicar una cantidad numérica mayor que cero."
    echo "Uso: $0 cantidad nombre_base extension"
    exit 1
fi

for ((i=1; i<=CANTIDAD; i++)); do
    touch "${NOMBRE_BASE}${i}.${EXTENSION}"
    echo "Creado: ${NOMBRE_BASE}${i}.${EXTENSION}"
done
