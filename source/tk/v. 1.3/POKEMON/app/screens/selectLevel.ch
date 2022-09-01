width: 350
size: 300
title: level choice

buttons.nb: 3
button1: Previous Level
button2: Next Level
button3: Play Level

button1.id: 11
button2.id: 12
button3.id: 13

11.x: 20
12.x: 230

11.y: 250
12.y: 250

13.x: 125
13.y: 250

Text.nb: 2
Text2: Trainer speech

Text1.id: 14
Text2.id: 15

14.x: 150
14.y: 100

15.x: 200
15.y: 150

ondisplay: app/scripts/showlevel.gcs
onload: @[SetVar *clvl 1]

12.link: app/scripts/nextLvl.gcs
11.link: app/scripts/prevLvl.gcs
13.link: app/scripts/playLvl.gcs
