#home.ch
#générateur de code, avec GC_BUILDER
Onload: scripts/init.gcs
Onquit: scripts/flip.gcs

#Utiliser le coeur graphique win32
use win32
ch/gcs_version: 1

#Titre et dimensions
Title: Code_Generator
Width: 420
Size: 300

#3 champs de texte
Text.nb: 3
Text1: CODE_MAKER
Text1.id: 0
Text2: Libelle
Text2.id: 1
Text3: Code
Text3.id: 2

#2 inputs
Input.nb: 2
Input1.id: 3
Input2.id: 4

#4 boutons
buttons.nb: 4
button1: GENERER
button1.id: 5
button2: SAUVEGARDER
button2.id: 6
button3: VOIR
button3.id: 7
button4: QUITTER
button4.id: 8

#On "resize" les boutons quand meme...
button.size: 20
button.width: 100

#Positions de chaque élément dans la fenetre. (se référer aux id)
0.x: 50
0.y: 0

1.x: 0
1.y: 50

2.x: 0
2.y: 100

3.x: 200
3.y: 50

4.x: 200
4.y: 100

5.x: 175
5.y: 150

6.x: 0
6.y: 180

7.x: 150
7.y: 180

8.x: 300
8.y: 180

#Les actions des boutons. gcs pour script, ch pour chargement d'écran, exit pour quitter
5.link: scripts/generate.gcs
6.link: scripts/save.gcs
7.link: scripts/voir.gcs
14.link: home.ch
8.link: exit

#Routine.. Sans ca les boutons marcheront pas! Il faut dire à quel écran appartient chaque bouton. Si le bouton est créé dans un script gcs, on considère que c'est home.ch
5 home.ch
6 home.ch
7 home.ch
8 home.ch
14 home.ch

#END