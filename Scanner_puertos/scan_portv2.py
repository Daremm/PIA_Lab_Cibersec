#Nombre: Daniel Arreaga Escareño
#Matricula: 2029652
#Fecha:31/Oct/22

import socket


def scan(addr, port):
    #Creando un nuevo socket
    socket_obj = socket.socket(socket.AF_INET, socket.SOCK_STREAM)

    #Estableciendo el timeout para el nuevo objeto tipo socket
    socket.setdefaulttimeout(1)

    #Conexión exitosa devuelve 0. Devuelve error en caso contrario
    result = socket_obj.connect_ex((addr,port)) #Direccion y puerto en tupla

    #Se cierra el objeto
    socket_obj.close()

    return result

# lista de puertos a escanear
ports=[21, 22, 25, 80]

# bucle por todas las ip del rango 192.x.x.*
for i in range(1,255):
    addr="192.x.x.{}".format(i) #Poner su ip
    for port in ports:
        result=scan(addr, port)
        if result==0:
            print(addr, port, "OK")
        else:
            print(addr, port, "Failed")
