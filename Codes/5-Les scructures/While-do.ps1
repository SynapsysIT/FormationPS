# un bloc While-Do permet d'éxécuter des instructions tant qu'une condition est remplie

$i = 10
while ($true)
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
Write-Host "Notepad a été fermé"


#Le bloc Do-While est identique mais vérifie la condition à la fin, le bloc s'éxécutera donc au minimum une fois.

do {
 
    Start-Sleep -Milliseconds 500
    Write-Host "Attente de fermeture de Notepad"

} while (Get-Process notepad -ErrorAction SilentlyContinue)

#Do-Until est identique mais s'éxécutera jusqu'a ce que la condition soit vrai. Donc "Tant que" la condition est fausse.

Do {
    Start-Sleep -Milliseconds 500
    Write-Host "Attente de Ouverture de Notepad"
}
until (Get-Process notepad -ErrorAction SilentlyContinue)
