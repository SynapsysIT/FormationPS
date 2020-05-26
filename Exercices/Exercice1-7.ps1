
Get-Command *Disk*
Get-help "Get-Disk"
$Disk = Get-Disk -Number 0
$Disk | Get-Member


$Object = [PSCustomObject] @{
    Nom = "Mazoyer"
    Prenom = "Julien"
    Age = 33
}

Write-Host "Bonjour, je m'apelle $($Object.Prenom) $($Object.Nom) et j'ai $($Object.Age) ans"





$Phrase = "Ce ne sont pas les androids que vous recherchez"

$Phrase = $Phrase -replace "e", "3"
$Phrase = $Phrase -split " "
$Phrase = $Phrase[2]
$Phrase.ToUpper()



Get-Service -Name Win*
Get-Service -Name Win* | Select-Object Status, Name, DisplayName, StartType


Get-EventLog -LogName System -Newest 10


Get-Process | Sort-Object CPU -Descending | Select-Object -First 10


$Date = (Get-Date).AddDays(-30)
Get-ChildItem -Path $env:TEMP | Where-Object {$_.LastWriteTime -gt $Date}