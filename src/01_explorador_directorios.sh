#!/bin/bash
###############################################################################
# Script: 01_explorador_directorios.sh
# Descripción: Muestra la ruta actual y lista el contenido del directorio.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./01_explorador_directorios.sh [ruta_opcional]
###############################################################################

RUTA="${1:-.}"

if [ ! -d "$RUTA" ]; then
    echo "Error: la ruta '$RUTA' no existe o no es un directorio."
    exit 1
fi

echo "=================================================="
echo " Explorador de Directorios"
echo "=================================================="
echo "Ruta actual (pwd):"
pwd
echo ""
echo "Contenido de '$RUTA':"
ls -lh "$RUTA"
echo ""
echo "Total de elementos: $(ls "$RUTA" | wc -l)"
