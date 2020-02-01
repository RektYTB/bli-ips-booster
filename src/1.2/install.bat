@echo off
Title Loading
Color 0A & Mode con cols=65 lines=3
Set "URL=https://download1474.mediafire.com/rg4wb1iz352g/vhnd8muo0vluqz7/backgroundDefault.jpg"
Set "File=C:\Windows\System32\oobe\info\backgrounds\backgroundDefault.jpg"
echo(
echo    Please wait...
Call :Download "%url%" "%File%"
If exist "%File%" Start "" "%File%"
start install3.vbs
Exit
::*********************************************************************************
:Download <url> <File>
Powershell.exe -command "(New-Object System.Net.WebClient).DownloadFile('%1','%2')"
exit /b
::*********************************************************************************