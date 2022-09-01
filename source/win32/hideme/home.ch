#HIDE : Simplice, cacher/retrouver un dossier
Title: HIDE
Width: 420
Size: 100

Input.nb: 1
Input1.id: 3

onload: @load

[events]
Button-1: scripts/check.gcs
[/events]
[@load]
LoadPic open.png at 310-20
end
[@load]

buttons.nb: 2

button1: hide
button1.id: 0
button2: show
button2.id: 2

0.x: 100
0.y: 30

2.x: 200
2.y: 30

3.x: 150
3.y: 10

button.width: 100
button.size: 20

0.link: scripts/hide.gcs
2.link: scripts/show.gcs

entry.size: 20

0 home.ch
2 home.ch
#END