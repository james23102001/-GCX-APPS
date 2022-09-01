#
#				Text editor example using GC tk; need at least GC_tk v.1.2
#

#A simple text editor, made with tk
use tk

#Default values
Title: Text Editor
Width: 500
Size: 500
AppIcon: icon.png

#Edit values. They're not like win32 ones
Edit.BeginX: 200
Edit.EndX: 640
Edit.BeginY: 205
Edit.EndY: 600

#At loading, execute this function
Onload: @create

#This is commented because it's not production version
#If you export this as standalone, please uncomment this part.
#If your app is installed, load it on display
OnDisplay: @loadInstalled

#Function to create the ToolBar
[@create]
SetVar *updated 0
evaluate ["File", "Params"]
SetVar *Big LASTRESULT
evaluate [["Open","Save", "Save As", "Close"], ["Theme","About"]]
SetVar *Sub LASTRESULT
evaluate [["@open", "@save", "@saveAs", "@close"], ["@change", "@about" ] ]
SetVar *Act LASTRESULT
ToolBar *Big *Sub *Act
[/@create]

#Function to load the param file
[@loadInstalled]
evaluate len(self.vars.getvar("MAIN_ARGS"))
turn LASTRESULT into int
compare LASTRESULT 0
if 5 then
	evaluate ' '.join(self.vars.getvar("MAIN_ARGS")[0:])
	SetEditText file LASTRESULT
	end
end
[/@loadInstalled]

#Function to open and load file. Save the fileName for after usage.
[@open]
SetEditText val
OpenFile $TEXT
SetVar *loaded LASTRESULT
LoadFile *loaded
end
[@open]

#Function to save File. It handle exception on fileName to save or saveAs
[@save]
try @sv else @saveAs
MessageBox Saved File Saved!
end
[/@save]

#Function wich save a known file
[@sv]
SaveFile *loaded
end
[/@sv]

#Function wich save a new file
[@saveAs]
SaveFile
end
[/@saveAs]

#Just to quit app
[@close]
exit
[/@close]

#The theme picker.
[@change]
create window setup.ch
exit
[/@change]

#The about part.
[@about]
MessageBox About Made by James LILIOU for Game Center!
end
[/@about]

[@update]
compare *updated 0
if 0 then
	end
SetVar *updated 0
reset
end
[/@update]

[events]
Control.o: @open
Control.O: @open
Control.s: @save
Control.S: @saveAs
Control.q: @close
Control.Q: @close
FocusIn: @update















[/events]


#DYNAMIC PART OF THEME BUTTON
edit_text_color: black
edit_background: white
#END