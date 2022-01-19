;Endere�amento IMEDIATO  � *[c�digo fonte]*
;Programa escreve a partir de endere�amento imediato e inerente 47+27+85 guardados em B
        absentry        inic
rom     equ      $4000  ;end.mem.ROM
ram     equ      $1000
nb      equ      8

;---
        org     ram             ;inic.�rea programa

n       ds.b    nb

        org     ram+2*nb            ;inic.�rea programa

m       ds.b    nb
       
        org     rom 
        
inic    ldy     #m
p0      ldab    #nb 
p1      ldaa    0,y
        staa    m-n,y
        iny 
        decb
        bne     p1  
             
        bra     inic   
        end           ;diretiva