;Endere�amento INERENTE (INH) � *[c�digo fonte]*
;Programa escreve a partir de endere�amento inerente A = $0c B=$60
        absentry        inicio
rom     equ      $4000  ;end.mem.ROM
;---
        org     rom             ;inic.�rea programa
inicio  clra            ; zerar A
        clrb            ; zerar B
        ldaa    #47     ; a = 47
        ldab    #27     ; b = 27
        aba             ; a = 47 +27
        ldab    #85     ; b= 85
        aba             ; a = 47 +27 +85
        tab          
aki     bra     aki     ;"parar"programa
        end             ;diretiva