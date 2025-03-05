
# Clones or updates the IGLib Frameworrk basic repositories in iglibmodules.
Write-Host "`n`nCloning / updating basic IGLib Framework repositories in iglibmodules ...`n"

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"


# Write-Host "`nUpdating basic IGLib Framework repositories:`n" # this output is already in script.
& $(join-path $scriptDir "UpdateRepos_Basic.ps1")


Write-Host "`nUpdating EXTENDED IGLib repositories:`n"

Write-Host "`nUpdating :"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_iglib.ps1")

Write-Host "`nUpdating iglibexternal:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_iglibexternal.ps1")

Write-Host "`nUpdating igsolutions:"
& $(Join-Path $scriptDir "_scripts/IGLibFramework/UpdateRepo_igsolutions.ps1")


Write-Host "  ... updating IGLibSandbox dependencies complete.`n`n"

