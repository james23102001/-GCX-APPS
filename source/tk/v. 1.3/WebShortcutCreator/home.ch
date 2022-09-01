#Simple tool to create web Shortcuts.
#Made by JAMES LILIOU

#Basic informations...
Title : Web shortcut saver
Width : 600
AppIcon: icon.png
use tk

#One Input, with default text to ease the work
Input.nb: 1
Input1: https://www.
Input1.id: 0
0.x: 250
0.y: 10

entry.size: 70

#One button to save the thing
buttons.nb : 1
button1 : Save the shortcut
button1.id: 1
1.x: 460
1.y: 10

#One Text, just to show
Text.nb: 1
Text1: Your website adress
Text1.id: 2
2.x: 90
2.y: 10

#It's not complex,i will use the same file
1.link: @start

[@start]
try @mk else @error
end
[/@start]

[@error]
MessageBox Sorry! Please, verify your entered adress.
end
[/@error]


#The button function
[@mk]
#Get the url,
GetInput 0
SetVar *url LASTRESULT
#Evaluate the basic string, and concatenate
evaluate "[ InternetShortcut ] \nURL=" +{*url}
SetVar *FileText LASTRESULT
#Now, let's find the name we will give to this. Can be two types : ?//www.{name}.? or localhost/{name} for .php localhost apps
try @normal else @local
#The script can be used in any project, just mention its params.
execute createFile.gcs 1
#It's over!
MessageBox Done! Shortcut created!
end
[/@mk]

#The normal link : We will just cut the string to get the name. Will fail if local because local links does not have dots, shall fail for mailto too, so we'll have to add a test.
[@normal]
#Mailto are a little different
evaluate {*url}.startswith( 'mailto' )
compare LASTRESULT True
if 0 then
	evaluate {*url}.split( ':' ) [1].split( '@' ) [0]+ '.url'
	SetVar *Filename LASTRESULT
	end
evaluate {*url}.split( '.' ) [-2]+ '.url'
SetVar *Filename LASTRESULT
end
[/@normal]

#local link : Same there!
[@local]
evaluate {*url}.split( '/' ) [-1]+ '.url'
SetVar *Filename LASTRESULT
end
[/@local]

#style
Background: bg.png
main_text_color: #1F5AEF
main_text_size: 11

#To see errors if on dev mode
#debug: yes