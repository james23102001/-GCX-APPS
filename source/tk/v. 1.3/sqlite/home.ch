[
Project : SQlite databases, to allow simulations and controls on an SQLite database, by the admin.

****
****		PART 1 : Screen definition
****
]
use tk
Width: 500
Size: 400
Title: SQLITE Databases
AppIcon: SQL.png

Onload: @init
Onquit: @close


buttons.nb: 3
button1: RUN
button1.id: 0
0.x: 200
0.y: 350
0.link: @exec

button2: NEW DATABASE
button2.id: 2
2.x: 110
2.link: @save

button3: OPEN DATABASE
button3.id: 3
3.x: 290
3.link: @open

button.width: 130

Edit.BeginX: 200
Edit.BeginY: 150
Edit.width: 400
Edit.size: 300

LB.y: 200
LB.lines: 100

[events]
Control-o: @open
Control-O: @open
Control-n: @save
Control-N: @save
[/events]

[
Project : SQlite databases, to allow simulations and controls on an SQLite database, by the admin.

****
****		PART 2 : Scripting with gcs
****
]

#Init function. Just to place the window at the top of the screen, and initiate the flag opened to zero.
[@init]
evaluate self.geometry('+0+0')
SetVar *flag.opened 0
end
[/@init]

#Save function, Gets the file name, then connect to database using that name
#Notice : yeah, that's kinda harsh to do it that way, but it's all because connect database does not take a var as param, yeah..
# Setting the const $FILE to $FILE is just to interpret the ch_update line as it is, because the core would replace the constant by its value.
# We enable our flag opened just to notice user can press "RUN" now!
[@save]
evaluate fd.asksaveasfile(mode='wb', defaultextension='.db')
evaluate {LASTRESULT}.name
define $FILE $FILE
evaluate ch_update('define $FILE '+{LASTRESULT}, 'tmp.gcs')
execute tmp.gcs 1
connect database $FILE
SetVar *flag.opened 1
MessageBox OK Database successfully created!
end
[/@save]

#Same than save there!
#But opening an existing database
[@open]
OpenFile 0
define $FILE $FILE
evaluate ch_update('define $FILE '+{LASTRESULT}, 'tmp.gcs')
execute tmp.gcs 1
connect database $FILE
SetVar *flag.opened 1
end
[/@open]

#If the flag opened is still 0 this function will just throw an error
#This functions tries to execute the writen code. If it fails, it will call error function
[@exec]
compare *flag.opened 0
if 0 then
	MessageBox error Connect to a database first!
	end
GetEditText
evaluate {LASTRESULT}.replace('\n', ' ')
SetVar *query LASTRESULT
function run continue
try @run else @error
[/@exec]

#This function runs the sqlite command.
#It uses an eval to run the function because the text does not come from a section
#It will print something only if the query starts with select
[@run]
evaluate self.connect.request_select_all({*query})
SetVar LASTLIST LASTRESULT
evaluate {*query}.lower().startswith('select')
compare LASTRESULT True
if 0 then
	turn LASTLIST into string
	evaluate {LASTLIST}.replace('(', '')
	evaluate {LASTRESULT}.replace('), ', '\n')
	evaluate {LASTRESULT}.replace('[', '')
	evaluate {LASTRESULT}.replace(']', '')
	evaluate "***SELECTION RESULTS\n"+{LASTRESULT}[:-1]
	SetEditText var LASTRESULT
	end
MessageBox OK Query done:
end
[/run]

#Just notice an error occured
[@error]
MessageBox Sorry You got an error in your query!
end
[/@error]

#Just in case...
[@close]
close database
end
[/@close]

#END