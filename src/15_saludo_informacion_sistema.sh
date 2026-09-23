#!/bin/bash
###############################################################################
# Script: 15_saludo_informacion_sistema.sh
# Descripción: Script de bienvenida que muestra el usuario, el nombre
#              del equipo y la versión de Debian instalada.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./15_saludo_informacion_sistema.sh
###############################################################################

echo "=================================================="
echo " Bienvenido al sistema"
echo "=================================================="
echo "Usuario actual   : $(whoami)"
echo "Nombre del equipo: $(hostname)"
echo ""
echo "Versión de Debian:"
if [ -f /etc/os-release ]; then
    cat /etc/os-release | grep -E "^(NAME|VERSION)="
else
    echo "No se encontró el archivo /etc/os-release."
fi
