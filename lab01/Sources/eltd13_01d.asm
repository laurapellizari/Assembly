;eltd13_01d.asm

;3) Amplie o programa usando a diretiva DS. Assemblar
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
res1    ds.b    3       ;
c5      dc.b    $bb
res2    ds.b    $c
c6      dc.b    "fim"

        end  

;Amplie o programa anterior usando mais diretivas DS (W, L)  



                              

