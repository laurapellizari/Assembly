
rom     equ     $4000   ;diretiva

        org     rom     
        clra            ;a=0
        coma            ;a=$ff
        clrb            ;b=0
        incb            ;b=1
        aba             ;a+b >a
aki     bra     aki     
        end