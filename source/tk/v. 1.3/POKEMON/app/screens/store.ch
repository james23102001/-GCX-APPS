#store.ch

Width: 600
Size: 500
Title: Buy anything you like!

Onload: app/scripts/displayMons.gcs
OnDisplay: app/scripts/lb.gcs

Text.nb: 5

Text1: Your Pokemons order
Text1.id: 20
20.x: 300
20.y: 300

Text2: Your money :
Text2.id: 27
27.x: 100
27.y: 100

Text3: 0
Text3.id: 28
28.x: 300
28.y: 100

Text4: Cost
Text4.id: 29
29.x: 100
29.y: 60

Text5: 0$
Text5.id: 30
30.x: 300
30.y: 60

Input.nb: 6
Input1: 1
Input1.id: 21
Input2: 2
Input2.id: 22
Input3: 3
Input3.id: 23
Input4: 4
Input4.id: 24
Input5: 5
Input5.id: 25
Input6: 6
Input6.id: 26

21.x: 10
22.x 110
23.x: 210
24.x: 310
25.x: 410
26.x: 510

21.y: 350
22.y: 350
23.y: 350
24.y: 350
25.y: 350
26.y: 350

entry.width: 50
entry.size: 20

buttons.nb: 2
#buttons.nb: 1
button1: Buy
button2: Reorder
button1.id: 31
button2.id: 32

31.x: 150
31.y: 200

32.x: 250
32.y: 450

31.link: app/scripts/buy.gcs
32.link: app/scripts/reorder.gcs

[events]
Button-1: app/scripts/updateView.gcs
[/events]


