;eltd13_01a.asm
;1) Escreva um programa usando as diretivas ORG, DC e END. 
;A diretiva DC � apropriada para uso de caracteres. 
;Use-a para v�rias possibilidades de caracteres. Use mais
;de uma base n�merica p/ ORG. 
;Assemblar o programa e analisar o arquivo *.LST

        org     $1000            ;base hexadecimal
        dc.b    "eltd13"         ;base decimal
        org     2000    
mes1    dc.b    "mensagem 1"
mes2    dc.b    "teste 2"
        end    

;1a) Expandir o exercicio outras bases numericas. F�=a�a varios DC
;com e sem label. Experimente praticamente todas as letras e 
;simbolos 



                              

