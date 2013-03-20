* Minimal boot rom

.equ	MEMCON1, 0xf00000
.equ	MEMCON2, 0xf00002
.equ	VMODE, 0xf00028
.equ	HP, 0xf0002e
.equ	HBB, 0xf00030
.equ	HBE, 0xf00032
.equ	HDB1, 0xf00038
.equ	HDE, 0xf0003c
.equ	VP, 0xf0003e
.equ	VBB, 0xf00040
.equ	VBE, 0xf00042
.equ	VS, 0xf00044
.equ	VDB, 0xf00046
.equ	VDE, 0xf00048


* Set up SSP
	dc.l	0x001ffffc
* Entry point
	dc.l	Init
Init:

	move.w	#0x1861, MEMCON1
	move.w	#0x35CC, MEMCON2
	move.w	#850, HP
	move.w	#1711, HBB
	move.w	#158, HBE
	move.w	#1665, HDE
	move.w	#203, HDB1
	move.w	#623, VP
	move.w	#34, VBE
	move.w	#38, VDB
	move.w	#518, VDE
	move.w	#600, VBB
	move.w	#618, VS
*	move.w	#0x06C1, VMODE

* DRAM contents is preloaded in simulation
*	lea.l		Prog_Start, %a0
*	lea.l		0x00004000, %a1
*	move.w	#0x200, %d7
Copy_Loop:
*	move.l	(%a0)+, (%a1)+
*	dbra		%d7, Copy_Loop
	
* Jump to "standard" entry point for homebrew games
	lea.l	0x00004000, %a0
	jmp		(%a0)

Prog_Start:
.incbin "../hello/jag.bin"
Prog_End:
