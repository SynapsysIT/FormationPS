$value = "Second Condition"

switch ($Value)
{    
    '*Condition' { Write-host 'First Action' }    
    'Second Condition' { Write-host 'Second Action' }
    'Second*' { Write-host 'Third Action' }   
}

if ($value -like "*Condition")
{
    Write-host 'First Action'
}
elseif ($value -eq 'Second Condition')
{
    Write-host 'Second Action' 
}
else
{
    Write-host 'action par default'
}


