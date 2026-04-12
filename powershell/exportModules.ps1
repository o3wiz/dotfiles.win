Push-Location -Path $PSScriptRoot

$modulesOutPath = Join-Path -Path "deps" -ChildPath "powershell-modules.csv"
Get-InstalledModule `
| Select-Object Name,Version `
| Export-Csv $modulesOutPath -NoTypeInformation

Pop-Location
