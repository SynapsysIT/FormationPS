
#La boucle Foreach permet de r�it�rer une action pour chaque objet contenu dans une collection

$Files = Get-ChildItem "C:\Users\xeph\OneDrive - Synapsys\Formation Powershell\Codes\TESTS"

ForEach ($File in $Files) 
{    
    $NewName = $File.Name -replace "Fichier", "FichierRenomm�"
    Rename-Item -Path $File.FullName -NewName $NewName -WhatIf
}

#Le Foreach est un �quivalent du ForEach-Object sans l'utilisation du pipeline :

$Files | ForEach-Object {
    $NewName = $_.Name -replace "FichierRenomm�", "FichierEncoreRenomm�"
    Rename-Item -Path $_.FullName -NewName $NewName -WhatIf 
 } 


$Files = Get-ChildItem $env:TEMP | Sort-Object Length -Descending |Select-Object -First 10

foreach ($file in $files)
{
    $Size = $file.Length/1MB

    
}


#Nous pouvons cr�er un PSCustomobject via un ForEach
foreach ($Number in 1..10)
{
    [PSCustomObject]@{
        NomFichier = $file.Name
        X = "10"
        Egal = $Number*10
    }  
}



