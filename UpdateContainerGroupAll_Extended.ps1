
# Clones or updates all containers contained in the current container of
# containers, plus extended repositories/containers within them.
Write-Host "`n`nCloning / updating contained repo containers with EXTENDED repos...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating all containers of IGLib-related repos with basic repos:`n"


Write-Host "`nUpdating iglibmodules container with basic IGLibCore repos:"
& $(Join-Path $scriptDir "./UpdateContainer_iglibmodules.ps1")
# Also update extended contained repos:
& $(Join-Path $scriptDir "./iglibmodules/UpdateRepos_Extended.ps1")
& $(Join-Path $scriptDir "./iglibmodules/UpdateReposLegacy_Extended.ps1")


Write-Host "`nUpdating GraphicsLibs3D container with basic repos:"
& $(Join-Path $scriptDir "./UpdateContainer_GraphicsLibs3D.ps1")
# Also update basic contained repos:
& $(Join-Path $scriptDir "./GraphicsLibs3D/GrLibUpdateRepoGroup_Extended.ps1")

Write-Host "`nUpdating otherIG_Recursive container of containers:"
& $(Join-Path $scriptDir "./UpdateContainer_otherIG_Recursive.ps1")

Write-Host "  ... updating IGLib-related containers of containers with extended repos completed.`n`n"

