$profileDir = Split-Path -Path $PROFILE -Parent
Push-Location $profileDir

Get-ChildItem -Path $exportPath -Filter "*.ps1" `
| Where-Object { $_.FullName -ne $PROFILE } `
| ForEach-Object { . $_.FullName }

Pop-Location
