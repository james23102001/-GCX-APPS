#cfg.ch
Title: Change the style
Width: 140
Size: 100

Onload: @toTop

[@toTop]
evaluate self.geometry( '+0+0' )
end
[/@toTop]

buttons.nb: 1
button1: OK
button1.id: 12
12.y: 50
12.x: 15
12.link: app/scripts/set.gcs

onDisplay: app/scripts/cfg.gcs
