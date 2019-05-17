@echo off
chcp 1252>nul
goto check_Permissions


:check_Permissions

    net session >nul 2>&1
    if %errorLevel% == 0 (

	PowerShell -NoProfile -NoExit -ExecutionPolicy Bypass -Command "iex ((New-Object System.Net.WebClient).DownloadString('https://git.reyozam.xyz/Xeph/PSFormation/raw/master/InstallEnv/InstallFormationEnv.ps1'))"

    ) else (
	COLOR 4E
	echo ###########################################################
    echo ERROR: Ce script doit etre lance en tant qu'Administrateur.
	echo ###########################################################
	pause >nul
    )

