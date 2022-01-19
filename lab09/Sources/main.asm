        absentry        inic
rom     equ      $4000  ;end.mem.ROM
ram     equ      $1000
nb      equ      8
portb   equ      $1
ddrb    equ      $3
vreset  equ      $fffe
;---
        org     ram             ;inic.área programa
var1    dc.b    $01
         
        org     rom 
        
inic    bclr    ddrb,$fe ; ddrb = $fe, portb[7-1] = entrada
        bset    ddrb,$01 ; ddrb=$01, portb[0]=saída
        bclr    portb,$01 ; portb[0] = 0
pk0     ldaa    var1
        staa    portb 
        coma     
        staa    var1
        bra     pk0
        
                     
        org     vreset
vreset_ dc.w    inic
   
        end           ;diretiva