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
    Copy-Item -LiteralPath $_.FullName -Destination $destinationPath -Recurse -Force
}
