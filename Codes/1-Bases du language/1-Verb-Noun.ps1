#Récupération des Verb "officiel"
Get-Verb

## Nous pouvons par exemple demander a recuperer la liste des services en cours
Get-Service

## Ce sur quoi nous pouvons egalement appliquer certains filtres via des methodes ou proprietes inherente a la commande
Get-Service -Name "*net*"

#Composition Exemple d'une commande
Get-Service -Name Dnscache

Get-Process -Name svchost

Get-ChildItem -Path C:\Windows -File
Get-ChildItem -Path C:\Windows -Directory