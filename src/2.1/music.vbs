Set Sound = CreateObject("WMPlayer.OCX.7")
Sound.URL = "music 1825 la peta de la caca.mp3"
Sound.Controls.play
do while Sound.currentmedia.duration = 0
wscript.sleep 100
loop
wscript.sleep (int(Sound.currentmedia.duration)+1)*1000
