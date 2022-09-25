!cpu 6502 

!to "walx.prg",cbm    ; output file 



; useful links  

; http://sta.c64.org/cbm64scr.html 

; http://www.1000bit.it/support/manuali/commodore/c64/Machine_Code_Games_Routines_for_the_Commodore_64.pdf 

; aa 

; http://sta.c64.org/cbm64mem.html 

; http://www.binaryhexconverter.com/decimal-to-hex-converter 

; http://sta.c64.org/cbm64krnfunc.html 



;============================================================ 

; BASIC loader with start address $c000 

;============================================================ 

        

         
* = $0801                                ; BASIC start address (#2049) 

!byte $0d,$08,$dc,$07,$9e,$20,$34,$39   ; BASIC loader to start at $c000... 

!byte $31,$35,$32,$00,$00,$00           ; puts BASIC line 2012 SYS 49152 
 
!source "symbols.asm"
!source "graphics.asm"
!source "sounds.asm"
!source	"menu.asm"
!source "core.asm" 



!source "collision.asm"

!source "main.asm"


cmem0    = $2000
cmem1    = $2100
cmem2    = $2200
cmem3    = $2300
cmem4    = $2400
cmem5    = $2500
cmem6    = $2600
cmem7    = $2700

 

cset0    = $d000    ; this is where
cset1    = $d100    ; the 6510 sees
cset2    = $d200    ; the char data
cset3    = $d300    ; under the  
cset4    = $d400
cset5    = $d500
cset6    = $d600
cset7    = $d700

cdat1
         !byte $00,$00,$00,$00 ;[спаце].
         !byte $00,$00,$00,$00
         !byte $00,$01,$06,$01 ;thick 1.
         !byte $01,$01,$01,$00
         !byte $00,$1f,$00,$07 ;thick 2.
         !byte $18,$18,$1f,$00
         !byte $00,$1f,$00,$01 ;thick 3.
         !byte $00,$00,$1f,$00
         !byte $00,$80,$00,$80 ;thickr1.
         !byte $80,$80,$80,$00
         !byte $00,$e0,$18,$e0 ;thickr2.
         !byte $00,$00,$f8,$00
         !byte $00,$e0,$18,$e0 ;thickr3.
         !byte $18,$18,$e0,$00
         !byte $00,$38,$44,$54 ;' = @.
         !byte $5c,$40,$3c,$00
         !byte $ff,$38,$44,$38 ;(
         !byte $44,$44,$38,$ff
         !byte $ff,$38,$44,$44 ;)
         !byte $34,$04,$04,$ff
         !byte $10,$00,$10,$ba ;[star] .
         !byte $10,$00,$10,$00
         !byte $00,$01,$02,$03 ;+
         !byte $04,$05,$06,$07
         !byte $00,$00,$00,$00 ;,
         !byte $00,$00,$10,$20
         !byte $00,$00,$00,$7c ;-
         !byte $00,$00,$00,$00
         !byte $00,$00,$00,$00 ;.
         !byte $00,$00,$10,$00
         !byte $00,$10,$10,$10 ;/ = !
         !byte $10,$00,$10,$00

         !byte $00,$38,$44,$54 ;0
         !byte $54,$44,$38,$00
         !byte $00,$10,$20,$10 ;1
         !byte $10,$10,$10,$00
         !byte $00,$78,$04,$38 ;2
         !byte $40,$40,$7c,$00
         !byte $00,$78,$04,$18 ;3
         !byte $04,$04,$78,$00
         !byte $00,$44,$44,$44 ;4
         !byte $74,$04,$04,$00
         !byte $00,$7c,$40,$78 ;5
         !byte $04,$04,$78,$00
         !byte $00,$30,$40,$78 ;6
         !byte $44,$44,$38,$00
         !byte $00,$7c,$00,$08 ;7
         !byte $10,$10,$10,$00
         !byte $00,$38,$44,$38 ;8
         !byte $44,$44,$38,$00
         !byte $00,$38,$44,$44 ;9
         !byte $34,$04,$04,$00
         !byte $00,$01,$02,$03 ;:
         !byte $04,$05,$06,$07
         !byte $00,$01,$02,$03 ;;
         !byte $04,$05,$06,$07
         !byte $00,$01,$02,$03 ;<
         !byte $04,$05,$06,$07
         !byte $00,$01,$02,$03 ;=
         !byte $04,$05,$06,$07
         !byte $00,$01,$02,$03 ;>
         !byte $04,$05,$06,$07
         !byte $00,$01,$02,$03 ;?
         !byte $04,$05,$06,$07

         
 
cdat2
         !byte $ff,$76,$2c,$34 ;bouncer.
         !byte $2c,$76,$ff,$00
         !byte $00,$04,$0c,$14 ;а
         !byte $24,$5c,$44,$00
         !byte $00,$78,$44,$58 ;б
         !byte $44,$44,$5c,$00
         !byte $00,$3c,$40,$40 ;ц
         !byte $40,$40,$7c,$00
         !byte $00,$70,$48,$44 ;д
         !byte $44,$44,$5c,$00
         !byte $00,$7c,$40,$58 ;е
         !byte $40,$40,$7c,$00
         !byte $00,$7c,$40,$58 ;ф
         !byte $40,$40,$40,$00
         !byte $00,$3c,$40,$40 ;г
         !byte $44,$44,$7c,$00
         !byte $00,$44,$44,$5c ;х
         !byte $44,$44,$44,$00
         !byte $00,$10,$10,$10 ;и
         !byte $10,$10,$10,$00
         !byte $00,$08,$08,$08 ;й
         !byte $00,$44,$44,$58 ;к
         !byte $44,$44,$44,$00
         !byte $00,$40,$40,$40 ;л
         !byte $40,$40,$7c,$00
         !byte $00,$44,$2c,$54 ;м
         !byte $44,$44,$44,$00
         !byte $00,$44,$64,$54 ;н
         !byte $4c,$44,$44,$00
         !byte $00,$38,$44,$44 ;о
         !byte $44,$44,$38,$00

         !byte $00,$78,$44,$44 ;п
         !byte $58,$40,$40,$00
         !byte $00,$38,$44,$44 ;я
         !byte $44,$40,$3c,$00
         !byte $00,$78,$44,$44 ;р
         !byte $58,$44,$44,$00
         !byte $00,$3c,$40,$38 ;с
         !byte $04,$04,$78,$00
         !byte $00,$7c,$00,$10 ;т
         !byte $10,$10,$10,$00
         !byte $00,$44,$44,$44 ;у
         !byte $44,$44,$38,$00
         !byte $00,$44,$44,$48 ;ж
         !byte $50,$60,$40,$00
         !byte $00,$44,$44,$44 ;в
         !byte $54,$2c,$44,$00
         !byte $00,$44,$44,$18 ;ь
         !byte $44,$44,$44,$00
         !byte $00,$44,$44,$44 ;ы
         !byte $3c,$04,$38,$00
         !byte $00,$7c,$00,$08 ;з
         !byte $10,$20,$7c,$00
         !byte $01,$02,$06,$0a ;mnt l .
         !byte $18,$2a,$40,$a0
         !byte $80,$40,$a0,$30 ;mnt r .
         !byte $28,$04,$26,$05
         !byte $00,$00,$00,$00 ;mnt top.
         !byte $ff,$11,$44,$00 ;grd lo .
         !byte $00,$00,$00,$00
         !byte $99,$42,$99,$40 ;rnd hi .
         !byte $aa,$55,$ff,$00
         
         
       
