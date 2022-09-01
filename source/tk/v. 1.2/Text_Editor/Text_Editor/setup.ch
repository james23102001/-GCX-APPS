#Sub Window
Title: setup
buttons.nb: 2
Width: 200
Size: 100
button1: Light mode
button2: dark mode
button1.id: 0
button2.id: 1

0.x: 0
1.x: 100

0.link: @lm
1.link: @dm

[@lm]
evaluate ch_update( "edit_text_color: black" , "home.ch" )
evaluate ch_update( "edit_background: white" , "home.ch" )
MessageBox alert Turned into light mode! Please restart the programm.
exi
t





[/@lm]

[@dm]
evaluate ch_update( "edit_text_color: white" , "home.ch" )
evaluate ch_update( "edit_background: black" , "home.ch" )
MessageBox alert Turned into Dark mode! Please restart the programm.
exit
SetVar *updated 1
[/@dm]

#END