#Script para la transferencia de FTP
#Objetivo: Conectarse a servidor FTP y hacer upload de un archivo
#24/10/2022 - v1 Daniel Arreaga Escareño


#Importamos modulo FTP
from ftplib import FTP

#Estableciendo conexión a servidor
ftp = FTP("Aqui va la ip")

#Iniciamos sesión
ftp.login("usuario", "contraseña")

#Cambiamos de directorio
ftp.cwd("upload")

#Abrimos el archivo
with open("C:/ruta/ADVERTENCIA.txt", "rb") as text_file:
    #Exportamos el archivo, en este caso ADVERTENCIA.txt
    ftp.storlines("STOR ADVERTENCIA.txt", text_file)

#Cerramos la conexión FTP
ftp.quit()
