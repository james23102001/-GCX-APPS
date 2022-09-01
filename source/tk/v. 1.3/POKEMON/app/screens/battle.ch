use tk

width : 400
size : 400

Text.nb: 4
Text1: ally
Text1.id: 0
Text2: foe
Text2.id: 1
Text3: hp
Text3.id: 2
Text4: hp
Text4.id: 3
Text5: TextZone
Text5.id: 8

buttons.nb: 4
button1: -
button1.id: 4
4.x: 50
4.y: 200
4.link: app/scripts/move1.gcs

button2: -
button2.id: 5
5.x: 50
5.y: 230
5.link: app/scripts/move2.gcs

button3: -
button3.id: 6
6.x: 240
6.y: 200
6.link: app/scripts/move3.gcs

button4: -
button4.id: 7
7.x: 240
7.y: 230
7.link: app/scripts/move4.gcs
Title: pokemon

#OnDisplay: app/scripts/loadBattle.gcs
OnDisplay: app/scripts/trainerBattle.gcs

0.x: 100
0.y: 150

1.x: 246
1.y: 150

2.x: 100
2.y: 164

3.x: 240
3.y: 164

8.x: 50
8.y: 300