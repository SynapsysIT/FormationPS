function Write-Presentation2
{
    param
    (
        [Parameter(Mandatory=$true,Position=0)]
        [String]$name,
        [Parameter(Mandatory=$true,Position=1)]
        [Int]$age
    )

   Write-host "Bonjour $name, Tu as $age ans"

} 