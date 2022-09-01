#ajouter.ch

#exécuter flip.gcs si on quitte
Onquit: scripts/flip.gcs

#On va créer un formulaire d'enregistrement de produits.
Text.nb: 4
#En entete,
Text1: AJOUT...
Text1.id: 7

#A gauche, ...
Text2: Nom_Produit:
Text2.id: 8
Text3: Prix:
Text3.id: 9
Text4: Nombre:
Text4.id: 10

#On les positionne
7.x: 150
7.y: 0

#On voit que les textes sont alignés à gauche ( x = 50 )
8.x: 50
8.y: 50

9.x: 50
9.y: 100

10.x: 50
10.y: 150

#Pareil ici
Input.nb: 3
#Pas de texte affiché donc bof... on peut mettre directement les id
Input1.id: 11
Input2.id: 12
Input3.id: 13

11.x: 250
11.y: 50

12.x: 250
12.y: 100

13.x: 250
13.y: 150

#Puis les boutons
buttons.nb: 2
button1: Enregistrer
button1.id: 14

button2: Retour
button2.id: 15

button.width: 100
button.size: 40

14.x: 45
14.y: 300

15.x: 340
15.y: 300

#15 retourne au menu d'acceuil. A chaque fois que je voudrai exécuter la meme action, il me suffira de donner cet id.
14.link: scripts/ajouter.gcs
15.link: home.ch
#END