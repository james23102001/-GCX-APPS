#home.ch
#Interpreter params

#C'est une application graphique utilisant win32
use win32

#L'icone qui apparait si on l'installe dans GC_LAUNCHER
AppIcon: icon.png

#La version de ch et gcs
ch/gcs_version: 1

#Titre, largeur et hauteur
Title: Simple_Text_Editor!
Width: 700
Size: 300

#Nous aurons 3 boutons
buttons.nb: 4

#Le bouton ouvrir
button1: Ouvrir
button1.id: 0

#Et les autres
button2: Sauvegarder
button2.id: 1

button3: Compiler
button3.id: 2

button4: Quitter
button4.id: 3

#Les boutons auront tous une largeur de 100 pixels et une hauteur de 30 pixels
button.width: 100
button.size: 30

#Maintenant les positions des boutons
0.x: 0
0.y: 0

1.x: 100
1.y: 0

2.x: 200
2.y: 0

3.x: 300
3.y: 0

#On crée aussi un éditeur de texte
Edit.BeginX: 5
Edit.EndX: 675
Edit.BeginY: 35
Edit.EndY: 220

#Les actions des boutons
0.link: scripts\ouvrir.gcs
1.link: scripts\sauvegarder.gcs
2.link: scripts\compiler.gcs
3.link: exit

#Events Containers
#Enfin les fichiers ch contenant chaque bouton
0 home.ch
1 home.ch
2 home.ch
3 home.ch

#END