#Pokemons datas
#The sprite-front and back : without extension
#Moves : without spaces. 0 is Astonish, 1 is Mud Slap, ...
#Pokemons can be added here
#Moves can be added into the moves section
#Effects can be noticed down

[1]
name: Diglett
sprite-f: app/res/50-1
sprite-b: app/res/50-3
lf: 880
attk: 74
moves: (0,1,2,3)
price: 990
[/1]

[2]
name: Deoxys
sprite-f: app/res/51-1
sprite-b: app/res/51-3
lf: 420
attk: 123
moves: (4,5,6,7)
price: 2000
[/2]

[3]
name: Croconaw
sprite-f: app/res/52-1
sprite-b: app/res/52-1
lf: 410
attk: 74
moves: (8,9,10,11)
price: 3100
[/3]

[4]
name: Shedikyu
sprite-f: app/res/53-1
sprite-b: app/res/53-1
lf: 390
attk: 85
moves: (0,4,5,6)
price: 850
[/4]

[5]
name: Mikachu
sprite-f: app/res/54-1
sprite-b: app/res/54-1
lf: 1000
attk: 20
moves: (0,12,10,11)
price: 690
[/5]

[6]
name: S-Foretress
sprite-f: app/res/205-1
sprite-b: app/res/205-3
lf: 30
attk: 1000
moves: (5,9,13,2)
price: 690
[/6]

[7]
name: Mimime-Jr
sprite-f: app/res/206-1
sprite-b: app/res/206-1
lf: 90
attk: 12
moves: (14,15,7,9)
price: 120
[/7]

[8]
name: Gengar
sprite-f: app/res/55-1
sprite-b: app/res/55-1
lf: 720
attk: 32
moves: (14,16,17,18)
price: 1100
[/8]

[9]
name: Venusaur
sprite-f: app/res/3-1
sprite-b: app/res/3-3
lf: 804
attk: 40
moves: (14,16,17,18)
price: 1300
[/9]

[10]
name: Charmander
sprite-f: app/res/4-1
sprite-b: app/res/4-2
lf: 400
attk: 26
moves: (8,4)
price: 280
[/10]

[11]
name: MEGA-Kangashkan
sprite-f: app/res/5-1
sprite-b: app/res/5-1
lf: 990
attk: 100
moves: (9,6)
price: 1300
[/11]

[12]
name: MEGA-Aerodactyl
sprite-f: app/res/6-1
sprite-b: app/res/6-2
lf: 840
attk: 430
moves: (4,5)
price: 610
[/12]

[13]
name: MEGA-Houndoom
sprite-f: app/res/7-1
sprite-b: app/res/7-1
lf: 130
attk: 620
moves: (5,10,8)
price: 1205
[/13]

[14]
name: MEGA-Mawile
sprite-f: app/res/8-1
sprite-b: app/res/8-1
lf: 105
attk: 30
moves: (8,18,2,4)
price: 610
[/14]

[15]
name: MEGA-Manectric
sprite-f: app/res/9-1
sprite-b: app/res/9-1
lf: 766
attk: 32
moves: (13,10)
price: 3100
[/15]

[16]
name: MEGA-Banette
sprite-f: app/res/10-1
sprite-b: app/res/10-1
lf: 570
attk: 69
moves: (5)
price: 3100
[/16]

[17]
name: MEGA-Garchomp
sprite-f: app/res/11-1
sprite-b: app/res/11-1
lf: 120
attk: 22
moves: (1,2,3,5)
price: 6700
[/17]

[18]
name: MEGA-Alakazam
sprite-f: app/res/12-1
sprite-b: app/res/12-1
lf: 480
attk: 50
moves: (6,2)
price: 2000
[/18]

[19]
name: Mystik
sprite-f: app/res/56-1
sprite-b: app/res/56-1
lf: 150
attk: 32
moves: (2,1)
price: 8400
[/19]

#Pokemon moves. Name, Power, effect. Effect file must be added after the section. ( Astonish 0, Pursuit 5, Bite 10, Shadow Ball 15 )
[moves]
[
( ' Astonish ' , 30, 0),
( ' Mud Slap ' , 20, 4),
( ' Magnitude ' , 0, 2),
( ' Buldoze ' , 60, 0),
( 'Cosmic power' , 0, 3),
( 'Pursuit' , 40, 0),
( 'Psychic' , 90, 0),
( 'SuperPower' , 120, 0),
( 'Scratch' , 40, 0),
( 'Water Gun' , 40, 0),
( 'Bite' , 60, 0),
( 'Poison Fang' , 50, 0),
( 'Leer' , 0, 1),
( 'Spark' , 40, 0),
( 'Night Shade' , 180, 0),
( 'Shadow Ball' , 170, 1),
( 'Confuse Ray' , 0, 0),
( 'Dream Eater' , 200, 0),
( 'Destiny Bond' , 0, 0),
]
[/moves]

#Effects
0 nop #nothing
1 app/scripts/mvLeer.gcs
2 app/scripts/mvMagnitude.gcs
3 app/scripts/mvCosmic.gcs
4 app/scripts/mvSand.gcs

#END