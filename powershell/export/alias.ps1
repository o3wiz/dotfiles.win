function ~
{
    Set-Location -Path $env:USERPROFILE
}
function ..
{
    Set-Location -Path ..
}
Set-Alias np "$env:windir/notepad.exe" -Description "Windows Notepad"
