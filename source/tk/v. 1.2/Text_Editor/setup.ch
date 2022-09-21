#Sub Window

Title: setup
buttons.nb: 4
Width: 200
Size: 100

button1: Light mode
button2: dark mode
button3: geek mode
button4: console mode
button1.id: 0
button2.id: 1
button3.id: 2
button4.id: 3

0.x: 0
1.x: 100
2.x: 0
3.x: 100
2.y: 50
3.y: 50

0.link: @lm
1.link: @dm
2.link: @gm
3.link: @cm

[@lm]
evaluate ch_update( "edit_text_color: black" , "home.ch" )
evaluate ch_update( "edit_background: white" , "home.ch" )
MessageBox alert Turned into light mode! Please restart the programm.
SetVar *updated 1
SetVar LASTFILE home.ch
create window home.ch destroy current
[/@lm]

[@dm]
evaluate ch_update( "edit_text_color: white" , "home.ch" )
evaluate ch_update( "edit_background: black" , "home.ch" )
MessageBox alert Turned into Dark mode! Please restart the programm.
SetVar *updated 1
SetVar LASTFILE home.ch
create window home.ch destroy current
[/@dm]

[@gm]
evaluate ch_update( "edit_text_color: blue" , "home.ch" )
evaluate ch_update( "edit_background: yellow" , "home.ch" )
MessageBox alert Turned into Dark mode! Please restart the programm.
SetVar *updated 1
SetVar LASTFILE home.ch
create window home.ch destroy current
[/@gm]

[@cm]
evaluate ch_update( "edit_text_color: white" , "home.ch" )
evaluate ch_update( "edit_background: navy" , "home.ch" )
MessageBox alert Turned into Dark mode! Please restart the programm.
SetVar *updated 1
SetVar LASTFILE home.ch
create window home.ch destroy current
[/@cm]

#END