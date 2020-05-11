if (!([Security.Principal.WindowsPrincipal][Security.Principal.WindowsIdentity]::GetCurrent()).IsInRole([Security.Principal.WindowsBuiltInRole]::Administrator)) {
    Start-Process PowerShell -Verb RunAs "-NoProfile -ExecutionPolicy Bypass -Command `"cd '$pwd'; & '$PSCommandPath';`"";
    exit;
}

# fix Shift key toggling Cn/En fro MS wubi
$wubiAction = New-ScheduledTaskAction -Execute 'Powershell.exe' `
  -Argument "-NoProfile -WindowStyle Hidden -File $PSScriptRoot\wubi-no-shift.ps1"
$wubiTrigger = New-ScheduledTaskTrigger -AtLogOn
Register-ScheduledTask -Action $wubiAction -Trigger $wubiTrigger -TaskName "Wubi No Shift" -Description "Disable Shift key toggling CN/EN for MS Wubi" -RunLevel Highest