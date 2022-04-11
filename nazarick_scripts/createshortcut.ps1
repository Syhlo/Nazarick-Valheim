$DesktopPath = [Environment]::GetFolderPath("Desktop")
$WshShell = New-Object -comObject WScript.Shell

$Shortcut = $WshShell.CreateShortcut("$DesktopPath\Valheim - Nazarick.lnk")
$Shortcut.TargetPath = "powershell.exe"
$Shortcut.Arguments = "-ExecutionPolicy Bypass -File `"$PSScriptRoot/updater.ps1`""
$Shortcut.Save()