# Ensure proper directory
Set-Location $PSScriptRoot
Set-Location ..

# Remove all files/directories
git ls-files | ForEach-Object -Process {Remove-Item $_}
Remove-Item BepInEx -Recurse -Force
Remove-Item doorstop_libs -Recurse -Force
Remove-Item unstripped_corlib -Recurse -Force
Remove-Item nazarick_scripts -Recurse -Force
Remove-Item .git -Recurse -Force

Write-Output "`nFinished uninstall.`n"

# Prevent window closing
Read-Host -Prompt "Press Enter to exit."