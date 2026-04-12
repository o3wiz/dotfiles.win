Push-Location -Path $PSScriptRoot

$exportDir = "export"
$dirEntries = Get-ChildItem -Path $exportDir
$profileDir = Split-Path -Path $PROFILE -Parent
$dirEntries | ForEach-Object {
    $destPath = Join-Path -Path $profileDir -ChildPath $_.Name
    New-Item -Force -ItemType SymbolicLink -Path $destPath -Target $_.FullName
}

Pop-Location
