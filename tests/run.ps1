
Import-Module Pester

$rootFolderPath = (Join-Path (Split-Path $PSScriptRoot -Parent) "src")
$Params = @{
    OutputFile = "$($PSScriptRoot)\TestResults.xml"
    CodeCoverageOutputFileFormat = "JaCoCo"
    CodeCoverage = (Get-ChildItem $rootFolderPath -File -Recurse -Include "*.psm1").FullName
    CodeCoverageOutputFile = "$($PSScriptRoot)\CodeCoverage.xml"
}
Invoke-Pester @Params