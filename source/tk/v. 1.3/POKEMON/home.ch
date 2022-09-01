#home.ch
Width: 600
Size: 650
Title: Pokemon Battle Game

use tk
AppIcon: icon.png

onload: @geo

[@geo]
evaluate self.geometry( '+0+0' )
end
[/@geo]

Background: app/res/main.png

buttons.nb: 4
button1: new game
button2: continue
button3: about
button4: store

button1.id: 16
button2.id: 17
button3.id: 18
button4.id: 19

16.x: 10
17.x: 160
18.x: 310
19.x: 460

16.y: 590
17.y: 590
18.y: 590
19.y: 590

16.link: app/scripts/newGame.gcs
17.link: app/scripts/loadSaved.gcs
18.link: app/scripts/about.gcs
19.link: app/scripts/store.gcs