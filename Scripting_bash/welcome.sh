#!/bin/bash
# Script welcome.sh
# 27/09/2022 - Daniel Arreaga Escareño
#
echo "Hola ${LOGNAME}"
echo "Hoy es $(date)"
echo "Usuarios actuales conectados y sus procesos:"
w
