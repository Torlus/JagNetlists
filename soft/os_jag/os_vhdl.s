* Minimal OS Rom - mostly done to ensure that simulation works

* Set up SSP
	dc.l	0x001ffffc
* Entry point
	dc.l	Init
Init:

* Disable interrupts (?)	
	move.w  #0x2700, %sr

	move.l	#0x00000000, %d0
	move.l	%d0, %d1
	move.l	%d0, %d2
	move.l	%d0, %d3
	move.l	%d0, %d4
	move.l	%d0, %d5
	move.l	%d0, %d6
	move.l	%d0, %d7
	movea.l	%d0, %a0
	movea.l	%d0, %a1
	movea.l	%d0, %a2
	movea.l	%d0, %a3
	movea.l	%d0, %a4
	movea.l	%d0, %a5
	movea.l	%d0, %a6
* A7 = SSP, already set
* Set USP to 0x000000
*	move.l	#0xffffff00, %a6
	move.l	%a6, %usp
	
* Jump to "standard" entry point for homebrew games
	lea 	0x00004000, %a0
	jmp		(%a0)
