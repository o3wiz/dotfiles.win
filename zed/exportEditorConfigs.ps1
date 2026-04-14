Push-Location -Path $PSScriptRoot

$sharedDir = Join-Path -Path ".." -ChildPath "shared"
$scriptPath = Join-Path -Path $sharedDir -ChildPath "ExportDirectoryEntriesAsSymlinks.ps1"

$sourceDirectory = "export"
$destinationDirectory = Join-Path -Path $env:APPDATA -ChildPath "Zed"

& $scriptPath `
    -SourceDirectory $sourceDirectory `
    -DestinationDirectory $destinationDirectory `

Pop-Location
