 * = $4000
!bin "char.chr"   
* = $c000 ; load our program into 49152, 4k ram after BASIC,             ; start address for 6502 code 
 
; set up screen and display memory
; set up our memory to hold character variables

charsetupp
         sei        ; turn off interupts

         lda #$18   ; *=$2000
         sta $d018

         lda $01    ; swap char rom in
         and #251   ; #%11111011
         sta $01    ; maybe?

         ldx #0
 		  
         
csetupaa  
          sei
         lda cset0,x ; get char data
         sta cmem0,x ; store in charmem

         lda cdat1,x
         sta cmem1,x
        
 
     
         
         
         lda cdat2,x
         sta cmem2,x
      
          lda cset3,x
          sta cmem3,x
             lda $4000,x
          sta cmem2,x

         lda cset4,x
         sta cmem4,x

         lda cset5,x
         sta cmem5,x

         lda cset6,x
         sta cmem6,x

         lda cset7,x
         sta cmem7,x
   

         inx
         beq csetupzz
         jmp csetupaa

csetupzz 

         lda $01
         ora #4
         sta $01
cseta  
          
    
    
;          lsr $2000,x
;          lsr $2100,x
;            lsr $2200,x
;          lsr $2300,x
;           lsr $2400,x
;          lsr $2500,x
;            lsr $2600,x
;          lsr $2700,x
         
;          inx
       
         
         
;          beq csetz
;          jmp cseta

csetz 


         
          
         cli





       










setup	lda #81
		sta quitkey ; store q as the quit key
		lda #69
		sta startkey ; store e as the start game key
		lda #65
		sta leftkey
		lda #87
		sta upkey
		lda #68
		sta rightkey
		lda #83
		sta downkey
		lda #67
		sta controlskey
		lda #79
		sta optionskey
		lda #82
		sta returntomenukey
		lda #111
		sta firekey
		lda #01
		sta currentscreen
		sta menuscreen
		lda #02
		sta controlsscreen
		
		jsr clear ;
		lda #160 ; inverted (aka whiteblock) space character code
		sta whiteblock ;
		lda #$20 ; normal space (aka blackblock) character code
		sta blackblock ;
		
		lda #$19
		sta appleblock
		
		lda whiteblock ; little whiteblock guy
		ldx #70
		
		lda #87
		sta currentdirection
		;set border colour
		lda #01
		sta bordercolour
		lda #80
		sta snakespeed
		
		
jsr inithomescreen
jsr menuloop

rts
