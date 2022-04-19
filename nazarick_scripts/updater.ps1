# Ensure script is running in proper directory
Set-Location -Path $PSScriptRoot
Set-Location ..

# Update the game (ensure no user conflicts via git pull)
Write-Output "Updating Game...`n"
git stash
git pull
git stash pop
Write-Output "`nFinished update.`n"

# Launch game
Write-Output "`nLaunching Valheim...`n"
Start-Process -FilePath "valheim.exe" -ArgumentList "-force-vulkan"
Write-Output "`nValheim Launched.`n"