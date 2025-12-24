
# Clones or updates repositories related to VTK (Visual Toolkit).
Write-Host "`n`nCloning / updating repositories for VTK...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating VTK_activizdotnet:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_VTK_activizdotnet.ps1")

Write-Host "`nUpdating VTK_examples:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_VTK_examples.ps1")

Write-Host "`nUpdating VTK source repository:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_VTK_source.ps1")

Write-Host "  ... updating repos for VTK completed.`n`n"

