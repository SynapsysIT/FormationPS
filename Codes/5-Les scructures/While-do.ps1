# un bloc While-Do permet d'�x�cuter des instructions tant qu'une condition est remplie


while($i -ge 0)
{    
    $i
    $i --
}


Start-Process notepad.exe
while (Get-Process notepad -ErrorAction SilentlyContinue)
{  
    Start-Sleep -Milliseconds 500
    Write-Host "Attente de fermeture de Notepad"
}
Write-Host "Notepad a �t� ferm�"


#Le bloc Do-While est identique mais v�rifie la condition � la fin, le bloc s'�x�cutera donc au minimum une fois.

$i = 10 
do {
 
    $i
    $i --

} while ($i -ge 0)

#Do-Until est identique mais s'�x�cutera jusqu'a ce que la condition soit vrai. Donc "Tant que" la condition est fausse.

Do {
    Start-Sleep -Milliseconds 500
    Write-Host "Attente de Ouverture de Notepad"
}
until (Get-Process notepad -ErrorAction SilentlyContinue)
