;7.1a – Seja v1 um vetor com 8 bytes. Faça um programa para multiplicar cada
;byte de v1 pela variável vk e guarde resultado (res) em local apropriado. Programa
;cíclico. (v1->$1030, vk1->$1000).

        absentry        inic
rom     equ      $4000  ;end.mem.ROM
ram     equ      $1000
nb      equ      $10
vreset  equ      $fffe
;---
        org     ram             ;inic.área programa

vk1     ds.b    nb

        org     ram+nb            ;inic.área programa

vk      ds.b    1
       
        org     ram + 3*nb
v1      ds.b    nb/2
        
        org     rom 
        
inic    ldx     #v1
        ldy     #vk1
p1      ldaa    0,x
        ldab    vk 
        mul  
        std     0,y
        inx
        iny  
        iny
        cpx     #v1+nb/2
        bne     p1     
        bra     inic  
        org     vreset
vreset_ dc.w    inic 
        end           ;diretiva