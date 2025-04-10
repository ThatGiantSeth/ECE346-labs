.include "address_map_arm.s"

.equ B, 4
.equ D, 6

.text /* executable code follows */
.global _start

_start:

LDR R1, =JP1_BASE

LDR R2, [R1]
AND R3, R2, #0b11110000
LSR R3, #4

LDR R4, =B

AND R5, R2, #0b00001111

LDR R6, =D

MUL R7, R3, R4
MUL R8, R5, R6

ADD R7, R8
LDR R9, =ANS

STR R7, [R9]

STOP:
    B STOP

ANS: .space 4
