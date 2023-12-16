@echo off
setlocal enabledelayedexpansion

REM Define the registry key and value
set "regKey=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Network Connections"
set "regValue=NC_ShowSharedAccessUI"

REM Set the value data to 0
set "valueData=0"

REM Add registry entry
reg add "%regKey%" /v "%regValue%" /t REG_DWORD /d %valueData% /f

echo Registry entry added successfully.

pause
