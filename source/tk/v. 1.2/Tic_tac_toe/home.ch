#HOME.CH
#MADE BY GC DESIGNER
[
@@@@@@@@@@@@@@@ TIC TAC TOE GAME 1.0 @@@@@@@@@@@@@@@@@@@
@ CORE : GC TK 											@
@ CORE VERSION : 1.2 									@
@ CH VERSION : 2 										@
@ MADE BY JAMES LILIOU, FOR GC 							@
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
]

Onload: @init

#Au démarrage, le joueur actuel c'est PLAYER, et c'est son signe qui est actuel.
[@init]
SetVar *plyr $PLAYER
SetVar *playerSign $PLAYERSIGN
evaluate []
SetVar *list LASTRESULT
evaluate set()
SetVar *playerDeck LASTRESULT
evaluate set()
SetVar *foeDeck LASTRESULT
[/@init]

#L'ors de l'affichage, afficher que c'est PLAYER qui joue.
OnDisplay: @load

[@load]
CreateText 3 -
CreateText 4 -
CreateText 5 -
CreateText 6 -
CreateText 7 -
CreateText 8 -
CreateText 9 -
CreateText 10 -
CreateText 11 -
CreateText 1 PLAYER
[/@load]

#Au clic du bouton gauche, Essayer d'exécuter @play, si il n'a pas pu, exécuter @forget
[events]
Button-1: @start
[/events]

[@start]
try @play else @forget
end
[/@start]

#Une commande python renvoyant l'id de l'élément sur lequel on a cliqué
#Puis une autre commande python pour ajouter clickedId dans list
#Enfin, Je vérifie qui joue, et j'exécute la fonction change. Mais avant j'ajoutes l'id de l'élément dans un set pour vérifier si qqn a gagné

#Note les lignes commentées correspondent à la version 1.2, pour downgrader ce programme décommentez-les
[@play]
evaluate self.page.sheet.find_withtag( "current" )
GetTableElement 0 of LASTRESULT
SetVar *clickedId LASTRESULT
print val CLICKED :
print var LASTRESULT
#self.vars.getvar( "LASTRESULT" ) in self.vars.getvar( "*list" );
self.vars.getvar( "LASTRESULT" ) in self.vars.getvar( "*list" ) or type(self.vars.getvar( "LASTRESULT" )) != type(1)
compare LASTRESULT True
if 0 then
	end
evaluate self.vars.getvar( '*list' ).append(self.vars.getvar( '*clickedId' ))
compare *plyr $PLAYER
if $TRUE then
	CreateText 1 FOE
	SetVar *playerSign $PLAYERSIGN
	SetVar *plyr $FOE
	evaluate self.vars.getvar( '*playerDeck' ).add(self.vars.getvar( '*clickedId' ))
	function change quit
	end
CreateText 1 PLAYER
SetVar *playerSign $FOESIGN
SetVar *plyr $PLAYER
evaluate self.vars.getvar( '*foeDeck' ).add(self.vars.getvar( '*clickedId' ))
function change quit
[/@play]

#Do nothing
[@forget]
end
[/@forget]

#Restart the game
[@restart]
function init continue
function load quit
[/@restart]

#Expression python pour changer le texte
#Encore une expression python pour avoir la taille de list
#Vérifier si qqn a gagné et continuer
#Exécuter checkSuccess et continuer
Vérifier si tout est coché. Si c 'est le cas, alors Arreter.
[@change]
evaluate self.page.sheet.itemconfig(self.page.textId [int(self.vars.getvar( "*clickedId" ))-1],text= str(self.vars.getvar( "*playerSign" )))
function checkSuccess continue
evaluate len(self.vars.getvar( '*list' ))
compare LASTRESULT 9
if 0 then
	MessageBox Draw! No one won!
	exit
[/@change]

#Vérifier si qqn a gagné :
#Création du tuple des possibles combinaisons de victoire ( windeck )
#Boucle avec i ittératif
#Vérifier si le set de player a les 3 éléments du ième élément de windeck
#Vérifier aussi avec le set de foe
#Au suivant!

#Note les lignes commentées correspondent à la version 1.2, pour downgrader ce programme décommentez-les
[@checkSuccess]
evaluate ((4,5,6),(7,8,9),(10,11,12),(4,8,12),(6,8,10),(5,8,11),(4,7,10),(6,9,12))
SetVar *windeck LASTRESULT
SetVar *i 0
repeat 8 times
GetTableElement *i of *windeck
SetVar *elem LASTRESULT
print val **loop
print var *elem
#self.vars.getvar( '*elem' )[0] in self.vars.getvar( '*playerDeck' ) and self.vars.getvar( '*elem' )[1] in self.vars.getvar( '*playerDeck' ) and self.vars.getvar( '*elem' )[2] in self.vars.getvar( '*playerDeck' );
self.vars.getvar( '*elem' )[0] in self.vars.getvar( '*playerDeck' ) and self.vars.getvar( '*elem' )[1] in self.vars.getvar( '*playerDeck' ) and self.vars.getvar( '*elem' )[2] in self.vars.getvar( '*playerDeck' )
compare LASTRESULT True
if $TRUE then
	MessageBox Won! PLAYER won!
	exit
#self.vars.getvar( '*elem' ) [0]in self.vars.getvar( '*foeDeck' ) and self.vars.getvar( '*elem' ) [1]in self.vars.getvar( '*foeDeck' ) and self.vars.getvar( '*elem' ) [2]in self.vars.getvar( '*foeDeck' );
self.vars.getvar( '*elem' ) [0]in self.vars.getvar( '*foeDeck' ) and self.vars.getvar( '*elem' ) [1]in self.vars.getvar( '*foeDeck' ) and self.vars.getvar( '*elem' ) [2]in self.vars.getvar( '*foeDeck' )
compare LASTRESULT True
if $TRUE then
	MessageBox Lost! FOE won!
	exit
add *i 1
SetVar *i LASTRESULT
turn *i into int
nope
stop repeat
end
[/@checkSuccess]

Title: Tic tac toe game by James LILIOU
Width: 400
Size: 200

use tk
AppIcon: icon.png

buttons.nb: 1
Input.nb: 0
Text.nb: 11

main_text_size: 15
Text1: Au tour de
Text1.id: 0
0.x: 55
0.y: 130

Text2.id: 1
1.x: 187
1.y: 130

button1: Recommencer
button1.id: 2
2.x: 143
2.y: 15
2.link: @restart

Text3.id: 3
3.x: 12
3.y: 30

Text4.id: 4
4.x: 146
4.y: 30

Text5.id: 5
5.x: 266
5.y: 30

Text6.id: 6
6.x: 12
6.y: 58
6.link: exit

Text7.id: 7
7.x: 146
7.y: 58

Text8.id: 8
8.x: 266
8.y: 58

Text9.id: 9
9.x: 12
9.y: 86

Text10.id: 10
10.x: 146
10.y: 86

Text11.id: 11
11.x: 266
11.y: 86

button.width: 100
button.size: 20

constants: const.ch

#END