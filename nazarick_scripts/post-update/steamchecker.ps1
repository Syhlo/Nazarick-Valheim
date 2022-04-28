Write-Output "`n[ Checking if Steam is running... ]`n"
$steam = Get-Process steam -ErrorAction SilentlyContinue

while(!$steam) {
	# Alert user that steam is not launched
	Write-Output "This game requires Steam to be running."

	# Prevent window closing
	Read-Host -Prompt "Press Enter once Steam is running.`n"

	# Refresh variable
	$steam = Get-Process steam -ErrorAction SilentlyContinue
}

if ($steam) {
	Write-Output "Steam is running."
}