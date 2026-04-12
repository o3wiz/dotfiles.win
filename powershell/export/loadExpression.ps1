Push-Location -Path $PSScriptRoot

$ompConfigFilePath = Join-Path -Path "config" -ChildPath "omp.json"
Invoke-Expression (& { (oh-my-posh init pwsh --config "$ompConfigFilePath" | Out-String) })
Invoke-Expression (& { (zoxide init powershell | Out-String) })

Pop-Location
