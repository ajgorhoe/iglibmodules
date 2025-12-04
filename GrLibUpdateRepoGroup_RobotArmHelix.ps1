
# Clones or updates repositories needed for RobotArmHelix project.
Write-Host "`n`nCloning / updating repositories for RobotArmHelix...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating RobotArmHelix:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_RobotArmHelix.ps1")

Write-Host "`nUpdating Helix Toolkit for RobotArmHelix:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_HelixToolkitForRobotArm.ps1")

Write-Host "  ... updating repos for RobotArmHelix completed.`n`n"

