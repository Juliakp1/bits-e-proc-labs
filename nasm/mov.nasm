; Elementos de Sistemas : 2018a
; Rafael Corsi
; Hardware : Z0.1
;
; Data :
;    - Dez 2018
; Descrição :
;    - Movimentação de dados da memoria RAM
;
; RAM[0] = RAM[1]
; RAM[1] = RAM[0]
; RAM[3] = 1

; saves ram[0] in ram[2]
leaw $0 %A 
movw (%A), %D
leaw $2 %A 
movw %D, (%A)

; saves ram[1] in ram[0]
leaw $1 %A 
movw (%A), %D
leaw $0 %A 
movw %D, (%A)

; goes back to ram[2] and saves in ram[1]
leaw $2 %A 
movw (%A), %D
leaw $1 %A 
movw %D, (%A)

; saves 1 in ram[3]
leaw $3 %A 
movw $1, (%A)