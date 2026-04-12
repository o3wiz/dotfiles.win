Push-Location -Path $PSScriptRoot

# install winget dependencies
$wingetImportFile = Join-Path -Path "deps" -ChildPath "winget.packs.json"
winget import --import-file $wingetImportFile --accept-package-agreements --accept-source-agreements

# install modules
$powershellModulesFile = Join-Path -Path "deps" -ChildPath "powershell-modules.csv"
Import-Csv $powershellModulesFile | ForEach-Object {
    Install-Module -Name $_.Name -RequiredVersion $_.Version -Scope CurrentUser -Force
}

& .\exportProfileFiles.ps1

Pop-Location
