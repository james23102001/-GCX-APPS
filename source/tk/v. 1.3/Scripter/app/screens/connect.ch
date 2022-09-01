#HOME.CH
#MADE BY GC DESIGNER

ondisplay: app/scripts/configPasswordInput.gcs
onload: app/scripts/loadPic.gcs

entry.size: 20

Title: Tk_app
Width: 500
Size: 500

buttons.nb: 2
Input.nb: 2
Text.nb: 3

Input1.id: 0
0.x: 300
0.y: 200

Input2.id: 1
1.x: 300
1.y: 230

main_text_size: 14

Text1: Login
Text1.id: 2
2.x: 100
2.y: 190

Text2: Password
Text2.id: 3
3.x: 100
3.y: 220

Text3: Connectes toi!
Text3.id: 4
4.x: 250
4.y: 10

button1: Se connecter
button1.id: 5
5.x: 90
5.y: 342

button2: Creer un compte
button2.id: 6
6.x: 300
6.y: 342

5.link: app/scripts/checkUser.gcs
6.link: @back

[@back]
create window app/screens/register.ch destroy current
[/@back]

button.width: 100
button.size: 20
#END