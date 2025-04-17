.include "address_map_arm.s"

.text /* executable code follows */
.global _start

_start:
    LDR R1, =SW_BASE
    LDR R2, =KEY_BASE

LOOP:
    LDR R3, =0x1000
    MOV R4, #0
    MOV R5, #1

CHECK_KEY:
    LDR R6, [R2]
    CMP R6, #1
    BLT CHECK_KEY

FIBONACCI:
    MOV R7, #2
    LDR R6, [R1]
    CMP R6, R4
    STR R4, [R3], #4
    BEQ FIB_0
    CMP R6, R5
    STR R5, [R3], #4
    BEQ FIB_1
    BNE FIB_N

FIB_0:
    MOV R8, R4
    B LOOP

FIB_1:
    MOV R8, R5
    B LOOP

FIB_N:
    ADD R8, R4, R5
    STR R8, [R3], #4
    CMP R7, R6
    BEQ LOOP
    MOV R4, R5
    MOV R5, R8
    ADD R7, R7, #1
    B FIB_N