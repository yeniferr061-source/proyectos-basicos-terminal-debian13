#!/bin/bash
###############################################################################
# Script: 04_eliminador_seguro_archivos.sh
# Descripción: Elimina un archivo solicitando confirmación previa del
#              usuario, para evitar borrados accidentales.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./04_eliminador_seguro_archivos.sh archivo_a_eliminar
###############################################################################

ARCHIVO="$1"

if [ -z "$ARCHIVO" ]; then
    echo "Uso: $0 archivo_a_eliminar"
    exit 1
fi

if [ ! -f "$ARCHIVO" ]; then
    echo "Error: el archivo '$ARCHIVO' no existe."
    exit 1
fi

read -p "¿Está seguro de eliminar '$ARCHIVO'? (s/n): " CONFIRMACION

if [[ "$CONFIRMACION" == "s" || "$CONFIRMACION" == "S" ]]; then
    rm -v "$ARCHIVO"
    echo "Archivo eliminado."
else
    echo "Operación cancelada. El archivo no fue eliminado."
fi
