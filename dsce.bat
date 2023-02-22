@echo off
cls
timeout /t 1 /nobreak >nul
cd %~dp0
timeout /t 1 /nobreak >nul
taskkill /f /pid explorer.exe
cls
timeout /t 3 /nobreak >nul
cls
start explorer.exe
cls
timeout /t 1 /nobreak >nul
cls
taskkill /f /pid StudentUI
cls
taskkill /f /IM StudentUI
cls
taskkill /f /pid StudentUI.exe
cls
taskkill /f /IM StudentUI.exe
cls
PowerShell.exe -ExecutionPolicy Unrestricted -command "%~dp0\extra_safe_dsce.ps1"
cls
exit
