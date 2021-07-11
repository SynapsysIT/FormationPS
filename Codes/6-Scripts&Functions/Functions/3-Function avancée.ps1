
Function Write-InColors {
	[CmdletBinding()]
	param(
		[Parameter(Mandatory=$True,ValueFromPipeline=$True,ValueFromPipelineByPropertyName=$True)]
		[string[]]$Name
	)

	BEGIN 
	{
		Write-Verbose "Debut du traitement"
	}
	PROCESS 
	{
		$AllColors = [Enum]::GetValues([ConsoleColor]) | Where-Object {$_ -ne "Black" }

		$Color = Get-Random -InputObject $AllColors
		Write-Verbose "Traitement de l'objet $Name"
		Write-Host $Name -ForegroundColor $Color	

	}
	END 
	{
		Write-Verbose "Fin du traitement"
	}
}


############################################################################



$Computers = "google.fr", "127.0.0.1", "25.98.74.10", "12.87.125.63"

$ComputersObject = foreach ($Computer in $Computers)
{
	[PSCustomObject]@{
        Name = $Computer
		OS = "Win10","WindowsServer2016","Windows 7","Windows Server 2008R2" | Get-Random
	}
}

$Computers = "google.fr", "127.0.0.1", "25.98.74.10", "12.87.125.63"

Function Ping-IP
{
    [CmdletBinding()]
    param(
        [Parameter(Mandatory = $True, ValueFromPipeline = $True, ValueFromPipelineByPropertyName = $false)]
		[Alias("Name")]
		[Alias("ServerName")]			
        [string[]]$computername
    )

    BEGIN {}
    PROCESS 
    {

        Write-Verbose "Ping de l'ordinateur $ComputerName"
        Test-Connection -ComputerName $computername -Count 1 -ErrorAction SilentlyContinue

    }
    END {}
}

