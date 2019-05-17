$Objet = Get-Service "SCardSvr" #Récupération de l'object "Service Carte à Puce"

#Récupération Propriétés et des Méthodes
$Objet | Get-Member

#Propriété "immuable"
$Objet.Name

#Propriété dynamique
$Objet.Status

#Méthodes
$Objet.Start()
$Objet.Stop()