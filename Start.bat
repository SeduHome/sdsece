@echo off
cls
color 11
type %~dp0\files\utemplate.txt
timeout /t 4 /nobreak >nul
cls
del %~dp0\files\* /q
cls
del %~dp0\version.txt /q
cls
timeout /t 1 /nobreak >nul
cls
curl https://raw.githubusercontent.com/SeduHome/sdsece/main/RegisteredStart.bat > %~dp0\files\RegisteredStart.bat
cls
curl https://raw.githubusercontent.com/SeduHome/sdsece/main/dsce.bat > %~dp0\files\dsce.bat
cls
curl https://raw.githubusercontent.com/SeduHome/sdsece/main/extra_safe_dsce.ps1 > %~dp0\files\extra_safe_dsce.ps1
cls
curl https://raw.githubusercontent.com/SeduHome/sdsece/main/version.txt > %~dp0\version.txt
cls
curl https://raw.githubusercontent.com/SeduHome/sdsece/main/utemplate.txt > %~dp0\files\utemplate.txt
cls
timeout /t 2 /nobreak >nul
cls
start %~dp0\files\RegisteredStart.bat
cls