param
(
    [Parameter(Mandatory=$true,Position=0)]
    [String]$computername,
    [Parameter(Mandatory=$true,Position=1)]
    [ipaddress]$IP
)

Write-Host "La variable computername est �gale a $computername"

Write-Host "Script Ex�cut�" -ForegroundColor DarkYellow