
# Clones or updates the learning repositories - iglearn/ and its embedded 
# repos like wiki.IGLib & learn_sluzba

# iglibmodules/
Write-Host "`n`nCloning / updating LEARNING repositories in iglibmodules/ ..."
Write-Host "Location: iglearn/ ..."

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"


# Update learning repo as part of IGLibBasic:
Write-Host "`nUpdating iglearn:"
& $(Join-Path $scriptDir "_scripts/UpdateRepo_iglearn.ps1")

Write-Host "`nUpdating iglearn's embedded repos:"
& $(Join-Path $scriptDir "iglearn/UpdateRepoGroup_OtherRepos.ps1")



Write-Host "  ... updating LEARNING repositoris in iglibmodules/ completed.`n`n"

