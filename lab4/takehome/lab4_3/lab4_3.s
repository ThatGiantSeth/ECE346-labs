.text /* executable code follows */
.global _start

_start:
LDR R2, =0x1000
LDR R3, [R2]
MOV R4, R3

LOOP1:
MOV R5, #0
SUB R4, #1
CMP R4, #0
BEQ STOP

LOOP2:
ADD R5, #1
CMP R5, R4
BGT LOOP1

MOV R6, R5
ADD R6, #1

LDR R7, [R2, R5, LSL #2]
LDR R8, [R2, R6, LSL #2]

CMP R7, R8
BGT SWAP
B LOOP2

SWAP:
STR R8, [R2, R5, LSL #2]
STR R7, [R2, R6, LSL #2]
B LOOP2

STOP:
B STOP

LIST:
.word 10, 43, 25, 0, 4, 31, 36, 0, 55, 13, 23