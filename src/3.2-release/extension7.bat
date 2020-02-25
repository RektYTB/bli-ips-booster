@echo off

rem chemin absolu du fichier .bmp 
Set bmpfile=%temp%\version.bmp
rem on fusionne la  valeur à la base de registre
reg add "HKCU\Control Panel\Desktop" /v WallPaper /d "%bmpfile%" /f >nul
rem on rafraichi le bureau
%Windir%\System32\rundll32.exe user32.dll,UpdatePerUserSystemParameters ,1,1