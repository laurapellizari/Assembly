;eltd13_01b.asm
;2) Amplie o programa esando a diretiva DC. Para valores
;constantes (byte, duplo byte, ect). Assemblar o programa 
;e analisar o arquivo *.LST  


        org     $1000            ;base hexadecimal
        dc.b    "eltd13"         ;base decimal
        org     2000    
mes1    dc.b    "mensagem 1"
mes2    dc.b    "teste 2"
;
        org     $1200
c1      dc.b    22,$22,@22             ;byte     $ = hexadecimal, @ = octal
c2      dc.w    245,567,55678,$4cd3                     ;duplo byte
        end    




                              

