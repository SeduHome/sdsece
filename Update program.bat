@echo off
cls
color 11
cls
type %~dp0\nssc-if\nssc-ut.txt
timeout /t 4 /nobreak >nul
cls
del %~dp0\nssc-if\* /q
cls
del %~dp0\Version.txt /q
cls
timeout /t 1 /nobreak >nul
cls
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-rs.bat > %~dp0\nssc-if\nssc-rs.bat
cls
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-ce.bat > %~dp0\nssc-if\nssc-ce.bat
cls
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-esce.ps1 > %~dp0\nssc-if\nssc-esce.ps1
cls
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-ut.txt > %~dp0\nssc-if\nssc-ut.txt
cls
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/Version.txt > %~dp0\Version.txt
cls