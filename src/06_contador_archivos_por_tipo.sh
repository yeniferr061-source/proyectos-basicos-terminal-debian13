#!/bin/bash
###############################################################################
# Script: 06_contador_archivos_por_tipo.sh
# Descripción: Cuenta cuántos archivos de una extensión específica hay
#              dentro de una carpeta.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./06_contador_archivos_por_tipo.sh carpeta extension
# Ejemplo: ./06_contador_archivos_por_tipo.sh . txt
###############################################################################

CARPETA="${1:-.}"
EXTENSION="$2"

if [ -z "$EXTENSION" ]; then
    echo "Uso: $0 carpeta extension"
    echo "Ejemplo: $0 . txt"
    exit 1
fi

if [ ! -d "$CARPETA" ]; then
    echo "Error: la carpeta '$CARPETA' no existe."
    exit 1
fi

# Contar archivos que terminan en la extensión indicada
CANTIDAD=$(ls "$CARPETA" 2>/dev/null | grep -c "\.${EXTENSION}$")

echo "Archivos con extensión .$EXTENSION en '$CARPETA': $CANTIDAD"
