param (
    [string]$url = $( Read-Host "Input bilibili url" )
 )
$OutputVariable = .\annie.exe -i -c cookies.txt $url | out-string
Write-Host $OutputVariable