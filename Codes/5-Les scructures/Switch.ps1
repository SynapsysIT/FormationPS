#Un bloc Switch permet de comparer une valeur � une liste de valeur. L'action associ� de sera �x�cut� � chaque fois que les valeurs seront �gales.

$value = "Second Condition"
switch -Wildcard ($Value)
{    
    '*Condition' { Write-host 'First Action' }    
    'Second Condition' { Write-host 'Second Action' }
    default {Write-host 'action par default'}
}


