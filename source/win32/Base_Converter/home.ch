#home.ch

#Les directives de l'interpréteur
use win32
ch/gcs_version: 1
AppIcon: icon.png

#Configurations de base
Title: Base_Converter_v2
Width: 650
Size: 270

#Mettre base 10 par défaut
Onload: scripts/init.gcs

#Charger le boutons
buttons.nb: 3
button1: Changer_Base
button1.id: 0
button2: Convertir
button2.id: 1
button3: Quitter
button3.id: 2

#Charger les textes. On peut dépasser 10 parcequ'on les récupère pas.
Text.nb: 11
Text1: Base_Actuelle:
Text1.id: 3
Text2: 10
Text2.id: 4
Text3: Base_2
Text3.id: 5
Text4: Base_10
Text4.id: 6
Text5: Base_8
Text5.id: 7
Text6: Base_16
Text6.id: 8
Text7: Nombre:
Text7.id: 9
Text8:
Text8.id: 10
Text9:
Text9.id: 11
Text10:
Text10.id: 12
Text11:
Text11.id: 13

button.width: 100
button.size: 20

#Le positionnement par id
0.x: 0
0.y: 0

1.x: 150
1.y: 200

2.x: 350
2.y: 200

3.x: 250
3.y: 0

4.x: 400
4.y: 0

5.x: 50
5.y: 50

6.x: 400
6.y: 50

7.x: 50
7.y: 100

8.x: 400
8.y: 100

9.x: 50
9.y: 150

10.x: 150
10.y: 50

11.x: 550
11.y: 50

12.x: 150
12.y: 100

13.x: 550
13.y: 100

#Les inputs
Input.nb: 1

Input1.id: 14

14.x: 300
14.y: 150

#et enfin les liens.
0.link: scripts/changerBase.gcs
1.link: scripts/convertir.gcs
2.link: exit

0 home.ch
1 home.ch
2 home.ch
#END