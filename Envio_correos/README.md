# Envío de correos
El script que está en esta carpeta nos permite enviar un correo mediante SMTP a un correo
especificado, en el cual podemos agregar fotos, asunto y demás
> El cuerpo del correo está escrito en HTML, y también debemos generar una key de nuestro correo para ingresarlo como contraseña
## Descripción
Mandar correos mediante formato HTML es una buena forma de poder darle forma, estilo y presentación a nuestros correos además de practicar este mismo lenguaje
de marcado

![la-importancia-de-un-dominio-de-correo-electronico-profesional_5f6bcc939c729-2209199380](https://user-images.githubusercontent.com/111472552/203878919-f7b60d9a-5fb5-40a0-af68-382dede819a8.jpg)
## Requerimientos
Para que el script funcione adecuadamente, necesitamos Python 3, además las siguientes librerías:
- smtplib
- ssl
- email
- email.mime.base
- email.mime.text
- email.mime.multipart
