$Objet = Get-Service "SCardSvr" #R�cup�ration de l'object "Service Carte � Puce"

#R�cup�ration Propri�t�s et des M�thodes
$Objet | Get-Member

#Propri�t� "immuable"
$Objet.Name

#Propri�t� dynamique
$Objet.Status

#M�thodes
$Objet.Start()
$Objet.Stop()