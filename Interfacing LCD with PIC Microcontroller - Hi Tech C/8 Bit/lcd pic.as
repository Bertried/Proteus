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
	FNCALL	_main,_Lcd8_Init
	FNCALL	_main,_Lcd8_Set_Cursor
	FNCALL	_main,_Lcd8_Write_String
	FNCALL	_main,_Lcd8_Shift_Left
	FNCALL	_main,_Lcd8_Shift_Right
	FNCALL	_main,_Lcd8_Clear
	FNCALL	_main,_Lcd8_Write_Char
	FNCALL	_Lcd8_Shift_Left,_Lcd8_Cmd
	FNCALL	_Lcd8_Shift_Right,_Lcd8_Cmd
	FNCALL	_Lcd8_Write_String,_Lcd8_Write_Char
	FNCALL	_Lcd8_Init,_Lcd8_Port
	FNCALL	_Lcd8_Init,_Lcd8_Cmd
	FNCALL	_Lcd8_Set_Cursor,_Lcd8_Cmd
	FNCALL	_Lcd8_Clear,_Lcd8_Cmd
	FNCALL	_Lcd8_Write_Char,_Lcd8_Port
	FNCALL	_Lcd8_Cmd,_Lcd8_Port
	FNROOT	_main
	global	_RB6
psect	text139,local,class=CODE,delta=2
global __ptext139
__ptext139:
_RB6	set	54
	global	_RB7
_RB7	set	55
	global	_RC0
_RC0	set	56
	global	_RC1
_RC1	set	57
	global	_RC2
_RC2	set	58
	global	_RC3
_RC3	set	59
	global	_RC4
_RC4	set	60
	global	_RC5
_RC5	set	61
	global	_RC6
_RC6	set	62
	global	_RC7
_RC7	set	63
	global	_TRISB
_TRISB	set	134
	global	_TRISC
_TRISC	set	135
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
	file	"lcd pic.as"
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
	global	?_Lcd8_Port
?_Lcd8_Port:	; 0 bytes @ 0x0
	global	??_Lcd8_Port
??_Lcd8_Port:	; 0 bytes @ 0x0
	global	?_Lcd8_Cmd
?_Lcd8_Cmd:	; 0 bytes @ 0x0
	global	?_Lcd8_Init
?_Lcd8_Init:	; 0 bytes @ 0x0
	global	?_Lcd8_Write_Char
?_Lcd8_Write_Char:	; 0 bytes @ 0x0
	global	?_Lcd8_Write_String
?_Lcd8_Write_String:	; 0 bytes @ 0x0
	global	?_Lcd8_Shift_Right
?_Lcd8_Shift_Right:	; 0 bytes @ 0x0
	global	?_Lcd8_Shift_Left
?_Lcd8_Shift_Left:	; 0 bytes @ 0x0
	global	?_main
?_main:	; 0 bytes @ 0x0
	global	?_Lcd8_Clear
?_Lcd8_Clear:	; 2 bytes @ 0x0
	global	Lcd8_Port@a
Lcd8_Port@a:	; 1 bytes @ 0x0
	ds	1
	global	??_Lcd8_Cmd
??_Lcd8_Cmd:	; 0 bytes @ 0x1
	global	??_Lcd8_Write_Char
??_Lcd8_Write_Char:	; 0 bytes @ 0x1
	ds	2
	global	Lcd8_Cmd@a
Lcd8_Cmd@a:	; 1 bytes @ 0x3
	global	Lcd8_Write_Char@a
Lcd8_Write_Char@a:	; 1 bytes @ 0x3
	ds	1
	global	??_Lcd8_Clear
??_Lcd8_Clear:	; 0 bytes @ 0x4
	global	?_Lcd8_Set_Cursor
?_Lcd8_Set_Cursor:	; 0 bytes @ 0x4
	global	??_Lcd8_Init
??_Lcd8_Init:	; 0 bytes @ 0x4
	global	??_Lcd8_Write_String
??_Lcd8_Write_String:	; 0 bytes @ 0x4
	global	??_Lcd8_Shift_Right
??_Lcd8_Shift_Right:	; 0 bytes @ 0x4
	global	??_Lcd8_Shift_Left
??_Lcd8_Shift_Left:	; 0 bytes @ 0x4
	global	Lcd8_Set_Cursor@b
Lcd8_Set_Cursor@b:	; 1 bytes @ 0x4
	global	Lcd8_Write_String@i
Lcd8_Write_String@i:	; 2 bytes @ 0x4
	ds	1
	global	??_Lcd8_Set_Cursor
??_Lcd8_Set_Cursor:	; 0 bytes @ 0x5
	global	Lcd8_Set_Cursor@a
Lcd8_Set_Cursor@a:	; 1 bytes @ 0x5
	ds	1
	global	Lcd8_Write_String@a
Lcd8_Write_String@a:	; 1 bytes @ 0x6
	ds	1
	global	??_main
??_main:	; 0 bytes @ 0x7
	ds	3
	global	main@i
main@i:	; 2 bytes @ 0xA
	ds	2
;;Data sizes: Strings 28, constant 0, data 0, bss 0, persistent 0 stack 0
;;Auto spaces:   Size  Autos    Used
;; COMMON          14     12      12
;; BANK0           80      0       0
;; BANK1           80      0       0
;; BANK3           96      0       0
;; BANK2           96      0       0

;;
;; Pointer list with targets:

;; Lcd8_Write_String@a	PTR unsigned char  size(1) Largest target is 28
;;		 -> STR_1(CODE[28]), 
;;


;;
;; Critical Paths under _main in COMMON
;;
;;   _main->_Lcd8_Write_String
;;   _Lcd8_Shift_Left->_Lcd8_Cmd
;;   _Lcd8_Shift_Right->_Lcd8_Cmd
;;   _Lcd8_Write_String->_Lcd8_Write_Char
;;   _Lcd8_Init->_Lcd8_Cmd
;;   _Lcd8_Set_Cursor->_Lcd8_Cmd
;;   _Lcd8_Clear->_Lcd8_Cmd
;;   _Lcd8_Write_Char->_Lcd8_Port
;;   _Lcd8_Cmd->_Lcd8_Port
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
;; (0) _main                                                 5     5      0    1245
;;                                              7 COMMON     5     5      0
;;                          _Lcd8_Init
;;                    _Lcd8_Set_Cursor
;;                  _Lcd8_Write_String
;;                    _Lcd8_Shift_Left
;;                   _Lcd8_Shift_Right
;;                         _Lcd8_Clear
;;                    _Lcd8_Write_Char
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Shift_Left                                      0     0      0     135
;;                           _Lcd8_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Shift_Right                                     0     0      0     135
;;                           _Lcd8_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Write_String                                    3     3      0     195
;;                                              4 COMMON     3     3      0
;;                    _Lcd8_Write_Char
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Init                                            2     2      0     255
;;                                              4 COMMON     2     2      0
;;                          _Lcd8_Port
;;                           _Lcd8_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Set_Cursor                                      2     1      1     195
;;                                              4 COMMON     2     1      1
;;                           _Lcd8_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Clear                                           0     0      0     135
;;                           _Lcd8_Cmd
;; ---------------------------------------------------------------------------------
;; (1) _Lcd8_Write_Char                                      3     3      0     135
;;                                              1 COMMON     3     3      0
;;                          _Lcd8_Port
;; ---------------------------------------------------------------------------------
;; (2) _Lcd8_Cmd                                             3     3      0     135
;;                                              1 COMMON     3     3      0
;;                          _Lcd8_Port
;; ---------------------------------------------------------------------------------
;; (2) _Lcd8_Port                                            1     1      0     120
;;                                              0 COMMON     1     1      0
;; ---------------------------------------------------------------------------------
;; Estimated maximum stack depth 2
;; ---------------------------------------------------------------------------------

;; Call Graph Graphs:

;; _main (ROOT)
;;   _Lcd8_Init
;;     _Lcd8_Port
;;     _Lcd8_Cmd
;;       _Lcd8_Port
;;   _Lcd8_Set_Cursor
;;     _Lcd8_Cmd
;;       _Lcd8_Port
;;   _Lcd8_Write_String
;;     _Lcd8_Write_Char
;;       _Lcd8_Port
;;   _Lcd8_Shift_Left
;;     _Lcd8_Cmd
;;       _Lcd8_Port
;;   _Lcd8_Shift_Right
;;     _Lcd8_Cmd
;;       _Lcd8_Port
;;   _Lcd8_Clear
;;     _Lcd8_Cmd
;;       _Lcd8_Port
;;   _Lcd8_Write_Char
;;     _Lcd8_Port
;;

;; Address spaces:

;;Name               Size   Autos  Total    Cost      Usage
;;BITCOMMON            E      0       0       0        0.0%
;;EEDATA             100      0       0       0        0.0%
;;NULL                 0      0       0       0        0.0%
;;CODE                 0      0       0       0        0.0%
;;COMMON               E      C       C       1       85.7%
;;BITSFR0              0      0       0       1        0.0%
;;SFR0                 0      0       0       1        0.0%
;;BITSFR1              0      0       0       2        0.0%
;;SFR1                 0      0       0       2        0.0%
;;STACK                0      0       3       2        0.0%
;;ABS                  0      0       0       3        0.0%
;;BITBANK0            50      0       0       4        0.0%
;;BITSFR3              0      0       0       4        0.0%
;;SFR3                 0      0       0       4        0.0%
;;BANK0               50      0       0       5        0.0%
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
;;		line 21 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\code.c"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;  i               2   10[COMMON] int 
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
;;      Locals:         2       0       0       0       0
;;      Temps:          3       0       0       0       0
;;      Totals:         5       0       0       0       0
;;Total ram usage:        5 bytes
;; Hardware stack levels required when called:    3
;; This function calls:
;;		_Lcd8_Init
;;		_Lcd8_Set_Cursor
;;		_Lcd8_Write_String
;;		_Lcd8_Shift_Left
;;		_Lcd8_Shift_Right
;;		_Lcd8_Clear
;;		_Lcd8_Write_Char
;; This function is called by:
;;		Startup code after reset
;; This function uses a non-reentrant model
;;
psect	maintext
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\code.c"
	line	21
	global	__size_of_main
	__size_of_main	equ	__end_of_main-_main
	
_main:	
	opt	stack 5
; Regs used in _main: [wreg-fsr0h+status,2+status,0+btemp+1+pclath+cstack]
	line	23
	
l2075:	
;code.c: 22: int i;
;code.c: 23: TRISB = 0x00;
	bsf	status, 5	;RP0=1, select bank1
	bcf	status, 6	;RP1=0, select bank1
	clrf	(134)^080h	;volatile
	line	24
;code.c: 24: TRISC = 0x00;
	clrf	(135)^080h	;volatile
	line	25
	
l2077:	
;code.c: 25: Lcd8_Init();
	fcall	_Lcd8_Init
	goto	l2079
	line	26
;code.c: 26: while(1)
	
l777:	
	line	28
	
l2079:	
;code.c: 27: {
;code.c: 28: Lcd8_Set_Cursor(1,1);
	clrf	(?_Lcd8_Set_Cursor)
	bsf	status,0
	rlf	(?_Lcd8_Set_Cursor),f
	movlw	(01h)
	fcall	_Lcd8_Set_Cursor
	line	29
	
l2081:	
;code.c: 29: Lcd8_Write_String("electroSome LCD Hello World");
	movlw	((STR_1-__stringbase))&0ffh
	fcall	_Lcd8_Write_String
	line	30
	
l2083:	
;code.c: 30: for(i=0;i<15;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2085:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2355
	movlw	low(0Fh)
	subwf	(main@i),w
u2355:

	skipc
	goto	u2351
	goto	u2350
u2351:
	goto	l2089
u2350:
	goto	l2097
	
l2087:	
	goto	l2097
	line	31
	
l778:	
	line	32
	
l2089:	
;code.c: 31: {
;code.c: 32: _delay((unsigned long)((100)*(8000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	3
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
u2397:
	decfsz	((??_main+0)+0),f
	goto	u2397
	decfsz	((??_main+0)+0+1),f
	goto	u2397
	decfsz	((??_main+0)+0+2),f
	goto	u2397
opt asmopt_on

	line	33
	
l2091:	
;code.c: 33: Lcd8_Shift_Left();
	fcall	_Lcd8_Shift_Left
	line	30
	
l2093:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2095:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2365
	movlw	low(0Fh)
	subwf	(main@i),w
u2365:

	skipc
	goto	u2361
	goto	u2360
u2361:
	goto	l2089
u2360:
	goto	l2097
	
l779:	
	line	35
	
l2097:	
;code.c: 34: }
;code.c: 35: for(i=0;i<15;i++)
	clrf	(main@i)
	clrf	(main@i+1)
	
l2099:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2375
	movlw	low(0Fh)
	subwf	(main@i),w
u2375:

	skipc
	goto	u2371
	goto	u2370
u2371:
	goto	l2103
u2370:
	goto	l2111
	
l2101:	
	goto	l2111
	line	36
	
l780:	
	line	37
	
l2103:	
;code.c: 36: {
;code.c: 37: _delay((unsigned long)((100)*(8000000/4000.0)));
	opt asmopt_off
movlw  2
movwf	((??_main+0)+0+2),f
movlw	3
movwf	((??_main+0)+0+1),f
	movlw	186
movwf	((??_main+0)+0),f
u2407:
	decfsz	((??_main+0)+0),f
	goto	u2407
	decfsz	((??_main+0)+0+1),f
	goto	u2407
	decfsz	((??_main+0)+0+2),f
	goto	u2407
opt asmopt_on

	line	38
	
l2105:	
;code.c: 38: Lcd8_Shift_Right();
	fcall	_Lcd8_Shift_Right
	line	35
	
l2107:	
	movlw	low(01h)
	addwf	(main@i),f
	skipnc
	incf	(main@i+1),f
	movlw	high(01h)
	addwf	(main@i+1),f
	
l2109:	
	movf	(main@i+1),w
	xorlw	80h
	movwf	btemp+1
	movlw	(high(0Fh))^80h
	subwf	btemp+1,w
	skipz
	goto	u2385
	movlw	low(0Fh)
	subwf	(main@i),w
u2385:

	skipc
	goto	u2381
	goto	u2380
u2381:
	goto	l2103
u2380:
	goto	l2111
	
l781:	
	line	40
	
l2111:	
;code.c: 39: }
;code.c: 40: Lcd8_Clear();
	fcall	_Lcd8_Clear
	line	41
;code.c: 41: Lcd8_Set_Cursor(2,1);
	clrf	(?_Lcd8_Set_Cursor)
	bsf	status,0
	rlf	(?_Lcd8_Set_Cursor),f
	movlw	(02h)
	fcall	_Lcd8_Set_Cursor
	line	42
;code.c: 42: Lcd8_Write_Char('e');
	movlw	(065h)
	fcall	_Lcd8_Write_Char
	line	43
;code.c: 43: Lcd8_Write_Char('S');
	movlw	(053h)
	fcall	_Lcd8_Write_Char
	line	44
	
l2113:	
;code.c: 44: _delay((unsigned long)((2000)*(8000000/4000.0)));
	opt asmopt_off
movlw  21
movwf	((??_main+0)+0+2),f
movlw	55
movwf	((??_main+0)+0+1),f
	movlw	202
movwf	((??_main+0)+0),f
u2417:
	decfsz	((??_main+0)+0),f
	goto	u2417
	decfsz	((??_main+0)+0+1),f
	goto	u2417
	decfsz	((??_main+0)+0+2),f
	goto	u2417
	nop2
opt asmopt_on

	goto	l2079
	line	45
	
l782:	
	line	26
	goto	l2079
	
l783:	
	line	46
	
l784:	
	global	start
	ljmp	start
	opt stack 0
GLOBAL	__end_of_main
	__end_of_main:
;; =============== function _main ends ============

	signat	_main,88
	global	_Lcd8_Shift_Left
psect	text140,local,class=CODE,delta=2
global __ptext140
__ptext140:

;; *************** function _Lcd8_Shift_Left *****************
;; Defined at:
;;		line 118 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
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
;;		_Lcd8_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text140
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	118
	global	__size_of_Lcd8_Shift_Left
	__size_of_Lcd8_Shift_Left	equ	__end_of_Lcd8_Shift_Left-_Lcd8_Shift_Left
	
_Lcd8_Shift_Left:	
	opt	stack 5
; Regs used in _Lcd8_Shift_Left: [wreg+status,2+status,0+pclath+cstack]
	line	119
	
l2073:	
;lcd.h: 119: Lcd8_Cmd(0x18);
	movlw	(018h)
	fcall	_Lcd8_Cmd
	line	120
	
l733:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Shift_Left
	__end_of_Lcd8_Shift_Left:
;; =============== function _Lcd8_Shift_Left ends ============

	signat	_Lcd8_Shift_Left,88
	global	_Lcd8_Shift_Right
psect	text141,local,class=CODE,delta=2
global __ptext141
__ptext141:

;; *************** function _Lcd8_Shift_Right *****************
;; Defined at:
;;		line 113 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
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
;;		_Lcd8_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text141
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	113
	global	__size_of_Lcd8_Shift_Right
	__size_of_Lcd8_Shift_Right	equ	__end_of_Lcd8_Shift_Right-_Lcd8_Shift_Right
	
_Lcd8_Shift_Right:	
	opt	stack 5
; Regs used in _Lcd8_Shift_Right: [wreg+status,2+status,0+pclath+cstack]
	line	114
	
l2071:	
;lcd.h: 114: Lcd8_Cmd(0x1C);
	movlw	(01Ch)
	fcall	_Lcd8_Cmd
	line	115
	
l730:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Shift_Right
	__end_of_Lcd8_Shift_Right:
;; =============== function _Lcd8_Shift_Right ends ============

	signat	_Lcd8_Shift_Right,88
	global	_Lcd8_Write_String
psect	text142,local,class=CODE,delta=2
global __ptext142
__ptext142:

;; *************** function _Lcd8_Write_String *****************
;; Defined at:
;;		line 106 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     PTR unsigned char 
;;		 -> STR_1(28), 
;; Auto vars:     Size  Location     Type
;;  a               1    6[COMMON] PTR unsigned char 
;;		 -> STR_1(28), 
;;  i               2    4[COMMON] int 
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
;;		_Lcd8_Write_Char
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text142
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	106
	global	__size_of_Lcd8_Write_String
	__size_of_Lcd8_Write_String	equ	__end_of_Lcd8_Write_String-_Lcd8_Write_String
	
_Lcd8_Write_String:	
	opt	stack 5
; Regs used in _Lcd8_Write_String: [wreg-fsr0h+status,2+status,0+pclath+cstack]
;Lcd8_Write_String@a stored from wreg
	line	108
	movwf	(Lcd8_Write_String@a)
	
l2063:	
;lcd.h: 107: int i;
;lcd.h: 108: for(i=0;a[i]!='\0';i++)
	clrf	(Lcd8_Write_String@i)
	clrf	(Lcd8_Write_String@i+1)
	goto	l2069
	line	109
	
l725:	
	
l2065:	
;lcd.h: 109: Lcd8_Write_Char(a[i]);
	movf	(Lcd8_Write_String@i),w
	addwf	(Lcd8_Write_String@a),w
	movwf	fsr0
	fcall	stringdir
	fcall	_Lcd8_Write_Char
	line	108
	
l2067:	
	movlw	low(01h)
	addwf	(Lcd8_Write_String@i),f
	skipnc
	incf	(Lcd8_Write_String@i+1),f
	movlw	high(01h)
	addwf	(Lcd8_Write_String@i+1),f
	goto	l2069
	
l724:	
	
l2069:	
	movf	(Lcd8_Write_String@i),w
	addwf	(Lcd8_Write_String@a),w
	movwf	fsr0
	fcall	stringdir
	iorlw	0
	skipz
	goto	u2341
	goto	u2340
u2341:
	goto	l2065
u2340:
	goto	l727
	
l726:	
	line	110
	
l727:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write_String
	__end_of_Lcd8_Write_String:
;; =============== function _Lcd8_Write_String ends ============

	signat	_Lcd8_Write_String,4216
	global	_Lcd8_Init
psect	text143,local,class=CODE,delta=2
global __ptext143
__ptext143:

;; *************** function _Lcd8_Init *****************
;; Defined at:
;;		line 79 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
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
;;		_Lcd8_Port
;;		_Lcd8_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text143
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	79
	global	__size_of_Lcd8_Init
	__size_of_Lcd8_Init	equ	__end_of_Lcd8_Init-_Lcd8_Init
	
_Lcd8_Init:	
	opt	stack 5
; Regs used in _Lcd8_Init: [wreg+status,2+status,0+pclath+cstack]
	line	80
	
l2051:	
;lcd.h: 80: Lcd8_Port(0x00);
	movlw	(0)
	fcall	_Lcd8_Port
	line	81
	
l2053:	
;lcd.h: 81: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	82
	
l2055:	
;lcd.h: 82: _delay((unsigned long)((25)*(8000000/4000.0)));
	opt asmopt_off
movlw	65
movwf	((??_Lcd8_Init+0)+0+1),f
	movlw	238
movwf	((??_Lcd8_Init+0)+0),f
u2427:
	decfsz	((??_Lcd8_Init+0)+0),f
	goto	u2427
	decfsz	((??_Lcd8_Init+0)+0+1),f
	goto	u2427
	clrwdt
opt asmopt_on

	line	84
	
l2057:	
;lcd.h: 84: Lcd8_Cmd(0x30);
	movlw	(030h)
	fcall	_Lcd8_Cmd
	line	85
;lcd.h: 85: _delay((unsigned long)((5)*(8000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_Lcd8_Init+0)+0+1),f
	movlw	251
movwf	((??_Lcd8_Init+0)+0),f
u2437:
	decfsz	((??_Lcd8_Init+0)+0),f
	goto	u2437
	decfsz	((??_Lcd8_Init+0)+0+1),f
	goto	u2437
	nop2
opt asmopt_on

	line	86
	
l2059:	
;lcd.h: 86: Lcd8_Cmd(0x30);
	movlw	(030h)
	fcall	_Lcd8_Cmd
	line	87
	
l2061:	
;lcd.h: 87: _delay((unsigned long)((15)*(8000000/4000.0)));
	opt asmopt_off
movlw	39
movwf	((??_Lcd8_Init+0)+0+1),f
	movlw	245
movwf	((??_Lcd8_Init+0)+0),f
u2447:
	decfsz	((??_Lcd8_Init+0)+0),f
	goto	u2447
	decfsz	((??_Lcd8_Init+0)+0+1),f
	goto	u2447
opt asmopt_on

	line	88
;lcd.h: 88: Lcd8_Cmd(0x30);
	movlw	(030h)
	fcall	_Lcd8_Cmd
	line	90
;lcd.h: 90: Lcd8_Cmd(0x38);
	movlw	(038h)
	fcall	_Lcd8_Cmd
	line	91
;lcd.h: 91: Lcd8_Cmd(0x0C);
	movlw	(0Ch)
	fcall	_Lcd8_Cmd
	line	92
;lcd.h: 92: Lcd8_Cmd(0x01);
	movlw	(01h)
	fcall	_Lcd8_Cmd
	line	93
;lcd.h: 93: Lcd8_Cmd(0x06);
	movlw	(06h)
	fcall	_Lcd8_Cmd
	line	94
	
l718:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Init
	__end_of_Lcd8_Init:
;; =============== function _Lcd8_Init ends ============

	signat	_Lcd8_Init,88
	global	_Lcd8_Set_Cursor
psect	text144,local,class=CODE,delta=2
global __ptext144
__ptext144:

;; *************** function _Lcd8_Set_Cursor *****************
;; Defined at:
;;		line 71 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;  a               1    wreg     unsigned char 
;;  b               1    4[COMMON] unsigned char 
;; Auto vars:     Size  Location     Type
;;  a               1    5[COMMON] unsigned char 
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
;;      Locals:         1       0       0       0       0
;;      Temps:          0       0       0       0       0
;;      Totals:         2       0       0       0       0
;;Total ram usage:        2 bytes
;; Hardware stack levels used:    1
;; Hardware stack levels required when called:    2
;; This function calls:
;;		_Lcd8_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text144
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	71
	global	__size_of_Lcd8_Set_Cursor
	__size_of_Lcd8_Set_Cursor	equ	__end_of_Lcd8_Set_Cursor-_Lcd8_Set_Cursor
	
_Lcd8_Set_Cursor:	
	opt	stack 5
; Regs used in _Lcd8_Set_Cursor: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Set_Cursor@a stored from wreg
	movwf	(Lcd8_Set_Cursor@a)
	line	72
	
l2043:	
;lcd.h: 72: if(a == 1)
	movf	(Lcd8_Set_Cursor@a),w
	xorlw	01h
	skipz
	goto	u2321
	goto	u2320
u2321:
	goto	l2047
u2320:
	line	73
	
l2045:	
;lcd.h: 73: Lcd8_Cmd(0x80 + b);
	movf	(Lcd8_Set_Cursor@b),w
	addlw	080h
	fcall	_Lcd8_Cmd
	goto	l715
	line	74
	
l712:	
	
l2047:	
;lcd.h: 74: else if(a == 2)
	movf	(Lcd8_Set_Cursor@a),w
	xorlw	02h
	skipz
	goto	u2331
	goto	u2330
u2331:
	goto	l715
u2330:
	line	75
	
l2049:	
;lcd.h: 75: Lcd8_Cmd(0xC0 + b);
	movf	(Lcd8_Set_Cursor@b),w
	addlw	0C0h
	fcall	_Lcd8_Cmd
	goto	l715
	
l714:	
	goto	l715
	line	76
	
l713:	
	
l715:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Set_Cursor
	__end_of_Lcd8_Set_Cursor:
;; =============== function _Lcd8_Set_Cursor ends ============

	signat	_Lcd8_Set_Cursor,8312
	global	_Lcd8_Clear
psect	text145,local,class=CODE,delta=2
global __ptext145
__ptext145:

;; *************** function _Lcd8_Clear *****************
;; Defined at:
;;		line 66 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
;; Parameters:    Size  Location     Type
;;		None
;; Auto vars:     Size  Location     Type
;;		None
;; Return value:  Size  Location     Type
;;                  2  708[COMMON] int 
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
;;		_Lcd8_Cmd
;; This function is called by:
;;		_main
;; This function uses a non-reentrant model
;;
psect	text145
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	66
	global	__size_of_Lcd8_Clear
	__size_of_Lcd8_Clear	equ	__end_of_Lcd8_Clear-_Lcd8_Clear
	
_Lcd8_Clear:	
	opt	stack 5
; Regs used in _Lcd8_Clear: [wreg+status,2+status,0+pclath+cstack]
	line	67
	
l2041:	
;lcd.h: 67: Lcd8_Cmd(1);
	movlw	(01h)
	fcall	_Lcd8_Cmd
	line	68
	
l709:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Clear
	__end_of_Lcd8_Clear:
;; =============== function _Lcd8_Clear ends ============

	signat	_Lcd8_Clear,90
	global	_Lcd8_Write_Char
psect	text146,local,class=CODE,delta=2
global __ptext146
__ptext146:

;; *************** function _Lcd8_Write_Char *****************
;; Defined at:
;;		line 97 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
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
;;		_Lcd8_Port
;; This function is called by:
;;		_Lcd8_Write_String
;;		_main
;; This function uses a non-reentrant model
;;
psect	text146
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	97
	global	__size_of_Lcd8_Write_Char
	__size_of_Lcd8_Write_Char	equ	__end_of_Lcd8_Write_Char-_Lcd8_Write_Char
	
_Lcd8_Write_Char:	
	opt	stack 6
; Regs used in _Lcd8_Write_Char: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Write_Char@a stored from wreg
	movwf	(Lcd8_Write_Char@a)
	line	98
	
l2031:	
;lcd.h: 98: RB6 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(54/8),(54)&7
	line	99
	
l2033:	
;lcd.h: 99: Lcd8_Port(a);
	movf	(Lcd8_Write_Char@a),w
	fcall	_Lcd8_Port
	line	100
	
l2035:	
;lcd.h: 100: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	101
	
l2037:	
;lcd.h: 101: _delay((unsigned long)((4)*(8000000/4000.0)));
	opt asmopt_off
movlw	11
movwf	((??_Lcd8_Write_Char+0)+0+1),f
	movlw	98
movwf	((??_Lcd8_Write_Char+0)+0),f
u2457:
	decfsz	((??_Lcd8_Write_Char+0)+0),f
	goto	u2457
	decfsz	((??_Lcd8_Write_Char+0)+0+1),f
	goto	u2457
	clrwdt
opt asmopt_on

	line	102
	
l2039:	
;lcd.h: 102: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	103
	
l721:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Write_Char
	__end_of_Lcd8_Write_Char:
;; =============== function _Lcd8_Write_Char ends ============

	signat	_Lcd8_Write_Char,4216
	global	_Lcd8_Cmd
psect	text147,local,class=CODE,delta=2
global __ptext147
__ptext147:

;; *************** function _Lcd8_Cmd *****************
;; Defined at:
;;		line 57 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
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
;;		_Lcd8_Port
;; This function is called by:
;;		_Lcd8_Clear
;;		_Lcd8_Set_Cursor
;;		_Lcd8_Init
;;		_Lcd8_Shift_Right
;;		_Lcd8_Shift_Left
;; This function uses a non-reentrant model
;;
psect	text147
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	57
	global	__size_of_Lcd8_Cmd
	__size_of_Lcd8_Cmd	equ	__end_of_Lcd8_Cmd-_Lcd8_Cmd
	
_Lcd8_Cmd:	
	opt	stack 5
; Regs used in _Lcd8_Cmd: [wreg+status,2+status,0+pclath+cstack]
;Lcd8_Cmd@a stored from wreg
	movwf	(Lcd8_Cmd@a)
	line	58
	
l2021:	
;lcd.h: 58: RB6 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(54/8),(54)&7
	line	59
	
l2023:	
;lcd.h: 59: Lcd8_Port(a);
	movf	(Lcd8_Cmd@a),w
	fcall	_Lcd8_Port
	line	60
	
l2025:	
;lcd.h: 60: RB7 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(55/8),(55)&7
	line	61
	
l2027:	
;lcd.h: 61: _delay((unsigned long)((5)*(8000000/4000.0)));
	opt asmopt_off
movlw	13
movwf	((??_Lcd8_Cmd+0)+0+1),f
	movlw	251
movwf	((??_Lcd8_Cmd+0)+0),f
u2467:
	decfsz	((??_Lcd8_Cmd+0)+0),f
	goto	u2467
	decfsz	((??_Lcd8_Cmd+0)+0+1),f
	goto	u2467
	nop2
opt asmopt_on

	line	62
	
l2029:	
;lcd.h: 62: RB7 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(55/8),(55)&7
	line	63
	
l706:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Cmd
	__end_of_Lcd8_Cmd:
;; =============== function _Lcd8_Cmd ends ============

	signat	_Lcd8_Cmd,4216
	global	_Lcd8_Port
psect	text148,local,class=CODE,delta=2
global __ptext148
__ptext148:

;; *************** function _Lcd8_Port *****************
;; Defined at:
;;		line 15 in file "G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
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
;;		_Lcd8_Cmd
;;		_Lcd8_Init
;;		_Lcd8_Write_Char
;; This function uses a non-reentrant model
;;
psect	text148
	file	"G:\Electronics\Embeded\PIC Microcontroller\Hi-Tech C\Interfacing LCD with PIC Microcontroller - Hi Tech C\8 Bit\lcd.h"
	line	15
	global	__size_of_Lcd8_Port
	__size_of_Lcd8_Port	equ	__end_of_Lcd8_Port-_Lcd8_Port
	
_Lcd8_Port:	
	opt	stack 6
; Regs used in _Lcd8_Port: [wreg]
;Lcd8_Port@a stored from wreg
	movwf	(Lcd8_Port@a)
	line	16
	
l1157:	
;lcd.h: 16: if(a & 1)
	btfss	(Lcd8_Port@a),(0)&7
	goto	u11
	goto	u10
u11:
	goto	l687
u10:
	line	17
	
l1159:	
;lcd.h: 17: RC0 = 1;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bsf	(56/8),(56)&7
	goto	l688
	line	18
	
l687:	
	line	19
;lcd.h: 18: else
;lcd.h: 19: RC0 = 0;
	bcf	status, 5	;RP0=0, select bank0
	bcf	status, 6	;RP1=0, select bank0
	bcf	(56/8),(56)&7
	
l688:	
	line	21
;lcd.h: 21: if(a & 2)
	btfss	(Lcd8_Port@a),(1)&7
	goto	u21
	goto	u20
u21:
	goto	l689
u20:
	line	22
	
l1161:	
;lcd.h: 22: RC1 = 1;
	bsf	(57/8),(57)&7
	goto	l690
	line	23
	
l689:	
	line	24
;lcd.h: 23: else
;lcd.h: 24: RC1 = 0;
	bcf	(57/8),(57)&7
	
l690:	
	line	26
;lcd.h: 26: if(a & 4)
	btfss	(Lcd8_Port@a),(2)&7
	goto	u31
	goto	u30
u31:
	goto	l691
u30:
	line	27
	
l1163:	
;lcd.h: 27: RC2 = 1;
	bsf	(58/8),(58)&7
	goto	l692
	line	28
	
l691:	
	line	29
;lcd.h: 28: else
;lcd.h: 29: RC2 = 0;
	bcf	(58/8),(58)&7
	
l692:	
	line	31
;lcd.h: 31: if(a & 8)
	btfss	(Lcd8_Port@a),(3)&7
	goto	u41
	goto	u40
u41:
	goto	l693
u40:
	line	32
	
l1165:	
;lcd.h: 32: RC3 = 1;
	bsf	(59/8),(59)&7
	goto	l694
	line	33
	
l693:	
	line	34
;lcd.h: 33: else
;lcd.h: 34: RC3 = 0;
	bcf	(59/8),(59)&7
	
l694:	
	line	36
;lcd.h: 36: if(a & 16)
	btfss	(Lcd8_Port@a),(4)&7
	goto	u51
	goto	u50
u51:
	goto	l695
u50:
	line	37
	
l1167:	
;lcd.h: 37: RC4 = 1;
	bsf	(60/8),(60)&7
	goto	l696
	line	38
	
l695:	
	line	39
;lcd.h: 38: else
;lcd.h: 39: RC4 = 0;
	bcf	(60/8),(60)&7
	
l696:	
	line	41
;lcd.h: 41: if(a & 32)
	btfss	(Lcd8_Port@a),(5)&7
	goto	u61
	goto	u60
u61:
	goto	l697
u60:
	line	42
	
l1169:	
;lcd.h: 42: RC5 = 1;
	bsf	(61/8),(61)&7
	goto	l698
	line	43
	
l697:	
	line	44
;lcd.h: 43: else
;lcd.h: 44: RC5 = 0;
	bcf	(61/8),(61)&7
	
l698:	
	line	46
;lcd.h: 46: if(a & 64)
	btfss	(Lcd8_Port@a),(6)&7
	goto	u71
	goto	u70
u71:
	goto	l699
u70:
	line	47
	
l1171:	
;lcd.h: 47: RC6 = 1;
	bsf	(62/8),(62)&7
	goto	l700
	line	48
	
l699:	
	line	49
;lcd.h: 48: else
;lcd.h: 49: RC6 = 0;
	bcf	(62/8),(62)&7
	
l700:	
	line	51
;lcd.h: 51: if(a & 128)
	btfss	(Lcd8_Port@a),(7)&7
	goto	u81
	goto	u80
u81:
	goto	l701
u80:
	line	52
	
l1173:	
;lcd.h: 52: RC7 = 1;
	bsf	(63/8),(63)&7
	goto	l703
	line	53
	
l701:	
	line	54
;lcd.h: 53: else
;lcd.h: 54: RC7 = 0;
	bcf	(63/8),(63)&7
	goto	l703
	
l702:	
	line	55
	
l703:	
	return
	opt stack 0
GLOBAL	__end_of_Lcd8_Port
	__end_of_Lcd8_Port:
;; =============== function _Lcd8_Port ends ============

	signat	_Lcd8_Port,4216
psect	text149,local,class=CODE,delta=2
global __ptext149
__ptext149:
	global	btemp
	btemp set 07Eh

	DABS	1,126,2	;btemp
	global	wtemp0
	wtemp0 set btemp
	end
