function Write-Presentation2
{
    param
    (
        [Parameter(Mandatory=$true,Position=0)]
        [String]$name,
        [Parameter(Mandatory=$true,Position=1)]
        [ipaddress]$IP
    )

   Write-host "Bonjour $name, Ton IP $age ans"

} 