#!/bin/bash
###############################################################################
# Script: 05_visor_contenido_archivos.sh
# Descripción: Muestra el contenido de un archivo de texto, permitiendo
#              elegir cuántas líneas iniciales visualizar.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./05_visor_contenido_archivos.sh archivo.txt
###############################################################################

ARCHIVO="$1"

if [ -z "$ARCHIVO" ] || [ ! -f "$ARCHIVO" ]; then
    echo "Error: debe indicar un archivo de texto existente."
    echo "Uso: $0 archivo.txt"
    exit 1
fi

read -p "¿Cuántas líneas desea visualizar? (Enter para ver todo): " LINEAS

if [ -z "$LINEAS" ]; then
    cat "$ARCHIVO"
else
    head -n "$LINEAS" "$ARCHIVO"
fi
