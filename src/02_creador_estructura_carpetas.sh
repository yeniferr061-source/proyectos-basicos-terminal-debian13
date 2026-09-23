#!/bin/bash
###############################################################################
# Script: 02_creador_estructura_carpetas.sh
# Descripción: Crea automáticamente una estructura básica de carpetas
#              para organizar un proyecto (docs, src, tests).
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./02_creador_estructura_carpetas.sh nombre_proyecto
###############################################################################

if [ -z "$1" ]; then
    echo "Error: debe indicar el nombre del proyecto."
    echo "Uso: $0 nombre_proyecto"
    exit 1
fi

NOMBRE_PROYECTO="$1"

mkdir -p "$NOMBRE_PROYECTO/docs"
mkdir -p "$NOMBRE_PROYECTO/src"
mkdir -p "$NOMBRE_PROYECTO/tests"

echo "Estructura creada exitosamente para '$NOMBRE_PROYECTO':"
find "$NOMBRE_PROYECTO" -type d
