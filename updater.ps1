# Ensure script is running in script directory
Set-Location -Path $PSScriptRoot

# Update the game (ensure no user conflicts via git pull)
Write-Output "Updating Game...`n"
git stash
git pull
git stash pop
Write-Output "`nFinished update.`n"

# Launch game
Write-Output "`nLaunching Valheim...`n"
Start-Process -FilePath "valheim.exe"
Write-Output "`nValheim Launched.`n"