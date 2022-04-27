# The following scripts run after updater.ps1

# Ensure steam is running
& "$PSScriptRoot\post-update\steamchecker.ps1"

# Launch game
& "$PSScriptRoot\post-update\launch.ps1"

# Stall cmd window for 30s
& "$PSScriptRoot\post-update\stall.ps1"
