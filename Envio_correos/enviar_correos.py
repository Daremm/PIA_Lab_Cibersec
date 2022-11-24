#Nombre: Daniel Arreaga Escareño
#Matricula: 2029652
#Fecha: 03/11/2022

import smtplib, ssl
import getpass

from email import encoders
from email.mime.base import MIMEBase
from email.mime.text import MIMEText
from email.mime.multipart import MIMEMultipart

sender_email = input("Correo del remitente: ")
receiver_email = input("Correo del destinatario: ")
password = getpass.getpass("Ingrese su password: ")

message = MIMEMultipart("alternative")
message["Subject"] = "Prueba de envio (script Python) - 2029652"
message["From"] = sender_email
message["To"] = receiver_email

html = """\
<html>
  <body>
    
    <p><strong> <h2> Practica 12 </h2> </strong> <br>
       Ejercicio de la practica 12 para envío de correos<br> 
       <strong> Alumno: </strong> Daniel Arreaga Escareño<br>
       <strong> Matricula: </strong>  2029652
    </p>
  </body>
</html>
"""

parte_html = MIMEText(html, 'html')
message.attach(parte_html)

#imagen
archivo = 'fcfm_cool.png'
with open(archivo, 'rb') as adjunto:
    contenido_adjunto = MIMEBase('application','octet-stream')
    contenido_adjunto.set_payload(adjunto.read())

encoders.encode_base64(contenido_adjunto)
contenido_adjunto.add_header(
    "Content-Disposition",
    f"attachment; filename= {archivo}"
)

message.attach(contenido_adjunto)
mensaje_final = message.as_string()

with smtplib.SMTP("smtp.gmail.com", 587) as server:
    server.ehlo()
    server.starttls()
    server.login(sender_email, password)
    server.sendmail(
        sender_email, receiver_email, message.as_string()
    )