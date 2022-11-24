#30/09/2022 - Daniel Arreaga Escareño
# NOTA: Poner su ruta donde diga #ruta
Clear-Host
Write-Host "Bienvenido a un ejemplo de codificación/decodificación base64 usando powershell"-ForegroundColor Green
Write-Host "Codificando un archivo de texto"
#
#Se va a leer el contenido del archivo de texto
#
$inputfile = #ruta
$fc = Get-Content $inputfile
$GB = [System.Text.Encoding]::UTF8.GetBytes($fc)
$etext = [System.Convert]::ToBase64String($GB)
Write-Host "El contenido del archivo CODIFICADO es: " $etext -ForegroundColor Green
#
# Decodificando contento de un archivo
#
Write-Host "DECODIFICANDO el texto previo:"
[System.Text.Encoding]::ASCII.GetString([System.Convert]::FromBase64String($etext)) | Out-File -Encoding "ASCII" 'C:\Users\danie\OneDrive\Documentos\PS Scripts\decode_secret.txt'
$outfile2 = Get-Content #ruta
Write-Host "El texto decodificado es el siguiente:"-ForegroundColor Green
Write-Host "DECODIFICADO: " $outfile2
