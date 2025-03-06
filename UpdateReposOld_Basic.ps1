
# Clones or updates the IGLib Frameworrk basic repositories in iglibmodules.
Write-Host "`n`nCloning / updating basic IGLib Framework repositories in iglibmodules ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"


# First, update group of IGLib basic repositories:
& $(join-path $scriptDir "UpdateRepos_Basic.ps1")


Write-Host "`nUpdating basic IGLibFramework repositories:`n"

Write-Host "`nUpdating iglib:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_iglib.ps1")

Write-Host "`nUpdating iglibexternal:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_iglibexternal.ps1")

Write-Host "`nUpdating igsolutions:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_igsolutions.ps1")


Write-Host "  ... updating extended IGLib Framework repositories complete.`n`n"

