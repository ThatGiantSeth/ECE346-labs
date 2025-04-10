.include "address_map_arm.s"

.text /* executable code follows */
.global _start

_start:
LDR R2, =JP7_BASE
LDR R3, =LED_BASE

LOOP:
LDR R9, [R2]
STR R9, [R3]
B LOOP