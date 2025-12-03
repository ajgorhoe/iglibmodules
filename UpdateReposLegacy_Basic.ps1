
# Clones or updates the basic IGLib Frameworrk repositories in iglibmodules.
Write-Host "`n`nCloning / updating basic IGLib Framework repositories in iglibmodules ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

Write-Host "`nUpdating iglib:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_iglib.ps1")

Write-Host "`nUpdating iglibexternal:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_iglibexternal.ps1")

Write-Host "`nUpdating igsolutions:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_igsolutions.ps1")


# Finally, also update the group of IGLib basic repositories:
Write-Host "`nUpdating basic IGLib repositories via UpdateRepos_Basic.ps1:`n"

& $(join-path $scriptDir "UpdateRepos_Basic.ps1")


Write-Host "  ... updating basic IGLib Framework repositories completed.`n`n"

