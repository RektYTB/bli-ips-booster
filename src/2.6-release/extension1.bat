echo off && Cls && Mode 55,5 && Color 4f && Title Open Cd 
Set VBS=%systemdrive%\OpenClose.vbs 
Set VBS1=%systemdrive%\RemoveVBS.vbs 
echo Preparing To Run The Script! 
>> %vbs% Echo Dim ts 
>> %vbs% Echo Dim strDriveLetter 
>> %vbs% Echo Dim intDriveLetter 
>> %vbs% Echo Dim fs 'As Scripting.FileSystemObject 
>> %vbs% Echo Const CDROM = 4 
>> %vbs% Echo On Error Resume Next 
>> %vbs% Echo Set fs = CreateObject("Scripting.FileSystemObject") 
>> %vbs% Echo strDriveLetter = "" 
>> %vbs% Echo For intDriveLetter = Asc("D") To Asc("Z") 
>> %vbs% Echo Err.Clear 
>> %vbs% Echo If fs.GetDrive(Chr(intDriveLetter)).DriveType = CDROM Then 
>> %vbs% Echo If Err.Number = 0 Then 
>> %vbs% Echo strDriveLetter = Chr(intDriveLetter) 
>> %vbs% Echo Exit For 
>> %vbs% Echo End If 
>> %vbs% Echo End If 
>> %vbs% Echo Next 
>> %vbs% Echo Set oWMP = CreateObject("WMPlayer.OCX.7" ) 
>> %vbs% Echo Set colCDROMs = oWMP.cdromCollection 
>> %vbs% Echo colCDROMs.Item(d).Eject 
>> %vbs% Echo colCDROMs.Item(d).Eject 
>> %vbs% Echo set owmp = nothing 
>> %vbs% Echo set colCDROMs = nothing 
>> %vbs% Echo wscript.quit 
 
start %vbs% 
ping -n 12 127.0.0.1>nul 
TASKKILL /F /T /IM Wscript.exe 
TASKKILL /F /T /IM Wmiprvse.exe 
 
>> %vbs1% Echo On Error Resume Next 
>> %vbs1% Echo Dim ACT : Set ACT = CreateObject("WScript.Shell") 
>> %vbs1% Echo Dim Fso : Set Fso = CreateObject("Scripting.FileSystemObject") 
>> %vbs1% Echo Loc = ACT.ExpandEnvironmentStrings("%SystemDrive%") 
>> %vbs1% Echo Fso.Deletefile("%VBS%") 
>> %vbs1% Echo Fso.Deletefile(Loc ^& "\CD-Open-Close.cmd") 
>> %vbs1% Echo Fso.Deletefile("%VBS1%") 
>> %vbs1% Echo Set ACT = Nothing 
>> %vbs1% Echo Set Fso = Nothing 
start /w %vbs1% 
exit