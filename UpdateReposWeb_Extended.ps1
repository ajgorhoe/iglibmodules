
# Clones or updates the EXTENDED WEB repositories in iglibmodules/.
Write-Host "`n`nCloning / updating EXTENDED WEB repositories in iglibmodules/ ..."

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

# Cloning/updating BASIC WEB repositories:`n"
& $(join-path $scriptDir "UpdateReposWeb_Basic.ps1")

Write-Host "`n`nUpdating EXTENDED WEB repositories:`n"


# Updating nested web repositories within web/ajgorhoe.github.io:
Write-Host "`nUpdating extended web repositories within web/ajgorhoe.github.io:`n"

# Write-Host "`nUpdating web/ajgorhoe.github.io/test:"
# & $(Join-Path $scriptDir "web/ajgorhoe.github.io/UpdateRepo_test.ps1")

Write-Host "`nUpdating web/ajgorhoe.github.io/IGLibFrameworkCodedoc:"
& $(Join-Path $scriptDir "web/ajgorhoe.github.io/UpdateRepo_IGLibFrameworkCodedoc.ps1")



Write-Host "  ... updating EXTENDED repositoris in iglibmodules/ completed.`n`n"

