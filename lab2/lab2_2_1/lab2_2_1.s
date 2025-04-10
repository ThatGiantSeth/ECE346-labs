.equ B, 4
.equ D, 6

.text /* executable code follows */
.global _start

_start:

LDR R1, A
LDR R2, =B
LDR R3, C
LDR R4, =D

MUL R5, R1, R2
MUL R6, R3, R4

ADD R5, R6
LDR R7, =ANS

STR R5, [R7]

STOP:
    B STOP

A: .word 15
C: .word 5
ANS: .space 4
