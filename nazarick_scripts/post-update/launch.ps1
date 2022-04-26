$steam = Get-Process steam -ErrorAction SilentlyContinue

while(!$steam) {
	# Alert user that steam is not launched
	Write-Output "`nThis game requires Steam to be running."

	# Prevent window closing
	Read-Host -Prompt "Press Enter once Steam is running. "

	# Refresh variable
	$steam = Get-Process steam -ErrorAction SilentlyContinue
}

# Launch game
Write-Output "`nLaunching Valheim...`n"
Start-Process -FilePath "valheim.exe"
Write-Output "`nValheim Launched.`n"