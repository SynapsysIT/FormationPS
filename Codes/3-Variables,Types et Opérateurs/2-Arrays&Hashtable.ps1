#Arrays
<#
Un Arrays est une liste de valeur.
#>

$ArrayOfInts = 1,2,3,4 
$ArrayOfStrings = "Un","Deux","Trois","Quatre" 

$ArrayOfInts[1]
$ArrayOfStrings[3]

#Hashtables
<#
Une Hashtable est une structure de données semblable 
Ã  un tableau, sauf que vous stockez chaque valeur (objet) Ã  l'aide d'une clé. 
Il s'agit d'une table de données-clés / valeur.
#>

#Creation d'une hashtable
$TMNT = @{}

$Tortue = "Raphael"
$Arme = "Saïs"

$TMNT.Add($Tortue,$Arme)
$TMNT.Add("Donatello","Bo")
$TMNT.Add("Michelangelo","Nunchakus")

    