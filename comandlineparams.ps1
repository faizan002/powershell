 param (
    [string]$server = "http://defaultserver",
    [Parameter(Mandatory=$true)][string]$username = "",
    [string]$password = "nothing"
 )

 Write-Output "$server $username $password"