@echo off
cls
color 11
type %~dp0\nssc-if\nssc-sut.txt
timeout /t 2 /nobreak >nul
cls
type %~dp0\nssc-if\nssc-ut.txt
timeout /t 2 /nobreak >nul
del %~dp0\nssc-if\* /q
del %~dp0\Version.txt /q
cls
timeout /t 1 /nobreak >nul
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-if/nssc-rs.bat > %~dp0\nssc-if\nssc-rs.bat
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-if/nssc-ce.bat > %~dp0\nssc-if\nssc-ce.bat
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-if/nssc-esce.ps1 > %~dp0\nssc-if\nssc-esce.ps1
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-if/nssc-sut.txt > %~dp0\nssc-if\nssc-sut.txt
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/nssc-if/nssc-ut.txt > %~dp0\nssc-if\nssc-ut.txt
curl https://raw.githubusercontent.com/SeduHome/nssc-cep/main/Version.txt > %~dp0\Version.txt
start %~dp0\nssc-if\nssc-rs.bat