
# Clones or updates the EXTENDED IGLib repositories in iglibmodules/.
Write-Host "`n`nCloning / updating EXTENDED IGLib repositories in iglibmodules/ ..."

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

# Write-Host "`n`nUpdating the Web container repository:`n" 
& $(join-path $scriptDir "_scripts/web/UpdateRepo_web.ps1")

Write-Host "`nUpdating nested web reposittories:`n"

Write-host "`nupdating web/ajgorhoe.github.io/:"
& $(Join-Path $scriptDir "web/UpdateRepo_ajgorhoe.github.io.ps1")


Write-Host "`nUpdating web/ajgorhoe.github.io/IGLibFramework/:"
& $(Join-Path $scriptDir "./web/ajgorhoe.github.io/UpdateModule_IGLibFramework.ps1")

# Write-Host "`nUpdating IGLibScriptsEXP:"
# & $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibScriptsEXP.ps1")



Write-Host "  ... updating EXTENDED repositoris in iglibmodules/ completed.`n`n"

