param (
    [string]$Path = $Pwd.Path
)

$Items = Get-ChildItem -Path $Path -Recurse
$Files = 0
$Folders = 0
$Exe = 0

foreach ($item in $Items) 
{
    
    if ($item.PsIsContainer)
    {
        $Folders ++
    }
    else 
    {
        if ($item.extension -eq ".exe")
        {
            $Exe ++
        }
        else 
        {
            $Files ++
        }
    }

}

$Result = @{Files = $Files; Folders = $Folders; Exe = $Exe}

return $Result
