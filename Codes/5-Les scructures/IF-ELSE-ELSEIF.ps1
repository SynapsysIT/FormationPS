#Le blocs IF permet l'�x�cution d'un bloc si une condition est remplie.

$test = Get-Service spooler


if (Get-Process notepad -ErrorAction SilentlyContinue)
{
    Write-Host "Condition remplie" 
}


#On peut y rejoindre un bloc Else qui permettra d'�x�cuter du code si la condition IF n'est pas rempli.

if ($test -eq "Condition")
{
    Write-Host "Condition remplie" 
}
else
{
    Write-Host "Condition NON-remplie"
}

#Le bloc "Elseif" permet lui de controler une nouvelle condition si la premi�re n'est pas rempli.
$test ="Condition"
if (($test -ne "Truc"))
{
    Write-Host "IF Condition remplie" 
}
elseif ($test -eq "Condition")
{
    Write-Host "ELSEIF Condition remplie"
}


#Ces conditions peuvent �tre invers� en rajoutant l'op�rateur "-not" ou son alias "!" :

if (-not($test -eq "Condition")){...}



#Raccourci IF :

$boolean = $true
$string = "false" 


If($?)
{    
    Write-Host "Aucune erreur � la commande pr�c�dent"
}

if (Get-Process notepad)
{
    "Notepad est lanc�"
}


