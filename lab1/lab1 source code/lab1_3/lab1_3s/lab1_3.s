.include    "address_map_arm.s" 

.text        /* executable code follows */
.global     _start 
_start:                         
	LDR     R2, =LED_BASE   // base address of LED lights
	LDR		R3, =0b00000001 // LED right bound
	LDR 	R4, =0b10000000 // LED left bound
	LDR     R5, =0X02FFFFFF // for delay
	MOV		R6, R4          // R6 --> LED initialization
	MOV 	R7, #0 		// R7 counter

DISPLAY:                     
    STR     R6, [R2]        // load SW switches

DELAY:
	ADD 	R7, R7, #1	// R7 = R7 + 1
	CMP 	R7, R5
	BEQ		CHECK
	B		DELAY

CHECK:
	MOV 	R7, #0
	CMP		R6, R3
	BEQ 	RESET
	LSR		R6, R6, #1
	B		DISPLAY

RESET:
	MOV		R6, R4
	B 		DISPLAY


