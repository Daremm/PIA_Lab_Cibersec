#!/bin/bash
#Daniel Arreaga Escareño
#15/10/2022

echo "===================="
echo "   Menú principal   "
echo "===================="
echo "1. Escaneo de red"
echo "2. Escaneo individual"
echo "3. Escaneo udp"
echo "4. Escaneo de script"
echo "5. Salir"
read -p "Elegir acción a ejecutar [1-5]: " c
case $c in
	1)
		read -p "Indique la subred a escanear: " subred
		nmap -sn $subred -oN Scan_subred_nmap;;
	2)
		read -p "Indique la red a escanear: " red
		nmap -v -A $red -oN Scan_red_nmap;;
	3)
		read -p "Indique la red para realizar el escaneo udp: " red
		nmap -sU $red -T5 -oN Scan_udp_nmap;;
	4)
		read -p "Indique el script que se utilizará: " script
		read -p "Indique la ip para realizar el escaneo: " red
		nmap --script $script $red -oN Scan_script_nmap;;
	5)
		echo "Saliendo del programa..." ; exit 0;;
esac
