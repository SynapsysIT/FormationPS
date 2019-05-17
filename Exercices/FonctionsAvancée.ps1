
Function Get-DiskUsage {
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$True,
				   ValueFromPipeline=$True,
				   ValueFromPipelineByPropertyName=$True)]
        [int64]$SizeRemaining,
        
        [Parameter(Mandatory=$True,
				   ValueFromPipeline=$True,
				   ValueFromPipelineByPropertyName=$True)]
        [int64]$Size,
        
        [Parameter(Mandatory=$True,
				   ValueFromPipeline=$True,
				   ValueFromPipelineByPropertyName=$True)]
        [char]$DriveLetter
	)

	BEGIN 
	{
        
	}
	PROCESS 
	{
        if ($size -ne 0)
        {
            $UsedSpace = ($SizeRemaining/$Size)*100 
        }
        

        [PSCustomObject]@{
            DriveLetter = $DriveLetter
            UsedSpace = $UsedSpace
        } 

        
	}
    END 
    {
        
    }
}