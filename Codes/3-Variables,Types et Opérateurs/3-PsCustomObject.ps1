
#Creation PSCUSTOMOBJECT
$Object = [PSCustomObject]@{
    Computer = "HAL9000"
    OS = "Windows 3.11"
    Disks = "256Mo"
}


#Boucle PsCustomObject

$Result = for ($i = 0; $i -lt 30; $i++) {

    $Number1 = Get-Random -Minimum 1 -Maximum 100
    $Number2 = Get-Random -Minimum 1 -Maximum 100

    [PSCustomObject]@{
        Number1 = $Number1
        Number2 = $Number2
        Resultat = $Number1 * $Number2
    }  
    
}

