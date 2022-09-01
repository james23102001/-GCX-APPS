#home.ch

#C'est 'gestion de boutique', fait avec GC Builder et un miniprogramme c. Il est largement améliorable, je trouve. On peut sécuriser les saisies, déjà. Je commente bien au cas ou vous décidez que ca vous plait pas, comme ca!


#Directives de l'interpréteur
use win32
ch/gcs_version: 1

#A chaque fois qu'on quitte l'écran, exécuter le script flip.gcs dans le dossier scripts
Onquit: scripts/flip.gcs

#Le titre
Title: Simple_Form

#Largeur et hauteur
Width: 500
Size: 400

#Nombre de boutons
buttons.nb: 6
button1: Ajouter
button1.id: 0
button2: Vendre
button2.id: 1
button3: Voir
button3.id: 2
button4: Rechercher
button4.id: 3
button5: Options
button5.id: 4
button6: Quitter
button6.id: 5

#Positionnement à partir des id
0.x: 50
0.y: 50

1.x: 50
1.y: 150

2.x: 50
2.y: 250

3.x: 300
3.y: 50

4.x: 300
4.y: 150

5.x: 300
5.y: 250

#Pareil pour le texte
Text.nb: 1
Text1: GESTION_DE_BOUTIQUE
Text1.id: 6
6.x: 150
#Le y est 0, pas besoin de se souler à le mettre

#Les actions des boutons. Soit charger des écrans(fichiers ch), soit exécuter des scripts (fichiers gcs), soit quitter (exit)
0.link: scripts/ajouter.ch
1.link: scripts/vendre.ch
2.link: scripts/voir.gcs
3.link: scripts/chercher.ch
4.link: scripts/options.ch
5.link: exit

#Au démarrage, exécuter init
Onload: scripts/init.gcs

#Personalisation des boutons
button.width: 100
button.size: 40

#A chaque écran ses boutons
0 home.ch
1 home.ch
2 home.ch
3 home.ch
4 home.ch
5 home.ch
14 scripts/ajouter.ch
15 scripts/ajouter.ch
19 scripts/vendre.ch
25 scripts/chercher.ch
26 scripts/options.ch
28 scripts/options.ch

#END