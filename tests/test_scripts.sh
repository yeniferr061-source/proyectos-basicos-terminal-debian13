#!/bin/bash
###############################################################################
# Script: test_scripts.sh
# Descripción: Pruebas básicas que verifican que todos los scripts del
#              proyecto tengan sintaxis válida y permisos de ejecución.
# Autor: Ingeniero Andrés Felipe Gutiérrez Rivera
# Uso: ./test_scripts.sh
###############################################################################

DIRECTORIO_SRC="../src"
FALLOS=0

echo "=================================================="
echo " Ejecutando pruebas sobre los scripts del proyecto"
echo "=================================================="

for script in "$DIRECTORIO_SRC"/*.sh; do
    NOMBRE=$(basename "$script")

    # Prueba 1: validar sintaxis con bash -n
    if bash -n "$script" 2>/dev/null; then
        echo "[OK]    Sintaxis válida   -> $NOMBRE"
    else
        echo "[FALLO] Sintaxis inválida -> $NOMBRE"
        FALLOS=$((FALLOS + 1))
    fi

    # Prueba 2: validar permisos de ejecución
    if [ -x "$script" ]; then
        echo "[OK]    Permiso de ejecución -> $NOMBRE"
    else
        echo "[FALLO] Sin permiso de ejecución -> $NOMBRE"
        FALLOS=$((FALLOS + 1))
    fi
done

echo "=================================================="
if [ "$FALLOS" -eq 0 ]; then
    echo "Resultado: todas las pruebas se ejecutaron correctamente."
    exit 0
else
    echo "Resultado: se detectaron $FALLOS fallo(s)."
    exit 1
fi
