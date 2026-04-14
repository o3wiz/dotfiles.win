Push-Location -Path $PSScriptRoot

# install winget dependencies
$wingetImportFile = Join-Path -Path "deps" -ChildPath "winget.packs.json"
winget import --import-file $wingetImportFile --accept-package-agreements --accept-source-agreements --no-upgrade

& .\exportEditorConfigs.ps1

Pop-Location
