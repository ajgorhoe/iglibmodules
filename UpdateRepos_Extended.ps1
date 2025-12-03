
# Clones or updates the EXTENDED IGLib repositories in iglibmodules/.
Write-Host "`n`nCloning / updating EXTENDED IGLib repositories in iglibmodules/ ..."

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

# Calling the script for updating basic repositories:
& $(join-path $scriptDir "UpdateRepos_Basic.ps1")

Write-Host "`nUpdating EXTENDED IGLib repositories...`n"

Write-Host "`nUpdating IGLibEventAggregator:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibEventAggregator.ps1")

Write-Host "`nUpdating HashForm:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_HashForm.ps1")

# Write-Host "`nUpdating IGLibScriptsPS:"
# & $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibScriptsPS.ps1")

# Write-Host "`nUpdating IGLibScriptsEXP:"
# & $(Join-Path $scriptDir "_scripts/UpdateRepo_IGLibScriptsEXP.ps1")


Write-Host "`nUpdating Code Documentation repositories in _doc:"

Write-Host "`nUpdating _doc/codedoc:"
& $(Join-Path $scriptDir "_doc/UpdateRepo_codedoc.ps1")

Write-Host "`nUpdating _doc/CodeDocumentation:"
& $(Join-Path $scriptDir "_doc/UpdateRepo_CodeDocumentation.ps1")




Write-Host "  ... updating EXTENDED repositories in iglibmodules/ completed.`n`n"

