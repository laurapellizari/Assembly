;Endereçamento INERENTE (INH) – *[código fonte]*

        absentry        inicio
rom     equ      $4000  ;end.mem.ROM
;---
        org     rom             ;inic.área programa
inicio  clra            ;zerar A,A=0
        inca            ; a = 1
        asla            ; a = 2
        asla            ; a = 4
        asla            ; a = 8
        inca            ; a =9 
        inca            ; a = 10
        inca            ; a = 11
        inca            ; a = 12
        clrb    
        incb    
        incb
        incb
        aslb
        aslb
        aslb
        aslb
        aslb
        
aki     bra     aki     ;"parar"programa
        end             ;diretiva