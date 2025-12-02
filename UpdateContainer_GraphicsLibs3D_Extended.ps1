
# Clones or updates GraphicsLibs3D with basic repositories.
Write-Host "`n`nCloning / updating GraphicsLibs3D with basic repositories ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating GraphicsLibs3D container repo:"
& $(Join-Path $scriptDir "UpdateContainer_GraphicsLibs3D.ps1")


Write-Host "`nUpdating BASIC repositories in the container:`n"
& $(Join-Path $scriptDir "./GraphicsLibs3D/GrLibUpdateRepoGroup_Basic.ps1")


Write-Host "`nUpdating extended repositories in the container:`n"
& $(join-path $scriptdir "./graphicslibs3d/grlibupdateRepoGroup_Extended.ps1")


Write-Host "  ... updating basic repositoris in GraphicsLibs3D/ completed.`n`n"

