.include    "address_map_arm.s" 

.text        /* executable code follows */
.global     _start 
_start:                         
	LDR     R2, =LED_BASE   // base address of LED lights
	LDR		R3, =0b00000001 // LED right bound
	LDR 	R4, =0b10000000 // LED left bound
	LDR     R5, =0X02FFFFFF // for delay
	MOV		R6, R3          // R6 --> LED initialization
	MOV 	R7, #0 		// R7 counter

DISPLAYL:                     
    STR     R6, [R2]        // load SW switches

DELAYL:
	ADD 	R7, R7, #1	// R7 = R7 + 1
	CMP 	R7, R5
	BEQ		CHECKL
	B		DELAYL

CHECKL:
	MOV 	R7, #0
	CMP		R6, R4
	BEQ 	CHECKR
	LSL		R6, R6, #1
	B		DISPLAYL

DISPLAYR:                     
    STR     R6, [R2]        // load SW switches

DELAYR:
	ADD 	R7, R7, #1	// R7 = R7 + 1
	CMP 	R7, R5
	BEQ		CHECKR
	B		DELAYR

CHECKR:
	MOV 	R7, #0
	CMP		R6, R3
	BEQ 	CHECKL
	LSR		R6, R6, #1
	B		DISPLAYR


