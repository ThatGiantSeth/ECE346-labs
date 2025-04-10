.include "address_map_arm.s"

.text /* executable code follows */
.global _start

_start:
    LDR R2, =LED_BASE
    LDR R3, =JP1_BASE
    LDR R4, =KEY_BASE

LOOP:
    LDR R5, [R4]
    CMP R5, #1
    BLT LOOP
    LDR R5, [R3]
    STR R5, [R2]
    B LOOP
