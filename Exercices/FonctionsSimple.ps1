function Incremential-File {
    [CmdletBinding()]
    param (
        [string]$Path,
        [string]$Name,
        [int]$Numbers
    )
    
    for ($i = 1; $i -le $Numbers; $i++) 
    {
        $FileName = "$Name"+"$i"+".txt"

        New-Item -Path $Path -Name $FileName -ItemType File
    }
    
}
