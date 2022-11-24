# Daniel Arreaga Escareño - 2029652
# Fecha: 22/11/2022
#
# NOTA: Se debe cambiar la hora y ruta
#
$Path = (get-command powershell.exe).Path
$tarea=New-ScheduledTaskAction -Execute $Path -Argument 'C:\ruta\send_sysinfo.ps1' -WorkingDirectory "C:\Windows\System32"
$trigger=New-ScheduledTaskTrigger -Once -At 2:49pm

Register-ScheduledTask SENDDSYSINFO1 -RunLevel Highest -Trigger $trigger -Action $tarea -TaskPath "MisTareas"
