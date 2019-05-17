###############################################################################################################
# Language     :  PowerShell 5.0
# Filename     :  
# Autor        :  Julien MAZOYER [jmazoyer@synapsys-it.com]
# Description  :  
###############################################################################################################
<#
    .SYNOPSIS
    
    .DESCRIPTION
    
    .EXAMPLE
        
    .EXAMPLE
    
    .LINK
    
#>

[CmdletBinding()]
param()

############################################################################
#VARIABLES
############################################################################
#Setup paths
$ScriptName = [io.path]::GetFileNameWithoutExtension($MyInvocation.MyCommand.Name)
$ScriptFolder = try {Split-Path -Parent $MyInvocation.MyCommand.Path -ErrorAction SilentlyContinue} catch {}

$PSVersionInstalled = $PSVersionTable.PSVersion.Major
$DocumentsFolder = [Environment]::GetFolderPath("MyDocuments")
$PSFolder = Join-Path $DocumentsFolder "\WindowsPowerShell"
$ModuleFolder = ($env:PSModulePath -split ";")[0]

$VSCodeConfigURL = "https://git.reyozam.xyz/Xeph/PSFormation/raw/master/InstallEnv/VSCodeSettings.json"
############################################################################
#FUNCTIONS
############################################################################
function Write-Step
{
    param (
        [Parameter(Mandatory = $true)][string]$Message,
        [Parameter(Mandatory = $false)][ValidateSet("Info", "Error", "Warn", "Success")][string]$Level = "Info",
        [switch]$TAB
    ) 

    $Line = ""
    if ($Tab) {$Line += "`t"}

    switch ($Level)
    {
        Info { $Line += "[-] " ; $Color = "White" }
        Error { $Line += "[x] " ; $Color = "Red" }
        Warn { $Line += "[!] " ; $Color = "DarkYellow" }
        Success { $Line += "[+] " ; $Color = "Green" }
    }

    $Line += $Message

    Write-Host $Line -ForegroundColor $Color
}
Function Test-Command
{

    Param ($command)

    try 
    {
        $null = Get-Command $command -ErrorAction Stop
        RETURN $true
    } 
    Catch 
    {
        RETURN $false
    } 

}

function Install-VSCode 
{
    if (Test-Command choco)
    {
        Write-Step "Install VSCode"
        cinst -y vscode
        refreshenv
        Write-Step "Install Powershell VSCode Extension" -TAB
        code --install-extension ms-vscode.PowerShell
        code --install-extension akamud.vscode-theme-onedark
        Write-Step "Download VSCode Settings" -TAB
        (new-object Net.WebClient).DownloadString($VSCodeConfigURL) | Out-File -FilePath  $env:APPDATA\Code\User\settings.json -Encoding utf8

    }
    else 
    {
        Write-Step "Chocolatey n'est pas installé" -Level Warn
    }

}
############################################################################
#EXECUTION
############################################################################
New-Item $profile -Force    -ErrorAction SilentlyContinue | Out-Null
# Install Chocolatey
if (Test-Command -command choco)
{
    Write-Step "Chocolatey déja installé" -Level Warn
}
else
{
    Write-Step "Installation de Chocolatey ..." -Level Info
    (iex ((new-object net.webclient).DownloadString('https://chocolatey.org/install.ps1')))>$null 2>&1
}

Import-Module "C:\ProgramData\chocolatey\helpers\chocolateyProfile.psm1"

Install-VSCode
######################################################################
#END
######################################################################
Write-Step "Finish !" -Level Success
