#CHERCHER UNE COMMANDE

Get-Command "Get-Process"
Get-Command *computer*

#OBTENIR DE L'AIDE SUR UNE COMMANDE

Get-Help "Get-Process" -Examples
Get-Help "Get-Process" -Online

#OBTENIR LES PROPRIETES ET LE METHODES D'UN OBJET

$Variable = "Texte"
$Variable | Get-Member

$Variable = 42
$Variable | Get-Member

$Variable = Get-Process explorer
$Variable | Get-Member
	
