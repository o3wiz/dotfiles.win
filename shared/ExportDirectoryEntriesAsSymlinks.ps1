param(
    [Parameter(Mandatory)]
    [string]$SourceDirectory,

    [Parameter(Mandatory)]
    [string]$DestinationDirectory
)

Get-ChildItem -Path $SourceDirectory | ForEach-Object {
    $destinationPath = Join-Path -Path $DestinationDirectory -ChildPath $_.Name
    if (Test-Path -LiteralPath $destinationPath)
    {
        Remove-Item -LiteralPath $destinationPath -Recurse -Force
    }
    New-Item -Force -ItemType SymbolicLink -Path $destinationPath -Target $_.FullName | Out-Null
}
