
; system pointers
clear = $e544 ;
scnkey = $ff94
getin = $ffe4 ;
joy= $dc00 
ciatimerinterruptL =	$dc0d
ciatimerinterruptH = 	$dd0d
rasterbeam =			$d01a
;joyup =   $7e
;joydown =   $7d
;joyleft =   $7b 
;joyright =   $77
;joyunp=  $7f
joyup =   126
joydown =   125
joyleft =   123 
joyright =   119
joyunp=  $7f
upkey = 		$c200
downkey =		$c1ff
leftkey =		$c1fe
rightkey = 		$c1fd
quitkey = 		$c1fc
startkey =		$c1fb
firekey = 0
controlskey = 	$c1fa
optionskey =	$c1f9
returntomenukey = $c1f8
currentscreen =	$c1f7
menuscreen = 	$c1f6
controlsscreen = $c1f5
optionsscreen = $c1f4
lastkey=$f6
blackblock = 		$c201 ; background space character
whiteblock = 		$c202 ; collision square block value
bordercolour = 		$c203
snakespeed = 		$c204 ; snake speed (to increase or decrease)
scoreones = 		$c205 ; pretty sure that this is why you see scores with leading zeros - ones column
scoretens = 		$c206 ; tens column value of score, runs 0-9
startposition = 	$c207 ; where first snake head is
appleblock =		$c208 ; apple character value
currentdirection =	$c209 ; currently oriented snake heading (left, right, etc.)
currentpositionL = 	$c210 ;  snake head current position in screen ram low
currentpositionH = 	$c211 ; snake head current position in screen ram high
 
applepositionL = 	$c212 ; first and second bytes of screen address where to put apple
applepositionH = 	$c213

; maybe have levels so don't have to worry about 255 limit - never get to that as player moves to harder level
snakelengthL = 		$c214 
snakelengthH = 		$c215 ; first and second bytes of snake length
snakesegmentsL = 	$c216 ;
snakesegmentsH = 	$c217 ; first and second bytes of total screen addresses in order that make up the snake (2, with lo/hi bytes)

menutextline1 !scr "bridges over troubles!#"
menutextline2 !scr "fire to start game#"
menutextline3 !scr "if it didn't try pushing it again!#"
menutextline4 !scr "q to quit#"
menutextline5 !scr "2022 by keyvan mehrbakhsh#"
scoretext     !scr "score: "

controlstextline1 !scr "you pressed c button why?#"
controlstextup !scr "1 you liked to?#"
controlstextleft !scr "2 it was an accident?#"
controlstextdown !scr "forgive you?#"
controlstextright !scr "it won't happen again?#"
controlstextquit !scr "q to quit#"
controlstextstart !scr "e to start#"
controlstextreturn !scr "r to return to menu#"
title1 !scr "jibra#"
optionstextline1 !scr "jibra options#"
optionscomingsoon !scr "this is a route to another life#"








