!cpu 6502 

!to "turning.prg",cbm 

* = $0801                                ; BASIC start address (#2049) 

!byte $0d,$08,$dc,$07,$9e,$20,$34,$39   ; BASIC loader to start at $c000... 

!byte $31,$35,$32,$00,$00,$00           ; puts BASIC line 2012 SYS 49152 

circletab100  !byte    3,4,5,42,46,81,87 
              !byte   121,127,161,167 
              !byte   201,207,242,246 
circletab200  !byte    3,4,5              
                
cir=0
cir2=0
  scr1=$0500
  scr2=$0618
  * = $c000  
 x=0
lod 
 
start
 
  
 
again
 
clc

 lda circletab100,y
  iny

 sta cir
  
 inc $0790

lda $0790

 ldx cir
 

 sta scr1,x
 sta $d900,y
 lda #0
 cmp #$ff
 beq next
next
 lda circletab200,y
 
 sta cir2
 
 
 ldx cir2
 
  
 inc $0790

lda $0790
 sta scr2,x
  sta $da00,y
lda #0
  cmp $ff
 beq next
 
 jmp again
 

   rts
 
  
   
 
 
  
   ;
 
  
  

                 ; 0 0 1 1 1 0 0 
                 ; 0 1 0 0 0 1 0 
                 ; 1 0 0 0 0 0 1 
                 ; 1 0 0 0 0 0 1     
                 ; 1 0 0 0 0 0 1 
                 ; 0 1 0 0 0 1 0 
                 ; 0 0 1 1 1 0 0 
  !macro VARIABLES {
               
  


;random !byte 43,63,75,34,63,4,235,63,45,67,34,23,63,73,45,73,45,73,45,23,64,74,84,54,34,73,45,73,45,73,45,73
           
}
  
  
+VARIABLES 
