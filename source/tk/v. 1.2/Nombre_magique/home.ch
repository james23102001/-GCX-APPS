#Nombre Magique
#Ca devrait pouvoir fonctionner sur win32 comme sur tk
Width: 800
Size: 400
Title: Jeu du nombre magique

Onload: initWin32.gcs
OnDisplay: init.gcs

Text.nb: 5
Text1: Jeu du nombre magique
Text1.id: 0
0.x: 260

Text2: Pouvez vous deviner quel est le nombre magique?
Text2.id: 1
1.x: 400
1.y: 30

Text3: Borne inferieure
Text4: Borne superieure
Text5: Votre nombre:

Text3.id: 2
Text4.id: 3
Text5.id: 4

2.x: 250
2.y: 60

3.x: 250
3.y: 120

4.x: 280
4.y: 100

Input.nb: 1
Input1.id: 5

5.x: 500
5.y: 110

main_text_size: 15

buttons.nb: 1
button1: Valider
button1.id: 8
8.x: 300
8.y: 300
8.link: check.gcs

[erreur win32 :
Impossible de faire random avec var
erreur tk:
Erreur de comparaison, une seule valeur attrapée.
]

#END