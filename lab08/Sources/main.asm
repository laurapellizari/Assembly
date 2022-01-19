; Sejam r e s variáveis de duplo byte e binários sinalizados. Faça um programa para multiplicar r e
; s. Coloque os resultados nas variáveis: (1) rs4bp ou rs4bn – respectivamente, para valores
; positivos ou negativos; (2) rs2bp ou rs2bn – respectivamente, para valores positivos ou negativos
; arredondados. Não usar variáveis ou áreas extras de memória. O programa é cíclico. Faça as
; designações e alocações necessárias.
  
        absentry        inic
rom     equ      $4000  ;end.mem.ROM
ram     equ      $1000
nb      equ      $10

;---
        org     ram             ;inic.área programa
r       ds.b    nb
        org     ram+2*nb            ;inic.área programa
s       ds.b    nb
        org     ram+4*nb
rs4bp   ds.b    2*nb
        org     ram+8*nb
rs4bn   ds.b    2*nb
          
        org     rom 
        
inic    ldy     #r
p0      ldd     #s 
p1      emuls 
        bpl     p2
        staa    rs4bn   
p2      stx     rs4bp
        
        iny 
        decb
        bne     p1  
             
        bra     inic   
        end           ;diretiva