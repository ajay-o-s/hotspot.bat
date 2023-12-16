@echo off
setlocal enabledelayedexpansion

REM Define the registry key and value
set "regKey=HKEY_LOCAL_MACHINE\SOFTWARE\Policies\Microsoft\Windows\Network Connections"
set "regValue=NC_ShowSharedAccessUI"

REM Set the value data to 1 to enable Mobile Hotspot
set "valueData=1"

REM Add registry entry
reg add "%regKey%" /v "%regValue%" /t REG_DWORD /d %valueData% /f

echo Registry entry updated successfully to turn on Mobile Hotspot.

pause
