#home.ch
use win32
ch/gcs_version: 1

#Main screen Params
Title: A_simple_calculator!
Width: 600
Size: 300

0.x: 10
0.y: 150

1.x: 120
1.y: 150

2.x: 10
2.y: 200

3.x: 120
3.y: 200

6.x: 300
6.y: 150

4.x: 300
4.y: 200

5.x: 10
5.y: 70

7.x: 10
7.y: 30

8.x: 10
8.y: 100

#buttons
buttons.nb: 5
button1: +
button1.id: 0
button2: -
button2.id: 1
button3: x
button3.id: 2
button4: /
button4.id: 3
button5: POW
button5.id: 6

button.width: 100
button.size: 40

Text.nb: 2
Text1: Result:
Text1.id: 4
Text2: My_Calculator!(JAMES_LILIOU)
Text2.id: 7

Input.nb: 2
Input1.id: 5
Input2.id: 8

Background: bg.bmp
Background.x: 0
Background.y: 0

0.link: scripts/add.gcs
1.link: scripts/sub.gcs
2.link: scripts/mult.gcs
3.link: scripts/div.gcs
6.link: scripts/pow.gcs

#Position in files
0 home.ch
1 home.ch
2 home.ch
3 home.ch
6 home.ch
#END