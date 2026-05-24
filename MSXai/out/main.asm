;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module main
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _main
	.globl _UpdateKey
	.globl _WeightedPick
	.globl _FindStateIndex
	.globl _Pletter_UnpackToVRAM
	.globl _Math_GetRandom16
	.globl _Print_SetColor
	.globl _Print_DrawText
	.globl _VDP_ReadVRAM_128K
	.globl _VDP_SetMode
	.globl _VDP_ClearVRAM
	.globl _g_CurrentKey
	.globl _g_SLTSL
	.globl _g_GRPACY
	.globl _g_GRPACX
	.globl _g_LOGOPR
	.globl _g_CMASK
	.globl _g_CLOC
	.globl _g_FNKSTR
	.globl _g_ATRBYT
	.globl _g_BDRCLR
	.globl _g_BAKCLR
	.globl _g_FORCLR
	.globl _g_CSRX
	.globl _g_CSRY
	.globl _g_CLIKSW
	.globl _g_MLTPAT
	.globl _g_MLTATR
	.globl _g_MLTCGP
	.globl _g_MLTCOL
	.globl _g_MLTNAM
	.globl _g_GRPPAT
	.globl _g_GRPATR
	.globl _g_GRPCGP
	.globl _g_GRPCOL
	.globl _g_GRPNAM
	.globl _g_T32PAT
	.globl _g_T32ATR
	.globl _g_T32CGP
	.globl _g_T32COL
	.globl _g_T32NAM
	.globl _g_TXTPAT
	.globl _g_TXTATR
	.globl _g_TXTCGP
	.globl _g_TXTCOL
	.globl _g_TXTNAM
	.globl _g_CLMLST
	.globl _g_CRTCNT
	.globl _g_LINLEN
	.globl _g_LINL32
	.globl _g_LINL40
	.globl _Alphabet
	.globl _g_BDOS
	.globl _g_MASTER
	.globl _g_RAMAD3
	.globl _g_RAMAD2
	.globl _g_RAMAD1
	.globl _g_RAMAD0
	.globl _g_BREAKV
	.globl _g_DISKVE
	.globl _g_KANJTABLE
	.globl _g_STRSRC
	.globl _g_SUBRID
	.globl _g_CHAR_16
	.globl _g_MSXMID
	.globl _g_MSXVER
	.globl _g_ROMVersion
	.globl _g_BASRVN
	.globl _g_VDP_DW
	.globl _g_VDP_DR
	.globl _g_CGTABL
	.globl _g_SVFFFD
	.globl _g_RG27SAV
	.globl _g_RG26SAV
	.globl _g_RG25SAV
	.globl _g_SVFFF8
	.globl _g_MINROM
	.globl _g_RG23SAV
	.globl _g_RG22SAV
	.globl _g_RG21SAV
	.globl _g_RG20SAV
	.globl _g_RG19SAV
	.globl _g_RG18SAV
	.globl _g_RG17SAV
	.globl _g_RG16SAV
	.globl _g_RG15SAV
	.globl _g_RG14SAV
	.globl _g_RG13SAV
	.globl _g_RG12SAV
	.globl _g_RG11SAV
	.globl _g_RG10SAV
	.globl _g_RG09SAV
	.globl _g_RG08SAV
	.globl _g_PROCNM
	.globl _g_SLTWRK
	.globl _g_SLTATR
	.globl _g_SLTTBL
	.globl _g_EXPTBL
	.globl _g_MNROM
	.globl _g_DRWANG
	.globl _g_DRWSCL
	.globl _g_DRWFLG
	.globl _g_GYPOS
	.globl _g_GXPOS
	.globl _g_BRDATR
	.globl _g_CASPRV
	.globl _g_OLDSCR
	.globl _g_SCRMOD
	.globl _g_FLBMEM
	.globl _g_KANAMD
	.globl _g_KANAST
	.globl _g_CAPST
	.globl _g_CSTYLE
	.globl _g_CSRSW
	.globl _g_INSFLG
	.globl _g_ESCCNT
	.globl _g_GRPHED
	.globl _g_WINWID
	.globl _g_LOWLIM
	.globl _g_INTCNT
	.globl _g_INTVAL
	.globl _g_JIFFY
	.globl _g_PADX
	.globl _g_PADY
	.globl _g_INTFLG
	.globl _g_RTYCNT
	.globl _g_TRPTBL
	.globl _g_HIMEM
	.globl _g_BOTTOM
	.globl _g_PATWRK
	.globl _g_LINWRK
	.globl _g_KEYBUF
	.globl _g_NEWKEY
	.globl _g_OLDKEY
	.globl _g_CLIKFL
	.globl _g_ONGSBF
	.globl _g_FNKFLG
	.globl _g_FNKSWI
	.globl _g_CODSAV
	.globl _g_FSTPOS
	.globl _g_LINTTB
	.globl _g_BASROM
	.globl _g_ENSTOP
	.globl _g_VCBC
	.globl _g_VCBB
	.globl _g_VCBA
	.globl _g_PLYCNT
	.globl _g_MUSICF
	.globl _g_QUEUEN
	.globl _g_MCLPTR
	.globl _g_MCLLEN
	.globl _g_SAVVOL
	.globl _g_VOICEN
	.globl _g_SAVSP
	.globl _g_PRSCNT
	.globl _g_LSTMOD
	.globl _g_LSTCOM
	.globl _g_COMMSK
	.globl _g_ESTBLS
	.globl _g_FLAGS
	.globl _g_ERRORS
	.globl _g_DATCNT
	.globl _g_DEVNUM
	.globl _g_OLDINT
	.globl _g_OLDSTT
	.globl _g_MEXBIh
	.globl _g_RSIQLN
	.globl _g_RSFCB
	.globl _g_TOCNT
	.globl _g_RSTMP
	.globl _g_YSAVE
	.globl _g_XSAVE
	.globl _g_NORUSE
	.globl _g_MODE
	.globl _g_ROMA
	.globl _g_CHRCNT
	.globl _g_EXBRSA
	.globl _g_AVCSAV
	.globl _g_ACPAGE
	.globl _g_DPPAGE
	.globl _g_RS2IQ
	.globl _g_VOICCQ
	.globl _g_VOICBQ
	.globl _g_VOICAQ
	.globl _g_QUEBAK
	.globl _g_QUETAB
	.globl _g_ASPCT2
	.globl _g_ASPCT1
	.globl _g_HEADER
	.globl _g_HIGH
	.globl _g_LOW
	.globl _g_CS240
	.globl _g_CS120
	.globl _g_GETPNT
	.globl _g_PUTPNT
	.globl _g_REPCNT
	.globl _g_SCNCNT
	.globl _g_FRCNEW
	.globl _g_QUEUES
	.globl _g_MINUPD
	.globl _g_MAXUPD
	.globl _g_TRGFLG
	.globl _g_STATFL
	.globl _g_RG7SAV
	.globl _g_RG6SAV
	.globl _g_RG5SAV
	.globl _g_RG4SAV
	.globl _g_RG3SAV
	.globl _g_RG2SAV
	.globl _g_RG1SAV
	.globl _g_RG0SAV
	.globl _g_CNSDFG
	.globl _g_USRTAB
	.globl _g_CLPRIM
	.globl _g_WRPRIM
	.globl _g_RDPRIM
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
_g_PortPrimarySlot	=	0x00a8
_g_PortReadKeyboard	=	0x00a9
_g_PortAccessKeyboard	=	0x00aa
_g_PortControl	=	0x00ab
_g_VDP_DataPort	=	0x0098
_g_VDP_RegPort	=	0x0099
_g_VDP_AddrPort	=	0x0099
_g_VDP_StatPort	=	0x0099
_g_VDP_PalPort	=	0x009a
_g_VDP_IRegPort	=	0x009b
_g_PSG_RegPort	=	0x00a0
_g_PSG_DataPort	=	0x00a1
_g_PSG_StatPort	=	0x00a2
_g_PSG_Ext_RegPort	=	0x0010
_g_PSG_Ext_DataPort	=	0x0011
_g_PSG_Ext_StatPort	=	0x0012
_g_MSXMusic_IndexPort	=	0x007c
_g_MSXMusic_DataPort	=	0x007d
_g_MSXAudio_IndexPort	=	0x00c0
_g_MSXAudio_DataPort	=	0x00c1
_g_MSXAudio_IndexPort2	=	0x00c2
_g_MSXAudio_DataPort2	=	0x00c3
_g_RTC_AddrPort	=	0x00b4
_g_RTC_DataPort	=	0x00b5
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _DATA
_g_LINL40	=	0xf3ae
_g_LINL32	=	0xf3af
_g_LINLEN	=	0xf3b0
_g_CRTCNT	=	0xf3b1
_g_CLMLST	=	0xf3b2
_g_TXTNAM	=	0xf3b3
_g_TXTCOL	=	0xf3b5
_g_TXTCGP	=	0xf3b7
_g_TXTATR	=	0xf3b9
_g_TXTPAT	=	0xf3bb
_g_T32NAM	=	0xf3bd
_g_T32COL	=	0xf3bf
_g_T32CGP	=	0xf3c1
_g_T32ATR	=	0xf3c3
_g_T32PAT	=	0xf3c5
_g_GRPNAM	=	0xf3c7
_g_GRPCOL	=	0xf3c9
_g_GRPCGP	=	0xf3cb
_g_GRPATR	=	0xf3cd
_g_GRPPAT	=	0xf3cf
_g_MLTNAM	=	0xf3d1
_g_MLTCOL	=	0xf3d3
_g_MLTCGP	=	0xf3d5
_g_MLTATR	=	0xf3d7
_g_MLTPAT	=	0xf3d9
_g_CLIKSW	=	0xf3db
_g_CSRY	=	0xf3dc
_g_CSRX	=	0xf3dd
_g_FORCLR	=	0xf3e9
_g_BAKCLR	=	0xf3ea
_g_BDRCLR	=	0xf3eb
_g_ATRBYT	=	0xf3f2
_g_FNKSTR	=	0xf87f
_g_CLOC	=	0xf92a
_g_CMASK	=	0xf92c
_g_LOGOPR	=	0xfb02
_g_GRPACX	=	0xfcb7
_g_GRPACY	=	0xfcb9
_g_SLTSL	=	0xffff
_main_block_196608_909:
	.ds 8
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_CurrentKey::
	.ds 4
;--------------------------------------------------------
; absolute external ram data
;--------------------------------------------------------
	.area _DABS (ABS)
;--------------------------------------------------------
; global & static initialisations
;--------------------------------------------------------
	.area _HOME
	.area _GSINIT
	.area _GSFINAL
	.area _GSINIT
;--------------------------------------------------------
; Home
;--------------------------------------------------------
	.area _HOME
	.area _HOME
;--------------------------------------------------------
; code
;--------------------------------------------------------
	.area _CODE
;./main.c:28: u16 FindStateIndex(u32 target_key) {
;	---------------------------------
; Function FindStateIndex
; ---------------------------------
_FindStateIndex::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-11
	add	iy, sp
	ld	sp, iy
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
;./main.c:29: i16 low = 0;
	xor	a, a
	ld	-8 (ix), a
	ld	-7 (ix), a
;./main.c:30: i16 high = STATE_COUNT - 1;
	ld	-6 (ix), #0xfb
	ld	-5 (ix), #0x13
;./main.c:33: while (low <= high) {
00106$:
	ld	a, -6 (ix)
	sub	a, -8 (ix)
	ld	a, -5 (ix)
	sbc	a, -7 (ix)
	jp	PO, 00137$
	xor	a, #0x80
00137$:
	jp	M, 00108$
;./main.c:34: i16 mid = low + (high - low) / 2;
	ld	a, -6 (ix)
	sub	a, -8 (ix)
	ld	e, a
	ld	a, -5 (ix)
	sbc	a, -7 (ix)
	ld	d, a
	ld	c, e
	ld	b, d
	bit	7, d
	jr	Z, 00111$
	ld	c, e
	ld	b, d
	inc	bc
00111$:
	sra	b
	rr	c
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	push	hl
	pop	iy
;./main.c:39: VDP_ReadVRAM((u16)ADDR_INDEX + (mid * 3), 0, key_bytes, 3);
	push	iy
	pop	bc
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, bc
	ld	e, l
	ld	a, h
	add	a, #0x10
	ld	d, a
	push	bc
	push	iy
	ld	hl, #0x0003
	push	hl
	ld	hl, #6
	add	hl, sp
	push	hl
	xor	a, a
	push	af
	inc	sp
	ex	de, hl
	call	_VDP_ReadVRAM_128K
	pop	iy
	pop	bc
;./main.c:40: mid_key = (key_bytes[0] << 16) | (key_bytes[1] << 8) | key_bytes[2];
	ld	d, -10 (ix)
	ld	e, #0x00
	ld	a, -9 (ix)
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	or	a, e
	ld	e, a
	ld	a, l
	or	a, d
	ld	d, a
	rlca
	sbc	hl, hl
;./main.c:41: mid_key &= KEY_MASK;
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
;./main.c:43: if (mid_key == target_key) return (u16)mid;
	ld	a, -4 (ix)
	sub	a, e
	jr	NZ, 00102$
	ld	a, -3 (ix)
	sub	a, d
	jr	NZ, 00102$
	ld	a, l
	sub	a, -2 (ix)
	jr	NZ, 00102$
	ld	a, h
	sub	a, -1 (ix)
	jr	NZ, 00102$
	push	iy
	pop	de
	jp	00109$
00102$:
;./main.c:44: if (mid_key < target_key)  low = mid + 1;
	ld	a, e
	sub	a, -4 (ix)
	ld	a, d
	sbc	a, -3 (ix)
	ld	a, l
	sbc	a, -2 (ix)
	ld	a, h
	sbc	a, -1 (ix)
	jr	NC, 00104$
	inc	bc
	ld	-8 (ix), c
	ld	-7 (ix), b
	jp	00106$
00104$:
;./main.c:45: else                       high = mid - 1;
	dec	bc
	ld	-6 (ix), c
	ld	-5 (ix), b
	jp	00106$
00108$:
;./main.c:47: return 0xFFFF; // Not found
	ld	de, #0xffff
00109$:
;./main.c:48: }
	ld	sp, ix
	pop	ix
	ret
_g_RDPRIM	=	0xf380
_g_WRPRIM	=	0xf385
_g_CLPRIM	=	0xf38c
_g_USRTAB	=	0xf39a
_g_CNSDFG	=	0xf3de
_g_RG0SAV	=	0xf3df
_g_RG1SAV	=	0xf3e0
_g_RG2SAV	=	0xf3e1
_g_RG3SAV	=	0xf3e2
_g_RG4SAV	=	0xf3e3
_g_RG5SAV	=	0xf3e4
_g_RG6SAV	=	0xf3e5
_g_RG7SAV	=	0xf3e6
_g_STATFL	=	0xf3e7
_g_TRGFLG	=	0xf3e8
_g_MAXUPD	=	0xf3ec
_g_MINUPD	=	0xf3ef
_g_QUEUES	=	0xf3f3
_g_FRCNEW	=	0xf3f5
_g_SCNCNT	=	0xf3f6
_g_REPCNT	=	0xf3f7
_g_PUTPNT	=	0xf3f8
_g_GETPNT	=	0xf3fa
_g_CS120	=	0xf3fc
_g_CS240	=	0xf401
_g_LOW	=	0xf406
_g_HIGH	=	0xf408
_g_HEADER	=	0xf40a
_g_ASPCT1	=	0xf40b
_g_ASPCT2	=	0xf40d
_g_QUETAB	=	0xf959
_g_QUEBAK	=	0xf971
_g_VOICAQ	=	0xf975
_g_VOICBQ	=	0xf9f5
_g_VOICCQ	=	0xfa75
_g_RS2IQ	=	0xfaf5
_g_DPPAGE	=	0xfaf5
_g_ACPAGE	=	0xfaf6
_g_AVCSAV	=	0xfaf7
_g_EXBRSA	=	0xfaf8
_g_CHRCNT	=	0xfaf9
_g_ROMA	=	0xfafa
_g_MODE	=	0xfafc
_g_NORUSE	=	0xfafd
_g_XSAVE	=	0xfafe
_g_YSAVE	=	0xfb00
_g_RSTMP	=	0xfb03
_g_TOCNT	=	0xfb03
_g_RSFCB	=	0xfb04
_g_RSIQLN	=	0xfb06
_g_MEXBIh	=	0xfb07
_g_OLDSTT	=	0xfb0c
_g_OLDINT	=	0xfb0c
_g_DEVNUM	=	0xfb16
_g_DATCNT	=	0xfb17
_g_ERRORS	=	0xfb1a
_g_FLAGS	=	0xfb1b
_g_ESTBLS	=	0xfb1c
_g_COMMSK	=	0xfb1d
_g_LSTCOM	=	0xfb1e
_g_LSTMOD	=	0xfb1f
_g_PRSCNT	=	0xfb35
_g_SAVSP	=	0xfb36
_g_VOICEN	=	0xfb38
_g_SAVVOL	=	0xfb39
_g_MCLLEN	=	0xfb3b
_g_MCLPTR	=	0xfb3c
_g_QUEUEN	=	0xfb3e
_g_MUSICF	=	0xfb3f
_g_PLYCNT	=	0xfb40
_g_VCBA	=	0xfb41
_g_VCBB	=	0xfb66
_g_VCBC	=	0xfb8b
_g_ENSTOP	=	0xfbb0
_g_BASROM	=	0xfbb1
_g_LINTTB	=	0xfbb2
_g_FSTPOS	=	0xfbca
_g_CODSAV	=	0xfbcc
_g_FNKSWI	=	0xfbcd
_g_FNKFLG	=	0xfbce
_g_ONGSBF	=	0xfbd8
_g_CLIKFL	=	0xfbd9
_g_OLDKEY	=	0xfbda
_g_NEWKEY	=	0xfbe5
_g_KEYBUF	=	0xfbf0
_g_LINWRK	=	0xfc18
_g_PATWRK	=	0xfc40
_g_BOTTOM	=	0xfc48
_g_HIMEM	=	0xfc4a
_g_TRPTBL	=	0xfc4c
_g_RTYCNT	=	0xfc9a
_g_INTFLG	=	0xfc9b
_g_PADY	=	0xfc9c
_g_PADX	=	0xfc9d
_g_JIFFY	=	0xfc9e
_g_INTVAL	=	0xfca0
_g_INTCNT	=	0xfca2
_g_LOWLIM	=	0xfca4
_g_WINWID	=	0xfca5
_g_GRPHED	=	0xfca6
_g_ESCCNT	=	0xfca7
_g_INSFLG	=	0xfca8
_g_CSRSW	=	0xfca9
_g_CSTYLE	=	0xfcaa
_g_CAPST	=	0xfcab
_g_KANAST	=	0xfcac
_g_KANAMD	=	0xfcad
_g_FLBMEM	=	0xfcae
_g_SCRMOD	=	0xfcaf
_g_OLDSCR	=	0xfcb0
_g_CASPRV	=	0xfcb1
_g_BRDATR	=	0xfcb2
_g_GXPOS	=	0xfcb3
_g_GYPOS	=	0xfcb5
_g_DRWFLG	=	0xfcbb
_g_DRWSCL	=	0xfcbc
_g_DRWANG	=	0xfcbd
_g_MNROM	=	0xfcc1
_g_EXPTBL	=	0xfcc1
_g_SLTTBL	=	0xfcc5
_g_SLTATR	=	0xfcc9
_g_SLTWRK	=	0xfd09
_g_PROCNM	=	0xfd89
_g_RG08SAV	=	0xffe7
_g_RG09SAV	=	0xffe8
_g_RG10SAV	=	0xffe9
_g_RG11SAV	=	0xffea
_g_RG12SAV	=	0xffeb
_g_RG13SAV	=	0xffec
_g_RG14SAV	=	0xffed
_g_RG15SAV	=	0xffee
_g_RG16SAV	=	0xffef
_g_RG17SAV	=	0xfff0
_g_RG18SAV	=	0xfff1
_g_RG19SAV	=	0xfff2
_g_RG20SAV	=	0xfff3
_g_RG21SAV	=	0xfff4
_g_RG22SAV	=	0xfff5
_g_RG23SAV	=	0xfff6
_g_MINROM	=	0xfff7
_g_SVFFF8	=	0xfff8
_g_RG25SAV	=	0xfffa
_g_RG26SAV	=	0xfffb
_g_RG27SAV	=	0xfffc
_g_SVFFFD	=	0xfffd
_g_CGTABL	=	0x0004
_g_VDP_DR	=	0x0006
_g_VDP_DW	=	0x0007
_g_BASRVN	=	0x002b
_g_ROMVersion	=	0x002b
_g_MSXVER	=	0x002d
_g_MSXMID	=	0x002e
_g_CHAR_16	=	0x0034
_g_SUBRID	=	0x0000
_g_STRSRC	=	0x0002
_g_KANJTABLE	=	0xf30f
_g_DISKVE	=	0xf323
_g_BREAKV	=	0xf325
_g_RAMAD0	=	0xf341
_g_RAMAD1	=	0xf342
_g_RAMAD2	=	0xf343
_g_RAMAD3	=	0xf344
_g_MASTER	=	0xf348
_g_BDOS	=	0xf37d
_Alphabet:
	.ascii " ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789.,!?'"
	.db 0x22
	.ascii "()-+/;:="
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
	.db 0x00
;./main.c:53: u8 WeightedPick(u8* block) {
;	---------------------------------
; Function WeightedPick
; ---------------------------------
_WeightedPick::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	-3 (ix), l
	ld	-2 (ix), h
;./main.c:54: u16 total_weight = 0;
	ld	de, #0x0000
;./main.c:55: for (u8 i = 4; i < 8; i++) total_weight += block[i];
	ld	c, #0x04
00108$:
	ld	a, c
	sub	a, #0x08
	jr	NC, 00101$
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	b, #0x00
	add	hl, bc
	ld	l, (hl)
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	inc	c
	jp	00108$
00101$:
;./main.c:57: if (total_weight == 0) return 0; // Space fallback
	ld	a, d
	or	a,e
	jr	Z, 00113$
;./main.c:59: u16 roll = Math_GetRandom16() % total_weight;
	push	de
	call	_Math_GetRandom16
	pop	de
	call	__moduint
;./main.c:60: u16 acc = 0;
	ld	hl, #0x0000
;./main.c:62: for (u8 i = 0; i < 4; i++) {
	ld	-4 (ix), #0x00
	ld	-1 (ix), #0x00
00111$:
	ld	a, -1 (ix)
	sub	a, #0x04
	jr	NC, 00106$
;./main.c:63: acc += block[i + 4];
	ld	c, -1 (ix)
	ld	b, #0x00
	inc	bc
	inc	bc
	inc	bc
	inc	bc
	ld	a, c
	add	a, -3 (ix)
	ld	c, a
	ld	a, b
	adc	a, -2 (ix)
	ld	b, a
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	add	hl, bc
;./main.c:64: if (roll < acc) return block[i];
	ld	a, e
	sub	a, l
	ld	a, d
	sbc	a, h
	jr	NC, 00112$
	ld	a, -3 (ix)
	add	a, -4 (ix)
	ld	c, a
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	b, a
	ld	a, (bc)
	jp	00113$
00112$:
;./main.c:62: for (u8 i = 0; i < 4; i++) {
	inc	-1 (ix)
	ld	a, -1 (ix)
	ld	-4 (ix), a
	jp	00111$
00106$:
;./main.c:66: return block[0];
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	a, (hl)
00113$:
;./main.c:67: }
	ld	sp, ix
	pop	ix
	ret
;./main.c:72: void UpdateKey(u8 char_code) {
;	---------------------------------
; Function UpdateKey
; ---------------------------------
_UpdateKey::
	ld	c, a
;./main.c:73: g_CurrentKey = ((g_CurrentKey << 6) & KEY_MASK) | (char_code & 0x3F);
	ld	hl, (_g_CurrentKey)
	ld	de, (_g_CurrentKey + 2)
	ld	b, #0x06
00103$:
	add	hl, hl
	rl	e
	rl	d
	djnz	00103$
	ld	d, #0x00
	ld	a, c
	and	a, #0x3f
	ld	c, a
	ld	b, #0x00
	ld	a, c
	push	af
	ld	a, b
	push	iy
	ex	(sp), hl
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ex	(sp), hl
	pop	iy
	rlca
	sbc	a, a
	ld	c, a
	ld	b, a
	pop	af
	or	a, l
	ld	(_g_CurrentKey+0), a
	push	iy
	ex	(sp), hl
	ld	a, h
	ex	(sp), hl
	pop	iy
	or	a, h
	ld	(_g_CurrentKey+1), a
	ld	a, c
	or	a, e
	ld	(_g_CurrentKey+2), a
	ld	a, b
	or	a, d
	ld	(_g_CurrentKey+3), a
;./main.c:74: }
	ret
;./main.c:78: void main() {
;	---------------------------------
; Function main
; ---------------------------------
_main::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
;./main.c:80: VDP_SetMode(VDP_MODE_TEXT2); // 80 column mode
	ld	a, #0x04
	call	_VDP_SetMode
;./main.c:81: VDP_ClearVRAM();
	call	_VDP_ClearVRAM
;./main.c:82: Print_SetColor(15, 1); // White text (15) on dark blue background (1)
	ld	l, #0x01
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_Print_SetColor
;./main.c:84: Print_DrawText("MSXai V1.0\nINITIALIZING BRAIN...\n");
	ld	hl, #___str_1
	call	_Print_DrawText
;./main.c:87: Pletter_UnpackToVRAM(brain_index_comp, ADDR_INDEX);
	ld	de, #0x1000
	ld	hl, #_brain_index_comp
	call	_Pletter_UnpackToVRAM
;./main.c:88: Pletter_UnpackToVRAM(brain_data_comp, ADDR_DATA);
	ld	de, #0x5000
	ld	hl, #_brain_data_comp
	call	_Pletter_UnpackToVRAM
;./main.c:90: Print_DrawText("READY.\n\nPROMPT: ");
	ld	hl, #___str_2
	call	_Print_DrawText
;./main.c:92: while(1) {
00106$:
;./main.c:107: u16 state_idx = FindStateIndex(g_CurrentKey);
	ld	de, (_g_CurrentKey)
	ld	hl, (_g_CurrentKey + 2)
	call	_FindStateIndex
;./main.c:109: if (state_idx != 0xFFFF) {
	inc	sp
	inc	sp
	push	de
	ld	a, -5 (ix)
	and	a, -4 (ix)
	inc	a
	jr	Z, 00103$
;./main.c:111: VDP_ReadVRAM((u16)ADDR_DATA + (state_idx * 8), 0, block, 8);
	pop	hl
	push	hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, #0x5000
	add	hl, bc
	ld	de, #0x0008
	push	de
	ld	de, #_main_block_196608_909
	push	de
	xor	a, a
	push	af
	inc	sp
	call	_VDP_ReadVRAM_128K
;./main.c:113: u8 next_char_code = WeightedPick(block);
	ld	hl, #_main_block_196608_909
	call	_WeightedPick
	ld	-1 (ix), a
;./main.c:116: for(volatile u16 d=0; d<2000; d++); 
	xor	a, a
	ld	-3 (ix), a
	ld	-2 (ix), a
00110$:
	ld	a, -3 (ix)
	ld	b, -2 (ix)
	sub	a, #0xd0
	ld	a, b
	sbc	a, #0x07
	jr	NC, 00101$
	ld	c, -3 (ix)
	ld	b, -2 (ix)
	inc	bc
	ld	-3 (ix), c
	ld	-2 (ix), b
	jp	00110$
00101$:
;./main.c:119: c8 out_char[2] = { Alphabet[next_char_code], 0 };
	ld	bc, #_Alphabet+0
	ld	l, -1 (ix)
	ld	h, #0x00
	add	hl, bc
	ld	a, (hl)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
;./main.c:120: Print_DrawText(out_char);
	ld	hl, #2
	add	hl, sp
	call	_Print_DrawText
;./main.c:121: UpdateKey(next_char_code);
	ld	a, -1 (ix)
	call	_UpdateKey
	jp	00106$
00103$:
;C:/MSX/MSXgl-1.4.1/engine/src/system.h:145: inline void Halt() { __asm__("halt"); }
	halt
;./main.c:124: Halt();
;./main.c:127: }
	jp	00106$
___str_1:
	.ascii "MSXai V1.0"
	.db 0x0a
	.ascii "INITIALIZING BRAIN..."
	.db 0x0a
	.db 0x00
___str_2:
	.ascii "READY."
	.db 0x0a
	.db 0x0a
	.ascii "PROMPT: "
	.db 0x00
	.area _CODE
	.area _INITIALIZER
__xinit__g_CurrentKey:
	.byte #0x00, #0x00, #0x00, #0x00	; 0
	.area _CABS (ABS)
