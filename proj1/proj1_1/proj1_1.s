.include "gcd.s"
.equ DDR_END, 0x3FFFFFFF

.text /* executable code follows */
.global _start

_start:

    MOV SP, #DDR_END - 3
    LDR R1, a
    LDR R2, b

    STR R1, [SP]
    SUB SP, SP, #4
    STR R2, [SP]
    SUB SP, SP, #4

    BL GCD

    ADD SP, SP, #4
    LDR R3, [SP]
    LDR R4, =ANS
    STR R3, [R4]

STOP:
    B STOP;

a: .word 1261
b: .word 2425
ANS: .space 4