; Arquivo: multi.nasm
; Curso: Elementos de Sistemas
; Criado por: Luciano Soares
; Data: 27/03/2017
; Multiplica o valor de RAM[1] com RAM[0] salvando em RAM[3]
; Assuma valores inteiros

PREPARATION:
    leaw $3, %A
    movw $0, (%A)

; --------------------------- ;

WHILE:
    leaw $0, %A
    movw (%A), %D
    leaw $END, %A
    je ;jump equal, aka jump if $D == 0
    nop

    ; adds ram1 to ram3, as long as while runs
    leaw $1, %A 
    movw (%A), %D
    leaw $3, %A
    addw (%A), %D, %D
    movw %D, (%A)

    ; does ram0 - 1
    leaw $0, %A 
    movw (%A), %D
    decw %D
    movw %D, (%A)

    leaw $WHILE, (%A)
    jmp
    nop

; --------------------------- ;

END:
