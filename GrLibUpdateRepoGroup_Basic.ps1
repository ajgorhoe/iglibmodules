
# Clones or updates the basic Graphic Lib repositories in iglibmodules.
Write-Host "`n`nCloning / updating BASIC Graphic Lib. repositories ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

# Write-Host "`nUpdating BASIC IGLib repositories:`n"

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating RobotArmHelix:"
& $(Join-Path $scriptDir "./GrLibUpdateRepoGroup_RobotArmHelix.ps1")

Write-Host "`nUpdating Helix Toolkit:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_HelixToolkit.ps1")



Write-Host "  ... updating basic Graphic Lib repositories completed.`n`n"

