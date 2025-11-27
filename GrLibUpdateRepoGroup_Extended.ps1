
# Clones or updates the EXTENDED GrLib repositories.
Write-Host "`n`nCloning / updating EXTENDED GrLib repositories ..."

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

# Write-Host "`n`nUpdating basic Graphic Lib. repositories:`n" # this output is already in the script.
& $(join-path $scriptDir "GrLibUpdateRepoGroup_Basic.ps1")

Write-Host "`nUpdating EXTENDED Graphic Lib. repositories...`n"


# Write-Host "`nUpdating HashForm:"
# & $(Join-Path $scriptDir "_scripts/UpdateRepo_HashForm.ps1")


# Write-Host "`nUpdating Code Documentation repositories in _doc:"

# Write-Host "`nUpdating _doc/codedoc:"
# & $(Join-Path $scriptDir "_doc/UpdateRepo_codedoc.ps1")

# Write-Host "`nUpdating _doc/CodeDocumentation:"
# & $(Join-Path $scriptDir "_doc/UpdateRepo_CodeDocumentation.ps1")



Write-Host "  ... updating EXTENDED Graphic Libs repositories completed.`n`n"

