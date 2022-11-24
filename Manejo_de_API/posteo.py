import requests
import json

#Nombre: Daniel Arreaga Escareño
#Matricula: 2029652

if __name__ == '__main__':
    url='http://httpbin.org/post'
    argumentos={'nombre':'Daniel','matricula':'','curso':'Programación para Ciberseguridad'} #Poner Matricula

    response= requests.post(url, params=argumentos)

    if response.status_code == 200:
        print(response.content)
