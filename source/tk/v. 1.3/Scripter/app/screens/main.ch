#main.ch
Title: Dashboard
Width: 900
Size: 360

[events]
Button-1: app/scripts/actions.gcs
FocusIn: app/scripts/checkUpdate.gcs
[/events]

ondisplay: app/scripts/addWidgets.gcs
onload: app/scripts/addIcons.gcs

Text.nb: 1
Text1: Idee
Text1.id: 9
9.x: 50

Edit.BeginX: 250
Edit.EndX: 900

Edit.BeginY: 135
Edit.EndY: 450

edit_text_size: 14
edit_font: Gabriola
edit_background: white
edit_text_color: #801B00
#END