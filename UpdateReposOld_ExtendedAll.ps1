
# Clones or updates the IGLib Framework ALL repositories in iglibmodules.
Write-Host "`n`nCloning / updating ALL IGLib Framework repositories in iglibmodules ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"


# First, update group of IGLib Framework's extended repositories.
# This will also update IGLib basic and Framework extended repositories
# (scripts UpdateRepos_Basic.ps1 and )
& $(join-path $scriptDir "UpdateReposOld_Extended.ps1")


Write-Host "`nUpdating extended-all IGLibFramework repositories:`n"

Write-Host "`nUpdating unittests:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_unittests.ps1")

Write-Host "`nUpdating igtest:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_igtest.ps1")



Write-Host "  ... updating all IGLib Framework repositories complete.`n`n"

