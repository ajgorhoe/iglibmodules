
# Clones or updates all containers contained in the current container of
# containers repositort.
Write-Host "`n`nCloning / updating all EMPTY containers...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating all EMPTY containers of IGLib-related repos:`n"


Write-Host "`nUpdating iglibmodules container:"
& $(Join-Path $scriptDir "./UpdateContainer_iglibmodules.ps1")

Write-Host "`nUpdating GraphicsLibs3D container:"
& $(Join-Path $scriptDir "./UpdateContainer_GraphicsLibs3D.ps1")

Write-Host "`nUpdating otherIG_Recursive container of containers:"
& $(Join-Path $scriptDir "./UpdateContainer_otherIG_Recursive.ps1")

Write-Host "  ... updating empty IGLib-related containers of containers completed.`n`n"

