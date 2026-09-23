#!/bin/bash
###############################################################################
# Script: 10_verificador_conexion_internet.sh
# Descripción: Verifica si hay conexión a internet haciendo ping a un
#              servidor externo.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./10_verificador_conexion_internet.sh [host_opcional]
###############################################################################

HOST="${1:-google.com}"

echo "Verificando conexión con $HOST..."

# -c 3: enviar solo 3 paquetes; -W 2: tiempo de espera de 2 segundos
if ping -c 3 -W 2 "$HOST" > /dev/null 2>&1; then
    echo "Conexión a internet: DISPONIBLE."
else
    echo "Conexión a internet: NO DISPONIBLE."
fi
