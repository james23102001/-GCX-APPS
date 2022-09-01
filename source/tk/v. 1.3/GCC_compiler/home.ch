#home.ch
#Interpreter params

#C'est une application graphique utilisant tk
use tk

#L'icone qui apparait si on l'installe dans GC_LAUNCHER
AppIcon: icon.png

#La version de ch et gcs
ch/gcs_version: 1

#Titre, largeur et hauteur
Title: GCC Compiler
Width: 600
Size: 255

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
Edit.BeginX: 250
Edit.EndX: 890
Edit.BeginY: 100
Edit.EndY: 350

#Les actions des boutons
0.link: scripts\ouvrir.gcs
1.link: scripts\sauvegarder.gcs
2.link: scripts\compiler.gcs
3.link: exit

#END