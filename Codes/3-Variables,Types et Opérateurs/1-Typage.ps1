$Variable = "1"

$Variable | Get-Member

$Variable = 1

$Variable | Get-Member

#=================================================

#Forcer le typage
[string]$Variable = 1
[int]$Variable = "1"


#Type Char
[char]$Char = 0201

#Type Date
[datetime]$variable = "10/12/1984"


#=================================================

#Le résultat d'une commande peut etre enregistré dans une commande
$Process = Get-Process


