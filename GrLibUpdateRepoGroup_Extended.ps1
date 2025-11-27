
# Clones or updates the EXTENDED GrLib repositories.
Write-Host "`n`nCloning / updating EXTENDED Graphic Lib. repositories ..."

# Get the script directory such that relative paths can be resolved:
$scriptPath = $MyInvocation.MyCommand.Path
$scriptDir = Split-Path $scriptPath -Parent
$scriptFilename = [System.IO.Path]::GetFileName($scriptPath)

Write-Host "Script directory: $scriptDir"

# Write-Host "`n`nUpdating basic Graphic Lib. repositories:`n" # this output is already in the script.
& $(join-path $scriptDir "GrLibUpdateRepoGroup_Basic.ps1")

Write-Host "`nUpdating EXTENDED Graphic Lib. repositories...`n"


Write-Host "`nUpdating Stride:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Stride.ps1")


Write-Host "`n`nUpdating various Evergine Demos:"

Write-Host "`nUpdating Evergine Automotive Demo:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Evergine_AutomotiveDemo.ps1")

Write-Host "`nUpdating Evergine Dicom Demo:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Evergine_DicomDemo.ps1")

Write-Host "`nUpdating Evergine Digital Twin Demo:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Evergine_DigitalTwinDemo.ps1")

Write-Host "`nUpdating Evergine Gauss Splatting Demo:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Evergine_GaussianSplattingDemo.ps1")

Write-Host "`nUpdating Evergine Mixed Reality Toolkit:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Evergine_MixedRealityToolkit.ps1")

Write-Host "`nUpdating Evergine Runtime Lab:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Evergine_RuntimeLab.ps1")

Write-Host "`nUpdating Evergine UI Windows Systems Demo:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Evergine_UIWindowSystemsDemo.ps1")

Write-Host "`nUpdating Evergine XR Sample:"
& $(Join-Path $scriptDir "./GrLibUpdateRepo_Evergine_XRSample.ps1")



# Write-Host "`nUpdating Code Documentation repositories in _doc:"

# Write-Host "`nUpdating _doc/codedoc:"
# & $(Join-Path $scriptDir "_doc/UpdateRepo_codedoc.ps1")

# Write-Host "`nUpdating _doc/CodeDocumentation:"
# & $(Join-Path $scriptDir "_doc/UpdateRepo_CodeDocumentation.ps1")



Write-Host "  ... updating EXTENDED Graphic Libs repositories completed.`n`n"

