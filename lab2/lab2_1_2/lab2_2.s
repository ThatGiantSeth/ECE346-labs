.include "address_map_arm.s"

.text /* executable code follows */
.global _start

_start:
    LDR R2, =LED_BASE
    LDR R3, =JP1_BASE

LOOP:
    LDR R4, [R3]
    STR R4, [R2]
    B LOOP