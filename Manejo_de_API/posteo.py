import requests
import json

#Nombre: Daniel Arreaga Escareño
#Matricula: 2029652

if __name__ == '__main__':
    url='http://httpbin.org/post'
    argumentos={'nombre':'Daniel','matricula':'2029652','curso':'Programación para Ciberseguridad'}

    response= requests.post(url, params=argumentos)

    if response.status_code == 200:
        print(response.content)