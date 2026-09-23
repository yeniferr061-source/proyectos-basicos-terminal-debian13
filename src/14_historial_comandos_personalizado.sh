#!/bin/bash
###############################################################################
# Script: 14_historial_comandos_personalizado.sh
# Descripción: Guarda en un archivo de texto los últimos N comandos
#              ejecutados en la sesión actual.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./14_historial_comandos_personalizado.sh cantidad archivo_salida
# Ejemplo: ./14_historial_comandos_personalizado.sh 20 mi_historial.txt
###############################################################################

CANTIDAD="${1:-10}"
ARCHIVO_SALIDA="${2:-historial.txt}"

# Validar que la cantidad sea numérica
if ! [[ "$CANTIDAD" =~ ^[0-9]+$ ]]; then
    echo "Error: la cantidad debe ser un número entero."
    exit 1
fi

history "$CANTIDAD" > "$ARCHIVO_SALIDA"
echo "Se guardaron los últimos $CANTIDAD comandos en '$ARCHIVO_SALIDA'."
echo "Nota: este script debe ejecutarse con 'source' para acceder al"
echo "historial de la sesión actual, ej: source 14_historial_comandos_personalizado.sh"
