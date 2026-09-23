#!/bin/bash
###############################################################################
# Script: 11_reloj_fecha_pantalla.sh
# Descripción: Muestra la fecha y hora actuales del sistema en un
#              formato legible.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./11_reloj_fecha_pantalla.sh
###############################################################################

echo "=================================================="
echo " Fecha y Hora del Sistema"
echo "=================================================="
echo "Fecha completa : $(date '+%A, %d de %B de %Y')"
echo "Hora actual    : $(date '+%H:%M:%S')"
echo "Zona horaria   : $(date '+%Z')"
