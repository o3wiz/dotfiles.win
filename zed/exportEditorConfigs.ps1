Push-Location -Path $PSScriptRoot

$sharedDir = Join-Path -Path ".." -ChildPath "shared"
$symlinkScriptPath = Join-Path -Path $sharedDir -ChildPath "ExportDirectoryEntriesAsSymlinks.ps1"
$copyScriptPath = Join-Path -Path $sharedDir -ChildPath "ExportDirectoryEntriesAsCopies.ps1"

$destinationDirectory = Join-Path -Path $env:APPDATA -ChildPath "Zed"

& $symlinkScriptPath `
    -SourceDirectory "export" `
    -DestinationDirectory $destinationDirectory `

& $copyScriptPath `
    -SourceDirectory "copy" `
    -DestinationDirectory $destinationDirectory `

Pop-Location
