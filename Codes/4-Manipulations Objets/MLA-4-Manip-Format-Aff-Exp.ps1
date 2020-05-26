## On commence par recuperer la liste des services en cours sur notre poste

Get-Service

## Ce resultat nous renvoie très simplement 
## - L'etat sur service
## - Le nom du service
## - La desciption du service
## 
## Mais il ne s'agit la que des informations "basiques" renvoyees par la commande
## Il est possible (lorsqu'elles existent) d'en avoir bien plus.
##
## Pour savoir si c'est le cas, un petit Get-Member

Get-Service | Get-Member

## Et pour les afficher

Get-Service | Select-Object *

## Ce caractere spécial va demander l'affichage de l'ensemble des proprietes de la commande

## Aparté
## Dans ce genre de cas, l'affichage peut devenir tres vite complique a lire
## Il est alors possible de formater la sortie selon 3 commandes existantes (Il en existe d'autres, mais ce sont les 3 principales) :
# [...] | Format-Custom
# [...] | Format-List
# [...] | Format-Table
## Par defaut, dans ce genre de cas, avec beaucoup de proprietes a afficher, le Format-List est utilise par defaut dans PowerShell

Get-Service | Select-Object *
Get-Service | Select-Object * | Format-List

## Mais il est alors complique de lire cela simplement.
## Nous pouvons donc utiliser par exemple le Format-Table

Get-Service | Select-Object * | Format-Table

## Ce qui rend les choses tout de meme plus simple a lire

## Pour revenir a notre Select-Object, il est egalement possible d'indiquer au Select-Object quel(s) element(s) nous voulons recuperer

Get-Service | Select-Object Name, Status, StartType,CanStop

## (Peu d'informations a remonter, donc Format-Table par default ^__^)

## Maintenant que j'ai cette liste, je me dis que j'aimerais ne lister que les services etant en etat demarres
## Et ca tombe bien, il y a une colonne pour ca !
## Nous allons donc voir la commande Where-Object
## Celle-ci nous permet (beaucoup de chose) entre autre de filtrer sur certains critères

Get-Service | Select-Object Name, Status, StartType,CanStop | Where-Object {$_.Status -eq 'Running'}

## Le test du Where-Object se fait entre {...}
## Le symbole $_ correspond a l'object en cours, c'est a dire que j'applique cela sur l'ensemble du resultat etant present avant le pipeline
## Et sur cet objet, je vais interroger la propriete Status afin de ne recuperer que ceux egale a Running

## Ok, bien, mais je voudrais aussi que cette liste soit trie dans un ordre precis, par exemple par le mode de demarrage ...
## Bien, voyons le Sort-Object

Get-Service | Select-Object Name, Status, StartType,CanStop | Where-Object {$_.Status -eq 'Running'} | Sort-Object StartType

## PArfait ! 
## Ah nan, on a bien la liste des services, actuellement en cours, trie par type de demarrage, mais pas par ordre alphabetique ...
## Et bien on ajoute une seconde propriete de tri sur le nom

Get-Service | Select-Object Name, Status, StartType,CanStop | Where-Object {$_.Status -eq 'Running'} | Sort-Object StartType,Name

## La on commence a avoir quelque chose de correct !

## Et si dans ce resultat, on desirait maintenant separer les services en fonction de la possibilite de les arreter ou non ?

Get-Service | Select-Object Name, Status, StartType,CanStop | Where-Object {$_.Status -eq 'Running'} | Sort-Object StartType,Name | Group-Object CanStop

## Nous obtenons alors un objet de type tableau contenant les services, demarres, trier par orbre alphabetique et par type de demarrage
## Avec une ligne contenant les services pouvants etre arreter et une seconde pour ceux ne pouvant l'etre

## S'pas mal nan ?

## On va prendre un autre environemment de travail pour le dernier exemple.
## Disons que nous avons une arborescence de repertoire et que nous desirons connaitre le poids de chaque

