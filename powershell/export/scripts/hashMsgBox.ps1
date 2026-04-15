param(
    [Parameter(Mandatory)]
    [string]$Path,

    [Parameter(Mandatory)]
    [ValidateSet('MD5', 'SHA1', 'SHA256', 'SHA384', 'SHA512')]
    [string]$Algorithm
)

Add-Type -AssemblyName System.Windows.Forms
$hashVal = (Get-FileHash -LiteralPath $Path -Algorithm $Algorithm).Hash
[void][System.Windows.Forms.MessageBox]::Show("${Algorithm}: $hashVal")
