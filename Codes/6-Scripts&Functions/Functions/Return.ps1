function Get-AdditionNoReturn
{
    param
    (
        [Parameter(Mandatory=$true,Position=0)]
        [int]$Number1,
        [Parameter(Mandatory=$true,Position=1)]
        [Int]$Number2
    )

    $result = $Number1 + $Number2
    Write-Host $result

} 




function Get-Addition
{
    param
    (
        [Parameter(Mandatory=$true,Position=0)]
        [int]$Number1,
        [Parameter(Mandatory=$true,Position=1)]
        [Int]$Number2
    )

    $result = $Number1 + $Number2
    return $result

} 