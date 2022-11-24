$Path = (get-command powershell.exe).Path
$tarea=New-ScheduledTaskAction -Execute $Path -Argument 'C:\Users\danie\OneDrive\Documentos\PS Scripts\send_sysinfo.ps1' -WorkingDirectory "C:\Windows\System32"
$trigger=New-ScheduledTaskTrigger -Once -At 2:49pm

Register-ScheduledTask SENDDSYSINFO1 -RunLevel Highest -Trigger $trigger -Action $tarea -TaskPath "MisTareas"