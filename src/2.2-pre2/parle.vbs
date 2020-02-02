Dim speaks, speech

Set speech=CreateObject("sapi.spvoice")

Dim oFso, f

set oFso = CreateObject("Scripting.FileSystemObject")

set f = oFso.OpenTextFile("Lecture.txt", 1)
while Not f.AtEndOfStream

  speech.Speak f.ReadLine

Wend

f.Close
