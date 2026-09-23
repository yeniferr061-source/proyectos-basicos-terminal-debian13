#!/bin/bash
###############################################################################
# Script: 13_comprobador_permisos.sh
# Descripción: Muestra los permisos de un archivo o carpeta y explica
#              su significado (lectura, escritura, ejecución).
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./13_comprobador_permisos.sh archivo_o_carpeta
###############################################################################

ELEMENTO="$1"

if [ -z "$ELEMENTO" ] || [ ! -e "$ELEMENTO" ]; then
    echo "Error: debe indicar un archivo o carpeta existente."
    echo "Uso: $0 archivo_o_carpeta"
    exit 1
fi

echo "Permisos de '$ELEMENTO':"
ls -ld "$ELEMENTO"
echo ""
echo "Explicación de los permisos (formato rwxrwxrwx):"
echo "  Posiciones 1-3: permisos del propietario"
echo "  Posiciones 4-6: permisos del grupo"
echo "  Posiciones 7-9: permisos de otros usuarios"
echo "  r = lectura (read), w = escritura (write), x = ejecución (execute)"
