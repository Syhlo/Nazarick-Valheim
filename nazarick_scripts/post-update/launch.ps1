# Launch game
Write-Output "`nLaunching Valheim...`n"
Start-Process -FilePath "valheim.exe" -ArgumentList "-force-vulkan"
Write-Output "`nValheim Launched.`n"