opt subtitle "HI-TECH Software Omniscient Code Generator (Lite mode) build 7503"

opt pagewidth 120

	opt lm

	processor	16F877A
clrc	macro
	bcf	3,0
	endm
clrz	macro
	bcf	3,2
	endm
setc	macro
	bsf	3,0
	endm
setz	macro
	bsf	3,2
	endm
skipc	macro
	btfss	3,0
	endm
skipz	macro
	btfss	3,2
	endm
skipnc	macro
	btfsc	3,0
	endm
skipnz	macro
	btfsc	3,2
	endm
indf	equ	0
indf0	equ	0
pc	equ	2
pcl	equ	2
status	equ	3
fsr	equ	4
fsr0	equ	4
c	equ	1
z	equ	0
pclath	equ	10
	FNCALL	_main,_Lcd4_Init
	FNCALL	_main,_Lcd4_Set_Cursor
	FNCALL	_main,_Lcd4_Write_String
	FNCALL	_main,_Lcd4_Shift_Left
	FNCALL	_main,_Lcd4_Shift_Right
	FNCALL	_main,_Lcd4_Clear
	FNCALL	_main,_Lcd4_Write_Char
	FNCALL	_Lcd4_Shift_Left,_Lcd4_Cmd
	FNCALL	_Lcd4_Shift_Right,_Lcd4_Cmd
	FNCALL	_Lcd4_Write_String,_Lcd4_Write_Char
	FNCALL	_Lcd4_Init,_Lcd4_Port
	FNCALL	_Lcd4_Init,_Lcd4_Cmd
	FNCALL	_Lcd4_Set_Cursor,_Lcd4_Cmd
	FNCALL	_Lcd4_Clear,_Lcd4_Cmd
	FNCALL	_Lcd4_Write_Char,_Lcd4_Port
	FNCALL	_Lcd4_Cmd,_Lcd4_Port
	FNROOT	_main
	global	_RB0
psect	text218,local,class=CODE,delta=2
global __ptext218
__ptext218:
_RB0	set	48
	global	_RB1
_RB1	set	49
	global	_RB2
_RB2	set	50
	global	_RB3
_RB3	set	51
	global	_RC1
_RC1	set	57
	global	_RC5
_RC5	set	61
	global	_RD4
_RD4	set	68
	global	_RD5
_RD5	set	69
	global	_RD6
_RD6	set	70
	global	_RD7
_RD7	set	71
	global	_TRISB
_TRISB	set	134
psect	strings,class=STRING,delta=2
global __pstrings
__pstrings:
;	global	stringdir,stringtab,__stringbase
stringtab:
;	String table - string pointers are 1 byte each
stringcode:stringdir:
movlw high(stringdir)
movwf pclath
movf fsr,w
incf fsr
	addwf pc
__stringbase:
	retlw	0
psect	strings
	
STR_1:	
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	101	;'e'
	retlw	99	;'c'
	retlw	116	;'t'
	retlw	114	;'r'
	retlw	111	;'o'
	retlw	83	;'S'
	retlw	111	;'o'
	retlw	109	;'m'
	retlw	101	;'e'
	retlw	32	;' '
	retlw	76	;'L'
	retlw	67	;'C'
	retlw	68	;'D'
	retlw	32	;' '
	retlw	72	;'H'
	retlw	101	;'e'
	retlw	108	;'l'
	retlw	108	;'l'
	retlw	111	;'o'
	retlw	32	;' '
	retlw	87	;'W'
	retlw	111	;'o'
	retlw	114	;'r'
	retlw	108	;'l'
	retlw	100	;'d'
	retlw	0
psect	strings
	file	"lcd interfacing.as"
	line	#
psect cinit,class=CODE,delta=2
global start_initialization
start_initialization:

psect cinit,class=CODE,delta=2
global end_of_initialization

;End of C runtime variable initialization code

end_of_initialization:
clrf status
ljmp _main	;jump to C main() function
psect	cstackCOMMON,class=COMMON,space=1
global __pcstackCOMMON
__pcstackCOMMON:
	global	?_Lcd4_Port
?_Lcd4_Port:	; 0 bytes @ 0x0
	global	??_Lcd4_Port
??_Lcd4_Port:	; 0 bytes @ 0x0
	global	?_Lcd4_Cmd
?_Lcd4_Cmd:	; 0 bytes @ 0x0
	global	?_Lcd4_Init
?_Lcd4_Init:	; 0 bytes @ 0x0
	global	?_Lcd4_Write_Char
?_Lcd4_Write_Char:	; 0 bytes @ 0x0
	global	?_Lcd4_Write_String
?_Lcd4_Write_String:	; 0 bytes @ 0x0
	global	?_Lcd4_Shift_Right
?_Lcd4_Shift_Right:	; 0 bytes @ 0x0
	global	?_Lcd4_Shift_Left
?_Lcd4_Shift_Left:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Lcd4_Clear
?_Lcd4_Clear:	; 2 bytes @ 0x0
	global	Lcd4_Port@a
Lcd4_Port@a:	; 1 bytes @ 0x0
	ds	1
	global	??_Lcd4_Cmd
??_Lcd4_Cmd:	; 0 bytes @ 0x1
	global	??_Lcd4_Write_Char
??_Lcd4_Write_Char:	; 0 bytes @ 0x1
	ds	2
	global	Lcd4_Cmd@a
Lcd4_Cmd@a:	; 1 bytes @ 0x3
	global	Lcd4_Write_Char@temp
Lcd4_Write_Char@temp:	; 1 bytes @ 0x3
	ds	1
	global	??_Lcd4_Clear
??_Lcd4_Clear:	; 0 bytes @ 0x4
	global	?_Lcd4_Set_Cursor
?_Lcd4_Set_Cursor:	; 0 bytes @ 0x4
	global	??_Lcd4_Init
??_Lcd4_Init:	; 0 bytes @ 0x4
	global	??_Lcd4_Shift_Right
??_Lcd4_Shift_Right:	; 0 bytes @ 0x4
	global	??_Lcd4_Shift_Left
??_Lcd4_Shift_Left:	; 0 bytes @ 0x4
	global	Lcd4_Set_Cursor@b
Lcd4_Set_Cursor@b:	; 1 bytes @ 0x4
	global	Lcd4_Write_Char@y
Lcd4_Write_Char@y:	; 1 bytes @ 0x4
	ds	1
	global	??_Lcd4_Set_Cursor
??_Lcd4_Set_Cursor:	; 0 bytes @ 0x5
	global	Lcd4_Write_Char@a
Lcd4_Write_Char@a:	; 1 bytes @ 0x5
	ds	1
	global	??_Lcd4_Write_String
??_Lcd4_Write_String:	; 0 bytes @ 0x6
	global	Lcd4_Write_String@a
Lcd4_Write_String@a:	; 1 bytes @ 0x6
	ds	1
	global	Lcd4_Set_Cursor@a
Lcd4_Set_Cursor@a:	; 1 bytes @ 0x7
	global	Lcd4_Write_String@i
Lcd4_Write_String@i:	; 2 bytes @ 0x7
	ds	1
	global	Lcd4_Set_Cursor@temp
Lcd4_Set_Cursor@temp:	; 1 bytes @ 0x8
	ds	1
	global	Lcd4_Set_Cursor@z
Lcd4_Set_Cursor@z:	; 1 bytes @ 0x9
	ds	1
	global	Lcd4_Set_Cursor@y
Lcd4_Set_Cursor@y:	; 1 bytes @ 0xA
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0xB
	ds	3
psect	cstackBANK0,class=BANK0,space=1
global __pcstackBANK0
__pcstackBANK0:
	global	main@i
main@i:	; 2 bytes @ 0x0
	ds	2
;;Data sizes: Strings 28, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     14      14
;; BANK0           80      2       2
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd4_Write_String@a	PTR unsigned char  size(1) Largest target is 28
;;		 -> STR_1(CODE[28]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd4_Set_Cursor
;;   _Lcd4_Shift_Left->_Lcd4_Cmd
;;   _Lcd4_Shift_Right->_Lcd4_Cmd
;;   _Lcd4_Write_String->_Lcd4_Write_Char
;;   _Lcd4_Init->_Lcd4_Cmd
;;   _Lcd4_Set_Cursor->_Lcd4_Cmd
;;   _Lcd4_Clear->_Lcd4_Cmd
;;   _Lcd4_Write_Char->_Lcd4_Port
;;   _Lcd4_Cmd->_Lcd4_Port
;;
;; Critical Paths under _main in BANK0
;;
;;   None.
;;
;; Critical Paths under _main in BANK1
;;
;;   None.
;;
;; Critical Paths under _main in BANK3
;;
;;   None.
;;
;; Critical Paths under _main in BANK2
;;
;;   None.

;;
;;Main: autosize = 0, tempsize = 3, incstack = 0, save=0
;;

;;
;;Call Graph Tables:
;;
;; ---------------------------------------------------------------------------------
;; (Depth) Function   	        Calls       Base Space   Used Autos Params    Refs
;; ---------------------------------------------------------------------------------
;; (0) _main                                                 5     5      0    1446
;;                                             11 COMMON     3     3      0
;;                                              0 BANK0      2     2      0
;;                          _Lcd4_Init
;;                    _Lcd4_Set_Cursor
;;                  _Lcd4_Write_String
;;                    _Lcd4_Shift_Left
;;                   _Lcd4_Shift_Right
;;                         _Lcd4_Clear
;;                    _Lcd4_Write_Char
;; ---------------------------------------------------------------------------------
;; (1) _Lcd4_Shift_Left                                      0     0      0     110
;;                           _Lcd4_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd4_Shift_Right                                     0     0      0     110
;;                           _Lcd4_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd4_Write_String                                    3     3      0     268
;;                                              6 COMMON     3     3      0
;;                    _Lcd4_Write_Char
;; ---------------------------------------------------------------------------------
;; (1) _Lcd4_Init                                            2     2      0     198
;;                                              4 COMMON     2     2      0
;;                          _Lcd4_Port
;;                           _Lcd4_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd4_Set_Cursor                                      7     6      1     380
;;                                              4 COMMON     7     6      1
;;                           _Lcd4_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd4_Clear                                           0     0      0     110
;;                           _Lcd4_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd4_Write_Char                                      5     5      0     178
;;                                              1 COMMON     5     5      0
;;                          _Lcd4_Port
;; ---------------------------------------------------------------------------------
;; (2) _Lcd4_Cmd                                             3     3      0     110
;;                                              1 COMMON     3     3      0
;;                          _Lcd4_Port
;; ---------------------------------------------------------------------------------
;; (2) _Lcd4_Port                                            1     1      0      88
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd4_Init
;;     _Lcd4_Port
;;     _Lcd4_Cmd
;;       _Lcd4_Port
;;   _Lcd4_Set_Cursor
;;     _Lcd4_Cmd
;;       _Lcd4_Port
;;   _Lcd4_Write_String
;;     _Lcd4_Write_Char
;;       _Lcd4_Port
;;   _Lcd4_Shift_Left
;;     _Lcd4_Cmd
;;       _Lcd4_Port
;;   _Lcd4_Shift_Right
;;     _Lcd4_Cmd
;;       _Lcd4_Port
;;   _Lcd4_Clear
;;     _Lcd4_Cmd
;;       _Lcd4_Port
;;   _Lcd4_Write_Char
;;     _Lcd4_Port
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      E       E       1      100.0%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      2       2       5        2.5%
;;BITSFR2              0      0       0       5        0.0%
;;SFR2                 0      0       0       5        0.0%
;;BITBANK1            50      0       0       6        0.0%
;;BANK1               50      0       0       7        0.0%
;;BITBANK3            60      0       0       8        0.0%
;;BANK3               60      0       0       9        0.0%
;;BITBANK2            60      0       0      10        0.0%
;;BANK2               60      0       0      11        0.0%
;;DATA                 0      0       0      12        0.0%

	global	_main
psect	maintext,global,class=CODE,delta=2
global __pmaintext
__pmaintext:

;; *************** function _main *****************
;; Defined at:
;;		line 17 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\code.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2    0[BANK0 ] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, btemp+1, pclath, cstack
;; Tracked objects:
;;		On entry : 17F/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       2       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         3       2       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd4_Init
;;		_Lcd4_Set_Cursor
;;		_Lcd4_Write_String
;;		_Lcd4_Shift_Left
;;		_Lcd4_Shift_Right
;;		_Lcd4_Clear
;;		_Lcd4_Write_Char
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\code.c"
	line	17
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	19
	
l2195:	
;code.c: 18: int i;
;code.c: 19: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	20
	
l2197:	
;code.c: 20: Lcd4_Init();
	fcall	_Lcd4_Init
	goto	l2199
	line	21
;code.c: 21: while(1)
	
l777:	
	line	23
	
l2199:	
;code.c: 22: {
;code.c: 23: Lcd4_Set_Cursor(1,1);
	clrf	(?_Lcd4_Set_Cursor)
	bsf	status,0
	rlf	(?_Lcd4_Set_Cursor),f
	movlw	(01h)
	fcall	_Lcd4_Set_Cursor
	line	24
	
l2201:	
;code.c: 24: Lcd4_Write_String("electroSome LCD Hello World");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd4_Write_String
	line	25
	
l2203:	
;code.c: 25: for(i=0;i<15;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2205:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2495
	movlw	low(0Fh)
	subwf	(main@i),w
u2495:

	skipc
	goto	u2491
	goto	u2490
u2491:
	goto	l2209
u2490:
	goto	l2217
	
l2207:	
	goto	l2217
	line	26
	
l778:	
	line	27
	
l2209:	
;code.c: 26: {
;code.c: 27: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2537:
	decfsz	((??_main+0)+0),f
	goto	u2537
	decfsz	((??_main+0)+0+1),f
	goto	u2537
	decfsz	((??_main+0)+0+2),f
	goto	u2537
opt asmopt_on

	line	28
	
l2211:	
;code.c: 28: Lcd4_Shift_Left();
	fcall	_Lcd4_Shift_Left
	line	25
	
l2213:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2215:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2505
	movlw	low(0Fh)
	subwf	(main@i),w
u2505:

	skipc
	goto	u2501
	goto	u2500
u2501:
	goto	l2209
u2500:
	goto	l2217
	
l779:	
	line	30
	
l2217:	
;code.c: 29: }
;code.c: 30: for(i=0;i<15;i++)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	clrf	(main@i)
	clrf	(main@i+1)
	
l2219:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2515
	movlw	low(0Fh)
	subwf	(main@i),w
u2515:

	skipc
	goto	u2511
	goto	u2510
u2511:
	goto	l2223
u2510:
	goto	l2231
	
l2221:	
	goto	l2231
	line	31
	
l780:	
	line	32
	
l2223:	
;code.c: 31: {
;code.c: 32: _delay((unsigned long)((1000)*(20000000/4000.0)));
	opt asmopt_off
movlw  26
movwf	((??_main+0)+0+2),f
movlw	69
movwf	((??_main+0)+0+1),f
	movlw	126
movwf	((??_main+0)+0),f
u2547:
	decfsz	((??_main+0)+0),f
	goto	u2547
	decfsz	((??_main+0)+0+1),f
	goto	u2547
	decfsz	((??_main+0)+0+2),f
	goto	u2547
opt asmopt_on

	line	33
	
l2225:	
;code.c: 33: Lcd4_Shift_Right();
	fcall	_Lcd4_Shift_Right
	line	30
	
l2227:	
	movlw	low(01h)
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2229:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2525
	movlw	low(0Fh)
	subwf	(main@i),w
u2525:

	skipc
	goto	u2521
	goto	u2520
u2521:
	goto	l2223
u2520:
	goto	l2231
	
l781:	
	line	35
	
l2231:	
;code.c: 34: }
;code.c: 35: Lcd4_Clear();
	fcall	_Lcd4_Clear
	line	36
;code.c: 36: Lcd4_Set_Cursor(2,1);
	clrf	(?_Lcd4_Set_Cursor)
	bsf	status,0
	rlf	(?_Lcd4_Set_Cursor),f
	movlw	(02h)
	fcall	_Lcd4_Set_Cursor
	line	37
;code.c: 37: Lcd4_Write_Char('e');
	movlw	(065h)
	fcall	_Lcd4_Write_Char
	line	38
;code.c: 38: Lcd4_Write_Char('S');
	movlw	(053h)
	fcall	_Lcd4_Write_Char
	line	39
	
l2233:	
;code.c: 39: _delay((unsigned long)((2000)*(20000000/4000.0)));
	opt asmopt_off
movlw  51
movwf	((??_main+0)+0+2),f
movlw	137
movwf	((??_main+0)+0+1),f
	movlw	256
movwf	((??_main+0)+0),f
u2557:
	decfsz	((??_main+0)+0),f
	goto	u2557
	decfsz	((??_main+0)+0+1),f
	goto	u2557
	decfsz	((??_main+0)+0+2),f
	goto	u2557
opt asmopt_on

	goto	l2199
	line	40
	
l782:	
	line	21
	goto	l2199
	
l783:	
	line	41
	
l784:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd4_Shift_Left
psect	text219,local,class=CODE,delta=2
global __ptext219
__ptext219:

;; *************** function _Lcd4_Shift_Left *****************
;; Defined at:
;;		line 232 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd4_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text219
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	232
	global	__size_of_Lcd4_Shift_Left
	__size_of_Lcd4_Shift_Left	equ	__end_of_Lcd4_Shift_Left-_Lcd4_Shift_Left
	
_Lcd4_Shift_Left:	
	opt	stack 5
; Regs used in _Lcd4_Shift_Left: [wreg+status,2+status,0+pclath+cstack]
	line	233
	
l2193:	
;lcd.h: 233: Lcd4_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd4_Cmd
	line	234
;lcd.h: 234: Lcd4_Cmd(0x08);
	movlw	(08h)
	fcall	_Lcd4_Cmd
	line	235
	
l774:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Shift_Left
	__end_of_Lcd4_Shift_Left:
;; =============== function _Lcd4_Shift_Left ends ============

	signat	_Lcd4_Shift_Left,88
	global	_Lcd4_Shift_Right
psect	text220,local,class=CODE,delta=2
global __ptext220
__ptext220:

;; *************** function _Lcd4_Shift_Right *****************
;; Defined at:
;;		line 226 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd4_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text220
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	226
	global	__size_of_Lcd4_Shift_Right
	__size_of_Lcd4_Shift_Right	equ	__end_of_Lcd4_Shift_Right-_Lcd4_Shift_Right
	
_Lcd4_Shift_Right:	
	opt	stack 5
; Regs used in _Lcd4_Shift_Right: [wreg+status,2+status,0+pclath+cstack]
	line	227
	
l2191:	
;lcd.h: 227: Lcd4_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd4_Cmd
	line	228
;lcd.h: 228: Lcd4_Cmd(0x0C);
	movlw	(0Ch)
	fcall	_Lcd4_Cmd
	line	229
	
l771:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Shift_Right
	__end_of_Lcd4_Shift_Right:
;; =============== function _Lcd4_Shift_Right ends ============

	signat	_Lcd4_Shift_Right,88
	global	_Lcd4_Write_String
psect	text221,local,class=CODE,delta=2
global __ptext221
__ptext221:

;; *************** function _Lcd4_Write_String *****************
;; Defined at:
;;		line 219 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> STR_1(28), 
;; Auto vars:     Size  Location     Type
;;  a               1    6[COMMON] PTR unsigned char 
;;		 -> STR_1(28), 
;;  i               2    7[COMMON] int 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, fsr0l, fsr0h, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd4_Write_Char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text221
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	219
	global	__size_of_Lcd4_Write_String
	__size_of_Lcd4_Write_String	equ	__end_of_Lcd4_Write_String-_Lcd4_Write_String
	
_Lcd4_Write_String:	
	opt	stack 5
; Regs used in _Lcd4_Write_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd4_Write_String@a stored from wreg
	line	221
	movwf	(Lcd4_Write_String@a)
	
l2183:	
;lcd.h: 220: int i;
;lcd.h: 221: for(i=0;a[i]!='\0';i++)
	clrf	(Lcd4_Write_String@i)
	clrf	(Lcd4_Write_String@i+1)
	goto	l2189
	line	222
	
l766:	
	
l2185:	
;lcd.h: 222: Lcd4_Write_Char(a[i]);
	movf	(Lcd4_Write_String@i),w
	addwf	(Lcd4_Write_String@a),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd4_Write_Char
	line	221
	
l2187:	
	movlw	low(01h)
	addwf	(Lcd4_Write_String@i),f
	skipnc
	incf	(Lcd4_Write_String@i+1),f
	movlw	high(01h)
	addwf	(Lcd4_Write_String@i+1),f
	goto	l2189
	
l765:	
	
l2189:	
	movf	(Lcd4_Write_String@i),w
	addwf	(Lcd4_Write_String@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2481
	goto	u2480
u2481:
	goto	l2185
u2480:
	goto	l768
	
l767:	
	line	223
	
l768:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Write_String
	__end_of_Lcd4_Write_String:
;; =============== function _Lcd4_Write_String ends ============

	signat	_Lcd4_Write_String,4216
	global	_Lcd4_Init
psect	text222,local,class=CODE,delta=2
global __ptext222
__ptext222:

;; *************** function _Lcd4_Init *****************
;; Defined at:
;;		line 184 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd4_Port
;;		_Lcd4_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text222
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	184
	global	__size_of_Lcd4_Init
	__size_of_Lcd4_Init	equ	__end_of_Lcd4_Init-_Lcd4_Init
	
_Lcd4_Init:	
	opt	stack 5
; Regs used in _Lcd4_Init: [wreg+status,2+status,0+pclath+cstack]
	line	185
	
l2173:	
;lcd.h: 185: Lcd4_Port(0x00);
	movlw	(0)
	fcall	_Lcd4_Port
	line	186
	
l2175:	
;lcd.h: 186: _delay((unsigned long)((20)*(20000000/4000.0)));
	opt asmopt_off
movlw	130
movwf	((??_Lcd4_Init+0)+0+1),f
	movlw	221
movwf	((??_Lcd4_Init+0)+0),f
u2567:
	decfsz	((??_Lcd4_Init+0)+0),f
	goto	u2567
	decfsz	((??_Lcd4_Init+0)+0+1),f
	goto	u2567
	nop2
opt asmopt_on

	line	187
	
l2177:	
;lcd.h: 187: Lcd4_Cmd(0x03);
	movlw	(03h)
	fcall	_Lcd4_Cmd
	line	188
;lcd.h: 188: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd4_Init+0)+0+1),f
	movlw	118
movwf	((??_Lcd4_Init+0)+0),f
u2577:
	decfsz	((??_Lcd4_Init+0)+0),f
	goto	u2577
	decfsz	((??_Lcd4_Init+0)+0+1),f
	goto	u2577
	clrwdt
opt asmopt_on

	line	189
	
l2179:	
;lcd.h: 189: Lcd4_Cmd(0x03);
	movlw	(03h)
	fcall	_Lcd4_Cmd
	line	190
	
l2181:	
;lcd.h: 190: _delay((unsigned long)((11)*(20000000/4000.0)));
	opt asmopt_off
movlw	72
movwf	((??_Lcd4_Init+0)+0+1),f
	movlw	108
movwf	((??_Lcd4_Init+0)+0),f
u2587:
	decfsz	((??_Lcd4_Init+0)+0),f
	goto	u2587
	decfsz	((??_Lcd4_Init+0)+0+1),f
	goto	u2587
	clrwdt
opt asmopt_on

	line	191
;lcd.h: 191: Lcd4_Cmd(0x03);
	movlw	(03h)
	fcall	_Lcd4_Cmd
	line	193
;lcd.h: 193: Lcd4_Cmd(0x02);
	movlw	(02h)
	fcall	_Lcd4_Cmd
	line	194
;lcd.h: 194: Lcd4_Cmd(0x02);
	movlw	(02h)
	fcall	_Lcd4_Cmd
	line	195
;lcd.h: 195: Lcd4_Cmd(0x08);
	movlw	(08h)
	fcall	_Lcd4_Cmd
	line	196
;lcd.h: 196: Lcd4_Cmd(0x00);
	movlw	(0)
	fcall	_Lcd4_Cmd
	line	197
;lcd.h: 197: Lcd4_Cmd(0x0C);
	movlw	(0Ch)
	fcall	_Lcd4_Cmd
	line	198
;lcd.h: 198: Lcd4_Cmd(0x00);
	movlw	(0)
	fcall	_Lcd4_Cmd
	line	199
;lcd.h: 199: Lcd4_Cmd(0x06);
	movlw	(06h)
	fcall	_Lcd4_Cmd
	line	200
	
l759:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Init
	__end_of_Lcd4_Init:
;; =============== function _Lcd4_Init ends ============

	signat	_Lcd4_Init,88
	global	_Lcd4_Set_Cursor
psect	text223,local,class=CODE,delta=2
global __ptext223
__ptext223:

;; *************** function _Lcd4_Set_Cursor *****************
;; Defined at:
;;		line 163 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    7[COMMON] unsigned char 
;;  y               1   10[COMMON] unsigned char 
;;  z               1    9[COMMON] unsigned char 
;;  temp            1    8[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         1       0       0       0       0
;;      Locals:         4       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         7       0       0       0       0
;;Total ram usage:        7 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd4_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text223
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	163
	global	__size_of_Lcd4_Set_Cursor
	__size_of_Lcd4_Set_Cursor	equ	__end_of_Lcd4_Set_Cursor-_Lcd4_Set_Cursor
	
_Lcd4_Set_Cursor:	
	opt	stack 5
; Regs used in _Lcd4_Set_Cursor: [wreg+status,2+status,0+pclath+cstack]
;Lcd4_Set_Cursor@a stored from wreg
	line	165
	movwf	(Lcd4_Set_Cursor@a)
	
l2157:	
;lcd.h: 164: char temp,z,y;
;lcd.h: 165: if(a == 1)
	movf	(Lcd4_Set_Cursor@a),w
	xorlw	01h
	skipz
	goto	u2441
	goto	u2440
u2441:
	goto	l2165
u2440:
	line	167
	
l2159:	
;lcd.h: 166: {
;lcd.h: 167: temp = 0x80 + b;
	movf	(Lcd4_Set_Cursor@b),w
	addlw	080h
	movwf	(??_Lcd4_Set_Cursor+0)+0
	movf	(??_Lcd4_Set_Cursor+0)+0,w
	movwf	(Lcd4_Set_Cursor@temp)
	line	168
;lcd.h: 168: z = temp>>4;
	movf	(Lcd4_Set_Cursor@temp),w
	movwf	(??_Lcd4_Set_Cursor+0)+0
	movlw	04h
u2455:
	clrc
	rrf	(??_Lcd4_Set_Cursor+0)+0,f
	addlw	-1
	skipz
	goto	u2455
	movf	0+(??_Lcd4_Set_Cursor+0)+0,w
	movwf	(??_Lcd4_Set_Cursor+1)+0
	movf	(??_Lcd4_Set_Cursor+1)+0,w
	movwf	(Lcd4_Set_Cursor@z)
	line	169
;lcd.h: 169: y = (0x80+b) & 0x0F;
	movf	(Lcd4_Set_Cursor@b),w
	addlw	080h
	andlw	0Fh
	movwf	(??_Lcd4_Set_Cursor+0)+0
	movf	(??_Lcd4_Set_Cursor+0)+0,w
	movwf	(Lcd4_Set_Cursor@y)
	line	170
	
l2161:	
;lcd.h: 170: Lcd4_Cmd(z);
	movf	(Lcd4_Set_Cursor@z),w
	fcall	_Lcd4_Cmd
	line	171
	
l2163:	
;lcd.h: 171: Lcd4_Cmd(y);
	movf	(Lcd4_Set_Cursor@y),w
	fcall	_Lcd4_Cmd
	line	172
;lcd.h: 172: }
	goto	l756
	line	173
	
l753:	
	
l2165:	
;lcd.h: 173: else if(a == 2)
	movf	(Lcd4_Set_Cursor@a),w
	xorlw	02h
	skipz
	goto	u2461
	goto	u2460
u2461:
	goto	l756
u2460:
	line	175
	
l2167:	
;lcd.h: 174: {
;lcd.h: 175: temp = 0xC0 + b;
	movf	(Lcd4_Set_Cursor@b),w
	addlw	0C0h
	movwf	(??_Lcd4_Set_Cursor+0)+0
	movf	(??_Lcd4_Set_Cursor+0)+0,w
	movwf	(Lcd4_Set_Cursor@temp)
	line	176
;lcd.h: 176: z = temp>>4;
	movf	(Lcd4_Set_Cursor@temp),w
	movwf	(??_Lcd4_Set_Cursor+0)+0
	movlw	04h
u2475:
	clrc
	rrf	(??_Lcd4_Set_Cursor+0)+0,f
	addlw	-1
	skipz
	goto	u2475
	movf	0+(??_Lcd4_Set_Cursor+0)+0,w
	movwf	(??_Lcd4_Set_Cursor+1)+0
	movf	(??_Lcd4_Set_Cursor+1)+0,w
	movwf	(Lcd4_Set_Cursor@z)
	line	177
;lcd.h: 177: y = (0xC0+b) & 0x0F;
	movf	(Lcd4_Set_Cursor@b),w
	addlw	0C0h
	andlw	0Fh
	movwf	(??_Lcd4_Set_Cursor+0)+0
	movf	(??_Lcd4_Set_Cursor+0)+0,w
	movwf	(Lcd4_Set_Cursor@y)
	line	178
	
l2169:	
;lcd.h: 178: Lcd4_Cmd(z);
	movf	(Lcd4_Set_Cursor@z),w
	fcall	_Lcd4_Cmd
	line	179
	
l2171:	
;lcd.h: 179: Lcd4_Cmd(y);
	movf	(Lcd4_Set_Cursor@y),w
	fcall	_Lcd4_Cmd
	goto	l756
	line	180
	
l755:	
	goto	l756
	line	181
	
l754:	
	
l756:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Set_Cursor
	__end_of_Lcd4_Set_Cursor:
;; =============== function _Lcd4_Set_Cursor ends ============

	signat	_Lcd4_Set_Cursor,8312
	global	_Lcd4_Clear
psect	text224,local,class=CODE,delta=2
global __ptext224
__ptext224:

;; *************** function _Lcd4_Clear *****************
;; Defined at:
;;		line 157 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  749[COMMON] int 
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         0       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         0       0       0       0       0
;;Total ram usage:        0 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd4_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text224
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	157
	global	__size_of_Lcd4_Clear
	__size_of_Lcd4_Clear	equ	__end_of_Lcd4_Clear-_Lcd4_Clear
	
_Lcd4_Clear:	
	opt	stack 5
; Regs used in _Lcd4_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	158
	
l2155:	
;lcd.h: 158: Lcd4_Cmd(0);
	movlw	(0)
	fcall	_Lcd4_Cmd
	line	159
;lcd.h: 159: Lcd4_Cmd(1);
	movlw	(01h)
	fcall	_Lcd4_Cmd
	line	160
	
l750:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Clear
	__end_of_Lcd4_Clear:
;; =============== function _Lcd4_Clear ends ============

	signat	_Lcd4_Clear,90
	global	_Lcd4_Write_Char
psect	text225,local,class=CODE,delta=2
global __ptext225
__ptext225:

;; *************** function _Lcd4_Write_Char *****************
;; Defined at:
;;		line 203 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    5[COMMON] unsigned char 
;;  y               1    4[COMMON] unsigned char 
;;  temp            1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         3       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd4_Port
;; This function is called by:
;;		_Lcd4_Write_String
;;		_main
;; This function uses a non-reentrant model
;;
psect	text225
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	203
	global	__size_of_Lcd4_Write_Char
	__size_of_Lcd4_Write_Char	equ	__end_of_Lcd4_Write_Char-_Lcd4_Write_Char
	
_Lcd4_Write_Char:	
	opt	stack 6
; Regs used in _Lcd4_Write_Char: [wreg+status,2+status,0+pclath+cstack]
;Lcd4_Write_Char@a stored from wreg
	line	205
	movwf	(Lcd4_Write_Char@a)
	
l2135:	
;lcd.h: 204: char temp,y;
;lcd.h: 205: temp = a&0x0F;
	movf	(Lcd4_Write_Char@a),w
	andlw	0Fh
	movwf	(??_Lcd4_Write_Char+0)+0
	movf	(??_Lcd4_Write_Char+0)+0,w
	movwf	(Lcd4_Write_Char@temp)
	line	206
;lcd.h: 206: y = a&0xF0;
	movf	(Lcd4_Write_Char@a),w
	andlw	0F0h
	movwf	(??_Lcd4_Write_Char+0)+0
	movf	(??_Lcd4_Write_Char+0)+0,w
	movwf	(Lcd4_Write_Char@y)
	line	207
	
l2137:	
;lcd.h: 207: RC5 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(61/8),(61)&7
	line	208
	
l2139:	
;lcd.h: 208: Lcd4_Port(y>>4);
	movf	(Lcd4_Write_Char@y),w
	movwf	(??_Lcd4_Write_Char+0)+0
	movlw	04h
u2435:
	clrc
	rrf	(??_Lcd4_Write_Char+0)+0,f
	addlw	-1
	skipz
	goto	u2435
	movf	0+(??_Lcd4_Write_Char+0)+0,w
	fcall	_Lcd4_Port
	line	209
	
l2141:	
;lcd.h: 209: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	210
	
l2143:	
;lcd.h: 210: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd4_Write_Char+0)+0+1),f
	movlw	118
movwf	((??_Lcd4_Write_Char+0)+0),f
u2597:
	decfsz	((??_Lcd4_Write_Char+0)+0),f
	goto	u2597
	decfsz	((??_Lcd4_Write_Char+0)+0+1),f
	goto	u2597
	clrwdt
opt asmopt_on

	line	211
	
l2145:	
;lcd.h: 211: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	212
	
l2147:	
;lcd.h: 212: Lcd4_Port(temp);
	movf	(Lcd4_Write_Char@temp),w
	fcall	_Lcd4_Port
	line	213
	
l2149:	
;lcd.h: 213: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	214
	
l2151:	
;lcd.h: 214: _delay((unsigned long)((5)*(20000000/4000.0)));
	opt asmopt_off
movlw	33
movwf	((??_Lcd4_Write_Char+0)+0+1),f
	movlw	118
movwf	((??_Lcd4_Write_Char+0)+0),f
u2607:
	decfsz	((??_Lcd4_Write_Char+0)+0),f
	goto	u2607
	decfsz	((??_Lcd4_Write_Char+0)+0+1),f
	goto	u2607
	clrwdt
opt asmopt_on

	line	215
	
l2153:	
;lcd.h: 215: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	216
	
l762:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Write_Char
	__end_of_Lcd4_Write_Char:
;; =============== function _Lcd4_Write_Char ends ============

	signat	_Lcd4_Write_Char,4216
	global	_Lcd4_Cmd
psect	text226,local,class=CODE,delta=2
global __ptext226
__ptext226:

;; *************** function _Lcd4_Cmd *****************
;; Defined at:
;;		line 148 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    3[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg, status,2, status,0, pclath, cstack
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          2       0       0       0       0
;;      Totals:         3       0       0       0       0
;;Total ram usage:        3 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    1
;; This function calls:
;;		_Lcd4_Port
;; This function is called by:
;;		_Lcd4_Clear
;;		_Lcd4_Set_Cursor
;;		_Lcd4_Init
;;		_Lcd4_Shift_Right
;;		_Lcd4_Shift_Left
;; This function uses a non-reentrant model
;;
psect	text226
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	148
	global	__size_of_Lcd4_Cmd
	__size_of_Lcd4_Cmd	equ	__end_of_Lcd4_Cmd-_Lcd4_Cmd
	
_Lcd4_Cmd:	
	opt	stack 5
; Regs used in _Lcd4_Cmd: [wreg+status,2+status,0+pclath+cstack]
;Lcd4_Cmd@a stored from wreg
	movwf	(Lcd4_Cmd@a)
	line	149
	
l2125:	
;lcd.h: 149: RC5 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(61/8),(61)&7
	line	150
	
l2127:	
;lcd.h: 150: Lcd4_Port(a);
	movf	(Lcd4_Cmd@a),w
	fcall	_Lcd4_Port
	line	151
	
l2129:	
;lcd.h: 151: RC1 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(57/8),(57)&7
	line	152
	
l2131:	
;lcd.h: 152: _delay((unsigned long)((4)*(20000000/4000.0)));
	opt asmopt_off
movlw	26
movwf	((??_Lcd4_Cmd+0)+0+1),f
	movlw	248
movwf	((??_Lcd4_Cmd+0)+0),f
u2617:
	decfsz	((??_Lcd4_Cmd+0)+0),f
	goto	u2617
	decfsz	((??_Lcd4_Cmd+0)+0+1),f
	goto	u2617
	clrwdt
opt asmopt_on

	line	153
	
l2133:	
;lcd.h: 153: RC1 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(57/8),(57)&7
	line	154
	
l747:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Cmd
	__end_of_Lcd4_Cmd:
;; =============== function _Lcd4_Cmd ends ============

	signat	_Lcd4_Cmd,4216
	global	_Lcd4_Port
psect	text227,local,class=CODE,delta=2
global __ptext227
__ptext227:

;; *************** function _Lcd4_Port *****************
;; Defined at:
;;		line 126 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    0[COMMON] unsigned char 
;; Return value:  Size  Location     Type
;;		None               void
;; Registers used:
;;		wreg
;; Tracked objects:
;;		On entry : 0/0
;;		On exit  : 0/0
;;		Unchanged: 0/0
;; Data sizes:     COMMON   BANK0   BANK1   BANK3   BANK2
;;      Params:         0       0       0       0       0
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         1       0       0       0       0
;;Total ram usage:        1 bytes
;; Hardware stack levels used:    1
;; This function calls:
;;		Nothing
;; This function is called by:
;;		_Lcd4_Cmd
;;		_Lcd4_Init
;;		_Lcd4_Write_Char
;; This function uses a non-reentrant model
;;
psect	text227
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\4 Bit\lcd.h"
	line	126
	global	__size_of_Lcd4_Port
	__size_of_Lcd4_Port	equ	__end_of_Lcd4_Port-_Lcd4_Port
	
_Lcd4_Port:	
	opt	stack 6
; Regs used in _Lcd4_Port: [wreg]
;Lcd4_Port@a stored from wreg
	movwf	(Lcd4_Port@a)
	line	127
	
l2115:	
;lcd.h: 127: if(a & 1)
	btfss	(Lcd4_Port@a),(0)&7
	goto	u2391
	goto	u2390
u2391:
	goto	l736
u2390:
	line	128
	
l2117:	
;lcd.h: 128: RD4 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(68/8),(68)&7
	goto	l737
	line	129
	
l736:	
	line	130
;lcd.h: 129: else
;lcd.h: 130: RD4 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(68/8),(68)&7
	
l737:	
	line	132
;lcd.h: 132: if(a & 2)
	btfss	(Lcd4_Port@a),(1)&7
	goto	u2401
	goto	u2400
u2401:
	goto	l738
u2400:
	line	133
	
l2119:	
;lcd.h: 133: RD5 = 1;
	bsf	(69/8),(69)&7
	goto	l739
	line	134
	
l738:	
	line	135
;lcd.h: 134: else
;lcd.h: 135: RD5 = 0;
	bcf	(69/8),(69)&7
	
l739:	
	line	137
;lcd.h: 137: if(a & 4)
	btfss	(Lcd4_Port@a),(2)&7
	goto	u2411
	goto	u2410
u2411:
	goto	l740
u2410:
	line	138
	
l2121:	
;lcd.h: 138: RD6 = 1;
	bsf	(70/8),(70)&7
	goto	l741
	line	139
	
l740:	
	line	140
;lcd.h: 139: else
;lcd.h: 140: RD6 = 0;
	bcf	(70/8),(70)&7
	
l741:	
	line	142
;lcd.h: 142: if(a & 8)
	btfss	(Lcd4_Port@a),(3)&7
	goto	u2421
	goto	u2420
u2421:
	goto	l742
u2420:
	line	143
	
l2123:	
;lcd.h: 143: RD7 = 1;
	bsf	(71/8),(71)&7
	goto	l744
	line	144
	
l742:	
	line	145
;lcd.h: 144: else
;lcd.h: 145: RD7 = 0;
	bcf	(71/8),(71)&7
	goto	l744
	
l743:	
	line	146
	
l744:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd4_Port
	__end_of_Lcd4_Port:
;; =============== function _Lcd4_Port ends ============

	signat	_Lcd4_Port,4216
psect	text228,local,class=CODE,delta=2
global __ptext228
__ptext228:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
