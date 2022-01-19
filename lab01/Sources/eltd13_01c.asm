;eltd13_01c.asm

;3) Amplie o programa usando a diretiva EQU. Assemblar
;o programa e analisar o arquivo *.LST

at1     equ     $c

        org     $1000            ;base hexadecimal
        dc.b    "eltd13"         ;base decimal
        org     2000    
mes1    dc.b    "mensagem 1"
mes2    dc.b    "teste 2"
;
        org     $1200
c1      dc.b    22,$22,@22             ;byte     $ = hexadecimal, @ = octal
c2      dc.w    245,567,55678,$4cd3                     ;duplo byte

c3      dc.b    $ee,$cc,$77
c4      dc.b    at1
        end    

;3a) Amplie o programa anterior usando mais equates.
;4(


                              

