@echo off
reg add "HKCU\Control Panel\Desktop" /v Wallpaper /d "C:\hehe.bmp" /F
RUNDLL32.EXE USER32.DLL,UpdatePerUserSystemParameters ,1 ,True