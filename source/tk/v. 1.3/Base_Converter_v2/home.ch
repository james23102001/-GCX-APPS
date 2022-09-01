#home.ch

#Les directives de l'interpréteur
use tk
ch/gcs_version: 2
AppIcon: icon.png

#Nouveauté de GC_Tk
main_text_size: 14
entry.size: 25

#Configurations de base
Title: Base Converter v3
Width: 650
Size: 470
Background: dark.png
Background.y: 250


#Mettre base 10 par défaut
Onload: scripts/init.gcs
OnDisplay: scripts/config.gcs

[events]
Button-1: @[PrintVars]
[/events]

#Charger le boutons
buttons.nb: 7
button1: Changer_Base
button1.id: 0
button2: Convertir
button2.id: 1
button3: Quitter
button3.id: 2
button4: +
button4.id: 22
button5: -
button5.id: 23
button6: x
button6.id: 24
button7: /
button7.id: 25

#Charger les textes. On peut dépasser 10 parcequ'on les récupère pas.
Text.nb: 15
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
Text8: -
Text8.id: 10
Text9: -
Text9.id: 11
Text10: -
Text10.id: 12
Text11: -
Text11.id: 13
Text12: Calculatrice
Text12.id: 15
Text13: Nombre 1
Text13.id: 16
Text14: Nombre 2
Text14.id: 17
Text15: Resultat
Text15.id: 18

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

10.x: 200
10.y: 50

11.x: 550
11.y: 50

12.x: 200
12.y: 100

13.x: 550
13.y: 100

#Les inputs
Input.nb: 4

Input1: 0
Input1.id: 14
Input2.id: 19
Input3.id: 20
Input4.id: 21

14.x: 300
14.y: 160

15.x: 50
15.y: 230

16.x: 50
16.y: 260

19.x: 50
19.y: 290

17.x: 550
17.y: 260

20.x: 500
20.y: 290

18.x: 300
18.y: 320

21.x: 300
21.y: 350

22.x: 100
22.y: 390

23.x: 210
23.y: 390

24.x: 320
24.y: 390

25.x: 430
25.y: 390

#et enfin les liens.
0.link: scripts/changerBase.gcs
1.link: scripts/convertir.gcs
2.link: exit
22.link: @add
23.link: @-
24.link: @x
25.link: @/

[@add]
GetInput 19
SetVar *nb1 LASTRESULT
GetInput 20
SetVar *nb2 LASTRESULT
compare *actual 10
if $EQUAL then

	add *nb1 *nb2
	SetInputText 21 LASTRESULT
	end
SetVar ACTUAL_BASE *actual
convert decimal *nb1
SetVar *nb1 LASTRESULT
convert decimal *nb2
SetVar *nb2 LASTRESULT

add *nb1 *nb2
SetVar *result LASTRESULT
prepare decimal conversion
compare *actual 2
if $EQUAL then
	convert binary *result
	SetInputText 21 LASTRESULT
	end
compare *actual 8
if $EQUAL then
	convert octan *result
	SetInputText 21 LASTRESULT
	end
compare *actual 16
if $EQUAL then
	convert hex *result
	SetInputText 21 LASTRESULT
	end
end
[/@add]

[@-]
GetInput 19
SetVar *nb1 LASTRESULT
GetInput 20
SetVar *nb2 LASTRESULT
compare *actual 10
if $EQUAL then

	substract *nb1 *nb2
	SetInputText 21 LASTRESULT
	end
SetVar ACTUAL_BASE *actual
convert decimal *nb1
SetVar *nb1 LASTRESULT
convert decimal *nb2
SetVar *nb2 LASTRESULT

substract *nb1 *nb2
SetVar *result LASTRESULT
prepare decimal conversion
compare *actual 2
if $EQUAL then
	convert binary *result
	SetInputText 21 LASTRESULT
	end
compare *actual 8
if $EQUAL then
	convert octan *result
	SetInputText 21 LASTRESULT
	end
compare *actual 16
if $EQUAL then
	convert hex *result
	SetInputText 21 LASTRESULT
	end
end
[/@-]

[@x]
GetInput 19
SetVar *nb1 LASTRESULT
GetInput 20
SetVar *nb2 LASTRESULT
compare *actual 10
if $EQUAL then

	multiply *nb1 *nb2
	SetInputText 21 LASTRESULT
	end
SetVar ACTUAL_BASE *actual
convert decimal *nb1
SetVar *nb1 LASTRESULT
convert decimal *nb2
SetVar *nb2 LASTRESULT

multiply *nb1 *nb2
SetVar *result LASTRESULT
prepare decimal conversion
compare *actual 2
if $EQUAL then
	convert binary *result
	SetInputText 21 LASTRESULT
	end
compare *actual 8
if $EQUAL then
	convert octan *result
	SetInputText 21 LASTRESULT
	end
compare *actual 16
if $EQUAL then
	convert hex *result
	SetInputText 21 LASTRESULT
	end
end
[/@x]

[@/]
GetInput 19
SetVar *nb1 LASTRESULT
GetInput 20
SetVar *nb2 LASTRESULT
compare *actual 10
if $EQUAL then

	divide *nb1 *nb2
	SetInputText 21 LASTRESULT
	end
SetVar ACTUAL_BASE *actual
convert decimal *nb1
SetVar *nb1 LASTRESULT
convert decimal *nb2
SetVar *nb2 LASTRESULT

divide *nb1 *nb2
SetVar *result LASTRESULT
prepare decimal conversion
compare *actual 2
if $EQUAL then
	convert binary *result
	SetInputText 21 LASTRESULT
	end
compare *actual 8
if $EQUAL then
	convert octan *result
	SetInputText 21 LASTRESULT
	end
compare *actual 16
if $EQUAL then
	convert hex *result
	SetInputText 21 LASTRESULT
	end
end
[/@/]

entry.width: 170

0 home.ch
1 home.ch
2 home.ch
22 home.ch
#END