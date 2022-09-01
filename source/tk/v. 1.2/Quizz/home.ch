#Quizz GAME by GAME CENTER

Ondisplay: @load
AppIcon: icon.png
use tk

[@load]
LoadPic app/res/main.png
SetVar *actual 0
ConfigInput 3 state= 'readonly'
ConfigButton 0 text= 'Jouer'
ConfigButton 1 text= 'A propos'
ConfigButton 2 text= 'Quit'
evaluate self.geometry( '+0+0' )
end
[@load]

Title: Quizz!
Size: 600
Width: 500

3.x: 200
3.y: 430

buttons.nb: 3
button1: btn1
button2: btn2
button3: btn3

button1.id: 0
button2.id: 1
button3.id: 2

Input.nb: 1
Input1.id: 3
Input1: Questions Answers Game made by James LILIOU, GAME CENTER.

Text.nb: 2
Text1: Score
Text1.id: 4
Text2: Questions restantes
Text2.id: 5

0.x: 200
0.y: 480
1.x: 200
1.y: 510
2.x: 200
2.y: 540
4.x: 20
4.y: 380
5.x: 380
5.y: 380

0.link: app/scripts/act1.gcs
1.link: app/scripts/act2.gcs
2.link: app/scripts/act3.gcs

entry.width: 480
entry.size: 45

button.width: 480
button.size: 25