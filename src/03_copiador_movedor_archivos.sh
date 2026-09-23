#!/bin/bash
###############################################################################
# Script: 03_copiador_movedor_archivos.sh
# Descripción: Copia o mueve un archivo entre dos carpetas, según la
#              operación que indique el usuario.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./03_copiador_movedor_archivos.sh [copiar|mover] archivo_origen carpeta_destino
###############################################################################

OPERACION="$1"
ORIGEN="$2"
DESTINO="$3"

if [ "$#" -ne 3 ]; then
    echo "Uso: $0 [copiar|mover] archivo_origen carpeta_destino"
    exit 1
fi

if [ ! -f "$ORIGEN" ]; then
    echo "Error: el archivo '$ORIGEN' no existe."
    exit 1
fi

if [ ! -d "$DESTINO" ]; then
    echo "Error: la carpeta destino '$DESTINO' no existe."
    exit 1
fi

case "$OPERACION" in
    copiar)
        cp -v "$ORIGEN" "$DESTINO"
        echo "Archivo copiado correctamente."
        ;;
    mover)
        mv -v "$ORIGEN" "$DESTINO"
        echo "Archivo movido correctamente."
        ;;
    *)
        echo "Operación no reconocida. Use 'copiar' o 'mover'."
        exit 1
        ;;
esac
