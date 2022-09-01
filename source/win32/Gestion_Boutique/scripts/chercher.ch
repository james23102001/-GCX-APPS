#chercher.ch

Onquit: scripts/flip.gcs

#Un autre formulaire, avec un seul champ
Text.nb: 2
Text1: Recherche...
Text1.id: 22
Text2: Nom_Produit:
Text2.id: 23

22.x: 150
22.y: 0

23.x: 50
23.y: 50

Input.nb: 1
Input1.id: 24

24.x: 250
24.y: 50

buttons.nb: 2
button1: Retour
button1.id: 15
button2: Rechercher
button2.id: 25

button.width: 100
button.size: 40

15.x: 340
15.y: 300

25.x: 45
25.y: 300

#Je réutilise l'id 15 ici. Voila pourquoi on utilise des id différents, le meme id fait la meme  action
25.link: scripts/chercher.gcs
15.link: home.ch
#END