#Le blocs IF permet l'éxécution d'un bloc si une condition est remplie.

$test = Get-Service spooler


if (Get-Process notepad -ErrorAction SilentlyContinue)
{
    Write-Host "Condition remplie" 
}


#On peut y rejoindre un bloc Else qui permettra d'éxécuter du code si la condition IF n'est pas rempli.

if ($test -eq "Condition")
{
    Write-Host "Condition remplie" 
}
else
{
    Write-Host "Condition NON-remplie"
}

#Le bloc "Elseif" permet lui de controler une nouvelle condition si la première n'est pas rempli.
$test ="Condition"
if (($test -ne "Truc"))
{
    Write-Host "IF Condition remplie" 
}
elseif ($test -eq "Condition")
{
    Write-Host "ELSEIF Condition remplie"
}


#Ces conditions peuvent être inversé en rajoutant l'opérateur "-not" ou son alias "!" :

if (-not($test -eq "Condition")){...}



#Raccourci IF :

$boolean = $true
$string = "false" 


If($?)
{    
    Write-Host "Aucune erreur à la commande précédent"
}

if (Get-Process notepad)
{
    "Notepad est lancé"
}


