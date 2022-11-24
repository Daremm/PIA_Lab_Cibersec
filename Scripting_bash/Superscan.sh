#!/bin/bash
# 27/09/2022 - Daniel Arreaga Escareño
# Ejemplo de Menu en BASH
#
date
    echo "---------------------------"
    echo "   Menu Principal"
    echo "---------------------------"
    echo "1. Net Discover"
    echo "2. Portscanv1"
    echo "3. Welcome"
    echo "4. Exit"
read -p "Opción  [ 1 - 4 ] " c
case $c in
        1) $HOME/Documents/netdiscover.sh;;
        2) $HOME/Documents/portscanv1.sh 192.168.74;;
        3) $HOME/Documents/welcome.sh;;
        4) echo "Bye!"; exit 0;;
esac
