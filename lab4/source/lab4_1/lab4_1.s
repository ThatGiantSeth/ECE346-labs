.text   /* executable code follows */
.global _start

_start:
    LDR R2, =LIST
    LDR R3, [R2]
    MOV R4, #0
    MOV R5, #0

LOOP:
    CMP R4, R3
    BEQ DONE
    LDR R6, [R2, #4]!
    ADD R5, R5, R6
    ADD R4, R4, #1
    B LOOP

DONE:
    LDR R7, =ANS
    STR R5, [R7]

STOP:
    B STOP

LIST:
.word 10, 43, 25, 0, -4, 31, -36, 0, 55, -13, 23

ANS:
.space 4