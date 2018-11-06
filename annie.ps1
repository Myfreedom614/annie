param (
    [string]$url = $( Read-Host "Input bilibili url" )
 )
chcp 65001 | Out-Null 
$OutputVariable = .\annie.exe -i -c cookies.txt $url | out-string
Write-Host $OutputVariable