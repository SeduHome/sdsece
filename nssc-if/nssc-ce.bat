@echo off
cls
taskkill /f /pid explorer.exe
cls
timeout /t 2 /nobreak >nul
start explorer.exe
cls
timeout /t 3 /nobreak >nul
PowerShell.exe -ExecutionPolicy Unrestricted -command "%~dp0\nssc-esce.ps1"
exit