
# Clones or updates the web container and BASIC web repositories in 

# iglibmodules/
Write-Host "`n`nCloning / updating BASIC web repositories in iglibmodules/ ..."

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"



# Clone/update web container:

Write-Host "`n`nUpdating the web CONTAINER repository:`n" 
& $(join-path $scriptDir "_scripts/web/UpdateRepo_web.ps1")



# Clone/update web repositories within web container:
Write-Host "`nUpdating web repositories within the container:`n"

Write-host "`nupdating web/ajgorhoe.github.io:"
& $(Join-Path $scriptDir "web/UpdateRepo_ajgorhoe.github.io.ps1")



# Updating nested web repositories within web/ajgorhoe.github.io:
Write-Host "`nUpdating nested web repositories within web/ajgorhoe.github.io:`n"

Write-Host "`nUpdating web/ajgorhoe.github.io/IGLibFramework:"
& $(Join-Path $scriptDir "web/ajgorhoe.github.io/UpdateRepo_IGLibFramework.ps1")

Write-Host "`nUpdating web/ajgorhoe.github.io/igor:"
& $(Join-Path $scriptDir "web/ajgorhoe.github.io/UpdateRepo_igor.ps1")

Write-Host "`nUpdating web/ajgorhoe.github.io/Inverse:"
& $(Join-Path $scriptDir "web/ajgorhoe.github.io/UpdateRepo_igor.ps1")

# Write-Host "`nUpdating web/ajgorhoe.github.io/Inverse:"
# & $(Join-Path $scriptDir "web/ajgorhoe.github.io/UpdateRepo_Inverse.ps1")


Write-Host "  ... updating BASIC WEB repositoris in iglibmodules/ completed.`n`n"

