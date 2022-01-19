;Sejam Pi, Qi, Ri e Si, i = 0, ... 7. Calcule a soma (pi*Ri + Qi*Si)
; Pi = $1000; Qi = $1010; Ri = $1020; Si = $1030; M(soma) = $1040
        absentry        inic
rom     equ      $4000  ;end.mem.ROM
ram     equ      $1000
nb      equ      $10

;---
        org     ram             ;
Pi      ds.b    1
        org     ram+nb             ;
Qi      ds.b    1
        org     ram+2*nb             ;
Ri      ds.b    1
        org     ram+3*nb             ;
Si      ds.b    1
        org     ram+4*nb             ;
M       ds.b    4
        org     ram+5*nb
k       ds.b    1

    
        org     rom             
inic    ldaa    #Pi
p0      ldab    #Ri 
        lds     $2fdb
        ldx     #k
        mul 
        pshd   
        ldaa    #Qi
        ldab    #Si
        mul
        pshd
        inca
        incb
        cpx     #k-8
        bne     p0  
             
        bra     inic   
        end           ;diretiva