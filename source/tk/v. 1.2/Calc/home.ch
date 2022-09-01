#Tk calc, by James LILIOU
#A simple eval based calc with GC_tk
#Please rate it!
#Use at least GC_tk v 1.2 to run this programm

#We will use this core
use tk

#Screen Measures
Width: 300
Size: 400

#Then the title
Title : Calculator(By_James_LILIOU)

#Background image
Background : bg.gif

#The installed icon
AppIcon : icon.png

#Onload values
Onload : @[SetVar_*content_0;SetVar_*result_0;SetVar_*op_"";end]

#The input field.
Input.nb : 1
Input1 : 0
Input1.id : 0

#Position
0.x : 100
0.y : 30

#Same for all other widgets

button.width : 50

buttons.nb : 21

button1: 1
button1.id: 1
1.x: 10
1.y: 70
1.link: @1

button2: 2
button2.id: 4
4.x: 110
4.y: 70
4.link: @2

button3: 3
button3.id: 7
7.x: 210
7.y: 70
7.link: @3

button4: 4
button4.id: 2
2.x: 10
2.y: 100
2.link: @4

button5: 5
button5.id: 5
5.x: 110
5.y: 100
5.link: @5

button6: 6
button6.id: 8
8.x: 210
8.y: 100
8.link: @6

button7: 7
button7.id: 3
3.x: 10
3.y: 130
3.link: @7

button8: 8
button8.id: 6
6.x: 110
6.y: 130
6.link: @8

button9: 9
button9.id: 9
9.x: 210
9.y: 130
9.link: @9

button10: +
button10.id: 10
10.x: 10
10.y: 160
10.link: @+

button11: -
button11.id: 11
11.x: 110
11.y: 160
11.link: @-

button12: x
button12.id: 12
12.x: 210
12.y: 160
12.link: @x

button13: =
button13.id: 13
13.x: 10
13.y: 190
13.link: @=

button14: /
button14.id: 14
14.x: 110
14.y: 190
14.link: @/

button15: pow
button15.id: 15
15.x: 210
15.y: 190
15.link: @pow

button16: sqrt
button16.id: 16
16.x: 10
16.y: 220
16.link: @sqrt

button17: Off
button17.id: 17
17.x: 110
17.y: 220
17.link: @off

button18: Erase
button18.id: 18
18.x: 210
18.y: 220
18.link: @erase

button19: (
button19.id: 19
19.x: 10
19.y: 250
19.link: @(

button20: )
button20.id: 20
20.x: 210
20.y: 250
20.link: @)

button21: 0
button21.id: 21
21.x: 110
21.y: 250
21.link: @0

#Equal function
#Get content eval
#Then print it into result field
[@=]
evaluate eval(self.vars.getvar("*content"))
SetInputText 0 LASTRESULT
SetVar *content 0
end
[/@=]

#Erase Function
#Use a lambda func to delete last car
#Call lambda func using evaluate
#Then change the input content
[@erase]
evaluate lambda text, len : text[0:-int(len)]
SetVar *Sub LASTRESULT
evaluate self.vars.getvar("*Sub")(self.vars.getvar("*content"), len(self.vars.getvar("*text")))
SetInputText 0 LASTRESULT
SetVar *content LASTRESULT
end
[/@erase]

#1 function, delete content if 0
#then put 1 in input
[@1]
compare *content 0
if 0 then
	SetVar *content 1
	SetInputText 0 1
	end
SetVar *text 1
function changeText continue
[/@1]

#Same for other buttons
[@2]
compare *content 0
if 0 then
	SetVar *content 2
	SetInputText 0 2
	end
SetVar *text 2
function changeText continue
[/@2]

[@3]
compare *content 0
if 0 then
	SetVar *content 3
	SetInputText 0 3
	end
SetVar *text 3
function changeText continue
[/@3]

[@0]
compare *content 0
if 0 then
	SetVar *content 0
	SetInputText 0 0
	end
SetVar *text 0
function changeText continue
[/@0]

[@4]
compare *content 0
if 0 then
	SetVar *content 4
	SetInputText 0 4
	end
SetVar *text 4
function changeText continue
[/@4]

[@5]
compare *content 0
if 0 then
	SetVar *content 5
	SetInputText 0 5
	end
SetVar *text 5
function changeText continue
[/@5]

[@6]
compare *content 0
if 0 then
	SetVar *content 6
	SetInputText 0 6
	end
SetVar *text 6
function changeText continue
[/@6]

[@7]
compare *content 0
if 0 then
	SetVar *content 7
	SetInputText 0 7
	end
SetVar *text 7
function changeText continue
[/@7]

[@8]
compare *content 0
if 0 then
	SetVar *content 8
	SetInputText 0 8
	end
SetVar *text 8
function changeText continue
end
[/@8]

[@9]
compare *content 0
if 0 then
	SetVar *content 9
	SetInputText 0 9
	end
SetVar *text 9
function changeText continue
[/@9]

[@+]
SetVar *text +
function changeText continue
[/@+]

[@-]
SetVar *text -
function changeText continue
[/@-]

[@x]
evaluate "*"
SetVar *text LASTRESULT
function changeText continue
[/@x]

[@/]
SetVar *text /
function changeText continue
[/@/]

[@sqrt]
evaluate "**0.5"
SetVar *text LASTRESULT
function changeText continue
[/@sqrt]

[@)]
compare *content 0
if 0 then
	SetVar *content )
	SetInputText 0 )
	end
SetVar *text )
function changeText continue
[/@)]

[@(]
compare *content 0
if 0 then
	SetVar *content (
	SetInputText 0 (
	end
SetVar *text (
function changeText continue
[/@(]

[@pow]
evaluate "**"
SetVar *text LASTRESULT
function changeText continue
[/@pow]

#ChangeText function
#Concatenate text to content,
#then change the input content
[@changeText]
evaluate self.vars.getvar("*content") + self.vars.getvar("*text")
SetVar *content LASTRESULT
SetInputText 0 *content
end
[/@changeText]

#Just deletes the input content
[@off]
SetVar *content ""
SetInputText 0 0
end
[/@off]

#May get UPDATES.
#Thank you!