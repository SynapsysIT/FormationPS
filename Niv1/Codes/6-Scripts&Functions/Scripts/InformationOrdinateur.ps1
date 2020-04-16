Param
(
  [String]$OutFile
)

$Nomordinateur = $env:COMPUTERNAME
$User = $env:USERNAME
$ComputerInfo = Get-WmiObject -class Win32_ComputerSystem
$Mem = [System.Math]::Round(($ComputerInfo.TotalPhysicalMemory)/1GB)
$Space = (Get-Volume C).SizeRemaining/1GB


#Export

$Info = [PSCustomObject]@{
  Ordinateur = $Nomordinateur
  User = $User
  Memoire = "$Mem"+" GB"
  "Espace C:" = "$Space"+" GB"
}  

$Info | Out-String


if ($OutFile)
{
 $Info | Out-String | Out-File $OutFile
 Invoke-Item $OutFile
}



