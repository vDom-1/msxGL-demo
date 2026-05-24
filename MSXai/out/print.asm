;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module print
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _CopyNo8HeightFontData
	.globl _Print_ValidatePattern
	.globl _Print_ValidateChar
	.globl _Print_InitColorBuffer
	.globl _Print_MergeColor
	.globl _Print_SplitColor
	.globl _VDP_CommandWriteLoop
	.globl _VDP_CommandSetupR36
	.globl _VDP_CommandSetupR32
	.globl _VDP_CommandWait
	.globl _VDP_SetSpriteExMultiColor
	.globl _VDP_Poke_128K
	.globl _VDP_FillVRAM_128K
	.globl _VDP_WriteVRAM_128K
	.globl _VDP_RegWrite
	.globl _g_PrintInvalid
	.globl _g_PrintData
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
	.globl _g_HexChar
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
	.globl _Print_Initialize
	.globl _Print_SetMode
	.globl _Print_SetFont
	.globl _Print_SetColor
	.globl _Print_SetColorShade
	.globl _Print_SetBitmapFont
	.globl _DrawChar_8B
	.globl _DrawChar_4B
	.globl _DrawChar_2B
	.globl _DrawChar_Trans
	.globl _Print_SetVRAMFont
	.globl _DrawChar_VRAM256
	.globl _DrawChar_VRAM512
	.globl _Print_SetTextFont
	.globl _DrawChar_Layout
	.globl _Print_SetSpriteFont
	.globl _DrawChar_Sprite
	.globl _Print_SetShadow
	.globl _Print_EnableShadow
	.globl _Print_SetOutline
	.globl _Print_EnableOutline
	.globl _Print_Clear
	.globl _Print_Backspace
	.globl _Print_DrawChar
	.globl _Print_DrawCharX
	.globl _Print_DrawText
	.globl _Print_DrawBin8
	.globl _Print_DrawHex8
	.globl _Print_DrawHex16
	.globl _Print_DrawHex32
	.globl _Print_DrawInt
	.globl _Print_DrawFormat
	.globl _Print_DrawLineH
	.globl _Print_DrawLineV
	.globl _Print_DrawBox
;--------------------------------------------------------
; special function registers
;--------------------------------------------------------
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
_g_PrintData::
	.ds 59
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_PrintInvalid::
	.ds 8
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
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:103: u8 Print_SplitColor(u8 color)
;	---------------------------------
; Function Print_SplitColor
; ---------------------------------
_Print_SplitColor::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:106: if (PRINT_DATA.SourceMode == PRINT_MODE_SPRITE)
	ld	a, (#_g_PrintData+26)
	and	a, #0x0f
	sub	a, #0x04
	jr	NZ, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:107: return color;
	ld	a, c
	ret
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:110: switch (VDP_GetMode())
	cp	a, #0x06
	jr	Z, 00103$
	cp	a, #0x07
	jr	Z, 00104$
	cp	a, #0x08
	jr	Z, 00105$
	sub	a, #0x09
	jr	Z, 00106$
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:113: case VDP_MODE_GRAPHIC4: return color & 0x0F;
00103$:
	ld	a, c
	and	a, #0x0f
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:116: case VDP_MODE_GRAPHIC5: return color & 0x03;
00104$:
	ld	a, c
	and	a, #0x03
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:119: case VDP_MODE_GRAPHIC6: return color & 0x0F;
00105$:
	ld	a, c
	and	a, #0x0f
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:122: case VDP_MODE_GRAPHIC7: return color;
00106$:
	ld	a, c
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:124: }
00107$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:125: return color;
	ld	a, c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:126: }
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
_g_HexChar:
	.db #0x30	; 48	'0'
	.db #0x31	; 49	'1'
	.db #0x32	; 50	'2'
	.db #0x33	; 51	'3'
	.db #0x34	; 52	'4'
	.db #0x35	; 53	'5'
	.db #0x36	; 54	'6'
	.db #0x37	; 55	'7'
	.db #0x38	; 56	'8'
	.db #0x39	; 57	'9'
	.db #0x41	; 65	'A'
	.db #0x42	; 66	'B'
	.db #0x43	; 67	'C'
	.db #0x44	; 68	'D'
	.db #0x45	; 69	'E'
	.db #0x46	; 70	'F'
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:129: u8 Print_MergeColor(u8 color)
;	---------------------------------
; Function Print_MergeColor
; ---------------------------------
_Print_MergeColor::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:131: switch (VDP_GetMode())
	ld	a, (#_g_VDP_Data+0)
	cp	a,#0x06
	jr	Z, 00101$
	cp	a,#0x07
	jr	Z, 00102$
	cp	a,#0x08
	jr	Z, 00103$
	sub	a, #0x09
	jr	Z, 00104$
	jp	00105$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:134: case VDP_MODE_GRAPHIC4: return (color & 0x0F) << 4 | (color & 0x0F);
00101$:
	ld	a, c
	and	a, #0x0f
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	b, a
	ld	a, c
	and	a, #0x0f
	or	a, b
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:137: case VDP_MODE_GRAPHIC5: return (color & 0x03) << 6 + (color & 0x03) << 4 + (color & 0x03) << 2 + (color & 0x03);
00102$:
	ld	a, c
	and	a, #0x03
	ld	c, a
	add	a, #0x06
	push	af
	ld	e, c
	pop	af
	inc	a
	jp	00134$
00133$:
	sla	e
00134$:
	dec	a
	jr	NZ,00133$
	ld	a, c
	inc	a
	inc	a
	inc	a
	inc	a
	ld	b, a
	ld	a, e
	inc	b
	jp	00136$
00135$:
	add	a, a
00136$:
	djnz	00135$
	inc	c
	inc	c
	inc	c
	jp	00138$
00137$:
	add	a, a
00138$:
	dec	c
	jr	NZ,00137$
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:140: case VDP_MODE_GRAPHIC6: return (color & 0x0F) << 4 | (color & 0x0F);
00103$:
	ld	a, c
	and	a, #0x0f
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	b, a
	ld	a, c
	and	a, #0x0f
	or	a, b
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:143: case VDP_MODE_GRAPHIC7: return color;
00104$:
	ld	a, c
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:145: }
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:146: return color;
	ld	a, c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:147: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:158: bool Print_Initialize()
;	---------------------------------
; Function Print_Initialize
; ---------------------------------
_Print_Initialize::
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:160: Print_SetColor(0xF, 0x0);
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x0f
	call	_Print_SetColor
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #0x0000
	ld	((_g_PrintData + 5)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #(_g_PrintData + 7)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:163: Print_EnableShadow(FALSE);
	xor	a, a
	call	_Print_EnableShadow
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:166: Print_EnableOutline(FALSE);
	xor	a, a
	call	_Print_EnableOutline
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	hl, #_g_VDP_Data+0
	ld	c, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:169: switch (VDP_GetMode()) // Screen mode specific initialization
	ld	a, #0x11
	sub	a, c
	jp	C, 00114$
	ld	b, #0x00
	ld	hl, #00134$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00134$:
	jp	00101$
	jp	00115$
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00109$
	jp	00110$
	jp	00111$
	jp	00112$
	jp	00113$
	jp	00114$
	jp	00114$
	jp	00114$
	jp	00114$
	jp	00114$
	jp	00109$
	jp	00109$
	jp	00109$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:172: case VDP_MODE_TEXT1:		// 40 characters per line of text, one colour for each character
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x03
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:174: PRINT_DATA.ScreenWidth = 40;
	ld	hl, #0x0028
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:175: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:182: case VDP_MODE_GRAPHIC1:		// 32 characters per one line of text, the COLOURed character available
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x03
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:184: PRINT_DATA.ScreenWidth = 32;
	ld	hl, #0x0020
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:185: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:188: case VDP_MODE_GRAPHIC2:		// 256 x 192, the colour is specififed for each 8 dots
00104$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x03
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:190: PRINT_DATA.ScreenWidth = 32;
	ld	hl, #0x0020
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:191: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:194: case VDP_MODE_TEXT2:		// 80 characters per line of text, character blinkable selection
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x03
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:196: PRINT_DATA.ScreenWidth = 80;
	ld	hl, #0x0050
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:197: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:205: case VDP_MODE_GRAPHIC3:		// GRAPHIC 2 which can use sprite mode 2
00109$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x03
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:207: PRINT_DATA.ScreenWidth = 32;
	ld	hl, #0x0020
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:208: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:211: case VDP_MODE_GRAPHIC4:		// 256 x 212; 16 colours are available for each dot
00110$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x18
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:213: PRINT_DATA.ScreenWidth = 256;
	ld	hl, #0x0100
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:214: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:217: case VDP_MODE_GRAPHIC5:		// 512 x 212; 4 colours are available for each dot
00111$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x18
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:219: Print_SetColor(0x03, 0x0);
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x03
	call	_Print_SetColor
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:220: PRINT_DATA.ScreenWidth = 512;
	ld	hl, #0x0200
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:221: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:224: case VDP_MODE_GRAPHIC6:		// 512 x 212; 16 colours are available for each dot
00112$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x18
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:226: PRINT_DATA.ScreenWidth = 512;
	ld	hl, #0x0200
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:227: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:230: case VDP_MODE_GRAPHIC7:		// 256 x 212; 256 colours are available for each dot
00113$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:303: inline void Print_SetTabSize(u8 size) { PRINT_DATA.TabSize = size; }
	ld	hl, #(_g_PrintData + 4)
	ld	(hl), #0x18
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:232: Print_SetColor(0xFF, 0x0);
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0xff
	call	_Print_SetColor
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:233: PRINT_DATA.ScreenWidth = 256;
	ld	hl, #0x0100
	ld	((_g_PrintData + 27)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:234: break;
	jp	00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:236: default:
00114$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:238: return FALSE;
	xor	a, a
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:239: }
00115$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:243: return TRUE;
	ld	a, #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:244: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:248: void Print_SetMode(u8 mode)
;	---------------------------------
; Function Print_SetMode
; ---------------------------------
_Print_SetMode::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:250: PRINT_DATA.SourceMode = mode;
	ld	hl, #_g_PrintData + 26
	rrd
	ld	a, c
	rld
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:252: switch (PRINT_DATA.SourceMode)
	ld	a, (hl)
	and	a, #0x0f
	ld	c, a
	ld	a, #0x05
	sub	a, c
	ret	C
	ld	b, #0x00
	ld	hl, #00162$
	add	hl, bc
	add	hl, bc
	add	hl, bc
	jp	(hl)
00162$:
	jp	00101$
	jp	00107$
	jp	00109$
	jp	00109$
	jp	00115$
	jp	00116$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:255: case PRINT_MODE_BITMAP:
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:257: switch (VDP_GetMode()) // Screen mode specific initialization
	cp	a, #0x06
	jr	Z, 00104$
	cp	a, #0x07
	jr	Z, 00102$
	cp	a, #0x08
	jr	Z, 00104$
	sub	a, #0x09
	jr	Z, 00105$
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:260: case VDP_MODE_GRAPHIC5:
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:261: PRINT_DATA.DrawChar = DrawChar_2B;
	ld	hl, #_DrawChar_2B
	ld	((_g_PrintData + 24)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:262: break;
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:266: case VDP_MODE_GRAPHIC6:
00104$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:267: PRINT_DATA.DrawChar = DrawChar_4B;
	ld	hl, #_DrawChar_4B
	ld	((_g_PrintData + 24)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:268: break;
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:271: case VDP_MODE_GRAPHIC7:
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:272: PRINT_DATA.DrawChar = DrawChar_8B; 
	ld	hl, #_DrawChar_8B
	ld	((_g_PrintData + 24)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:276: break;
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:279: case PRINT_MODE_BITMAP_TRANS:
00107$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:281: PRINT_DATA.DrawChar = DrawChar_Trans;
	ld	hl, #_DrawChar_Trans
	ld	((_g_PrintData + 24)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:282: break;
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:288: case PRINT_MODE_BITMAP_VRAM_TRANS:
00109$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:290: switch (VDP_GetMode()) // Screen mode specific initialization
	cp	a, #0x06
	jr	Z, 00111$
	cp	a, #0x07
	jr	Z, 00113$
	cp	a, #0x08
	jr	Z, 00113$
	sub	a, #0x09
	ret	NZ
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:294: case VDP_MODE_GRAPHIC7:
00111$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:295: PRINT_DATA.DrawChar = DrawChar_VRAM256;
	ld	hl, #_DrawChar_VRAM256
	ld	((_g_PrintData + 24)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:296: break;
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:300: case VDP_MODE_GRAPHIC6:
00113$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:301: PRINT_DATA.DrawChar = DrawChar_VRAM512;
	ld	hl, #_DrawChar_VRAM512
	ld	((_g_PrintData + 24)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:305: break;
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:309: case PRINT_MODE_SPRITE:
00115$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:311: PRINT_DATA.DrawChar = DrawChar_Sprite;
	ld	hl, #_DrawChar_Sprite
	ld	((_g_PrintData + 24)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:312: break;
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:316: case PRINT_MODE_TEXT:
00116$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:318: PRINT_DATA.DrawChar = DrawChar_Layout;
	ld	hl, #_DrawChar_Layout
	ld	((_g_PrintData + 24)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:322: };
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:323: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:328: void Print_SetFont(const u8* font)
;	---------------------------------
; Function Print_SetFont
; ---------------------------------
_Print_SetFont::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:330: if (font == NULL) // Use Bios font (if any)
	ld	a, d
	or	a, e
	jr	NZ, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:331: Print_SetFontEx(8, 8, 6, 8, 1, 255, (const u8*)g_CGTABL + 8);
	ld	bc, (_g_CGTABL)
	ld	hl, #0x0008
	add	hl, bc
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:242: PRINT_DATA.PatternX     = patternX;
	ld	hl, #_g_PrintData
	ld	(hl), #0x08
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:243: PRINT_DATA.PatternY     = patternY;
	ld	bc, #_g_PrintData + 1
	ld	a, #0x08
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:244: PRINT_DATA.UnitX        = sizeX;
	ld	hl, #(_g_PrintData + 2)
	ld	(hl), #0x06
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:245: PRINT_DATA.UnitY        = sizeY;
	ld	hl, #(_g_PrintData + 3)
	ld	(hl), #0x08
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:246: PRINT_DATA.CharFirst    = firstChr;
	ld	hl, #(_g_PrintData + 21)
	ld	(hl), #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:247: PRINT_DATA.CharLast     = lastChr;
	ld	hl, #(_g_PrintData + 22)
	ld	(hl), #0xff
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:248: PRINT_DATA.CharCount    = lastChr - firstChr + 1;
	ld	hl, #(_g_PrintData + 23)
	ld	(hl), #0xff
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:249: PRINT_DATA.FontPatterns = patterns;
	ld	((_g_PrintData + 29)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:250: PRINT_DATA.FontAddr     = PRINT_DATA.FontPatterns - (firstChr * PRINT_DATA.PatternY); // pre-compute address of the virtual index 0 character (used to quick drawing in PutChar_GX functions)
	ld	a, (bc)
	ld	c, a
	ld	b, #0x00
	ld	a, e
	sub	a, c
	ld	c, a
	ld	a, d
	sbc	a, b
	ld	b, a
	ld	((_g_PrintData + 31)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:331: Print_SetFontEx(8, 8, 6, 8, 1, 255, (const u8*)g_CGTABL + 8);
	jp	00106$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:333: Print_SetFontEx(font[0] >> 4, font[0] & 0x0F, font[1] >> 4, font[1] & 0x0F, font[2], font[3], font+4);
	ld	hl, #0x0004
	add	hl, de
	ld	c, l
	ld	b, h
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-4 (ix), a
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	ld	a, (hl)
	push	af
	and	a, #0x0f
	ld	-2 (ix), a
	pop	af
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	ld	-1 (ix), a
	ld	a, (de)
	push	af
	and	a, #0x0f
	ld	e, a
	pop	af
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	ld	d, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:242: PRINT_DATA.PatternX     = patternX;
	ld	hl, #_g_PrintData
	ld	(hl), d
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:243: PRINT_DATA.PatternY     = patternY;
	ld	hl, #(_g_PrintData + 1)
	ld	(hl), e
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:244: PRINT_DATA.UnitX        = sizeX;
	ld	hl, #(_g_PrintData + 2)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:245: PRINT_DATA.UnitY        = sizeY;
	ld	hl, #(_g_PrintData + 3)
	ld	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:246: PRINT_DATA.CharFirst    = firstChr;
	ld	hl, #(_g_PrintData + 21)
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:247: PRINT_DATA.CharLast     = lastChr;
	ld	hl, #(_g_PrintData + 22)
	ld	a, -4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:248: PRINT_DATA.CharCount    = lastChr - firstChr + 1;
	ld	a, -4 (ix)
	sub	a, -3 (ix)
	inc	a
	ld	(#(_g_PrintData + 23)),a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:249: PRINT_DATA.FontPatterns = patterns;
	ld	((_g_PrintData + 29)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:250: PRINT_DATA.FontAddr     = PRINT_DATA.FontPatterns - (firstChr * PRINT_DATA.PatternY); // pre-compute address of the virtual index 0 character (used to quick drawing in PutChar_GX functions)
	push	bc
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00113$:
	add	hl, hl
	jr	NC, 00114$
	add	hl, de
00114$:
	djnz	00113$
	pop	bc
	ld	a, c
	sub	a, l
	ld	c, a
	ld	a, b
	sbc	a, h
	ld	b, a
	ld	((_g_PrintData + 31)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:333: Print_SetFontEx(font[0] >> 4, font[0] & 0x0F, font[1] >> 4, font[1] & 0x0F, font[2], font[3], font+4);
00106$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:334: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:339: void Print_InitColorBuffer(u8 t, u8 b)
;	---------------------------------
; Function Print_InitColorBuffer
; ---------------------------------
_Print_InitColorBuffer::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-8
	add	iy, sp
	ld	sp, iy
	ld	-1 (ix), a
	ld	-2 (ix), l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:342: switch (VDP_GetMode())
	ld	-3 (ix), a
	sub	a, #0x06
	jr	Z, 00102$
	ld	a, -3 (ix)
	sub	a, #0x07
	jr	Z, 00103$
	ld	a, -3 (ix)
	sub	a, #0x08
	jr	Z, 00102$
	ld	a, -3 (ix)
	sub	a, #0x09
	jp	Z,00104$
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:348: case VDP_MODE_GRAPHIC6:
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:351: PRINT_DATA.Buffer[0] = (b << 4) | b;	// [ 0, 0 ]
	ld	a, -2 (ix)
	ld	-3 (ix), a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	-3 (ix), a
	or	a, -2 (ix)
	ld	-4 (ix), a
	ld	hl, #(_g_PrintData + 42)
	ld	a, -4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:352: PRINT_DATA.Buffer[1] = (b << 4) | t;	// [ 0, 1 ]
	ld	a, -3 (ix)
	or	a, -1 (ix)
	ld	-3 (ix), a
	ld	hl, #(_g_PrintData + 43)
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:353: PRINT_DATA.Buffer[2] = (t << 4) | b;	// [ 1, 0 ]
	ld	a, -1 (ix)
	ld	-3 (ix), a
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	-4 (ix), a
	or	a, -2 (ix)
	ld	-3 (ix), a
	ld	hl, #(_g_PrintData + 44)
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:354: PRINT_DATA.Buffer[3] = (t << 4) | t;	// [ 1, 1 ]
	ld	a, -4 (ix)
	or	a, -1 (ix)
	ld	(#(_g_PrintData + 45)),a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:355: break;
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:358: case VDP_MODE_GRAPHIC5:
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:359: PRINT_DATA.Buffer[ 0] = (b << 6) | (b << 4) | (b << 2) | b;	// [ 0, 0, 0, 0 ]
	ld	a, -2 (ix)
	ld	-3 (ix), a
	rrca
	rrca
	and	a, #0xc0
	ld	-8 (ix), a
	ld	a, -3 (ix)
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	-7 (ix), a
	ld	a, -8 (ix)
	or	a, -7 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	add	a, a
	add	a, a
	ld	-5 (ix), a
	ld	a, -6 (ix)
	or	a, -5 (ix)
	ld	-4 (ix), a
	or	a, -2 (ix)
	ld	-3 (ix), a
	ld	hl, #(_g_PrintData + 42)
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:360: PRINT_DATA.Buffer[ 1] = (b << 6) | (b << 4) | (b << 2) | t;	// [ 0, 0, 0, 1 ]
	ld	a, -4 (ix)
	or	a, -1 (ix)
	ld	(#(_g_PrintData + 43)),a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:361: PRINT_DATA.Buffer[ 2] = (b << 6) | (b << 4) | (t << 2) | b;	// [ 0, 0, 1, 0 ]
	ld	c, -1 (ix)
	ld	a, c
	add	a, a
	add	a, a
	ld	e, a
	ld	a, -6 (ix)
	or	a, e
	ld	b, a
	or	a, -2 (ix)
	ld	(#(_g_PrintData + 44)),a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:362: PRINT_DATA.Buffer[ 3] = (b << 6) | (b << 4) | (t << 2) | t;	// [ 0, 0, 1, 1 ]
	ld	hl, #_g_PrintData + 45
	ld	a, b
	or	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:363: PRINT_DATA.Buffer[ 4] = (b << 6) | (t << 4) | (b << 2) | b;	// [ 0, 1, 0, 0 ]
	ld	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	ld	-4 (ix), a
	ld	a, -8 (ix)
	or	a, -4 (ix)
	ld	-3 (ix), a
	or	a, -5 (ix)
	ld	-6 (ix), a
	or	a, -2 (ix)
	ld	(#(_g_PrintData + 46)),a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:364: PRINT_DATA.Buffer[ 5] = (b << 6) | (t << 4) | (b << 2) | t;	// [ 0, 1, 0, 1 ]
	ld	hl, #_g_PrintData + 47
	ld	a, -6 (ix)
	or	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:365: PRINT_DATA.Buffer[ 6] = (b << 6) | (t << 4) | (t << 2) | b;	// [ 0, 1, 1, 0 ]
	ld	hl, #_g_PrintData + 48
	ld	a, -3 (ix)
	or	a, e
	ld	b, a
	or	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:366: PRINT_DATA.Buffer[ 7] = (b << 6) | (t << 4) | (t << 2) | t;	// [ 0, 1, 1, 1 ]
	ld	hl, #_g_PrintData + 49
	ld	a, b
	or	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:367: PRINT_DATA.Buffer[ 8] = (t << 6) | (b << 4) | (b << 2) | b;	// [ 1, 0, 0, 0 ]
	ld	a, c
	rrca
	rrca
	and	a, #0xc0
	ld	c, a
	or	a, -7 (ix)
	ld	b, a
	or	a, -5 (ix)
	ld	-3 (ix), a
	or	a, -2 (ix)
	ld	(#(_g_PrintData + 50)),a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:368: PRINT_DATA.Buffer[ 9] = (t << 6) | (b << 4) | (b << 2) | t;	// [ 1, 0, 0, 1 ]
	ld	hl, #_g_PrintData + 51
	ld	a, -3 (ix)
	or	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:369: PRINT_DATA.Buffer[10] = (t << 6) | (b << 4) | (t << 2) | b;	// [ 1, 0, 1, 0 ]
	ld	hl, #_g_PrintData + 52
	ld	a, b
	or	a, e
	ld	b, a
	or	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:370: PRINT_DATA.Buffer[11] = (t << 6) | (b << 4) | (t << 2) | t;	// [ 1, 0, 1, 1 ]
	ld	hl, #_g_PrintData + 53
	ld	a, b
	or	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:371: PRINT_DATA.Buffer[12] = (t << 6) | (t << 4) | (b << 2) | b;	// [ 1, 1, 0, 0 ]
	ld	hl, #_g_PrintData + 54
	ld	a, c
	or	a, -4 (ix)
	ld	d, a
	or	a, -5 (ix)
	ld	c, a
	or	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:372: PRINT_DATA.Buffer[13] = (t << 6) | (t << 4) | (b << 2) | t;	// [ 1, 1, 0, 1 ]
	ld	hl, #_g_PrintData + 55
	ld	a, c
	or	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:373: PRINT_DATA.Buffer[14] = (t << 6) | (t << 4) | (t << 2) | b;	// [ 1, 1, 1, 0 ]
	ld	bc, #_g_PrintData + 56
	ld	a, e
	or	a, d
	ld	e, a
	or	a, -2 (ix)
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:374: PRINT_DATA.Buffer[15] = (t << 6) | (t << 4) | (t << 2) | t;	// [ 1, 1, 1, 1 ]
	ld	bc, #_g_PrintData + 57
	ld	a, e
	or	a, -1 (ix)
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:375: break;
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:378: case VDP_MODE_GRAPHIC7:
00104$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:379: PRINT_DATA.Buffer[0] = b;	// [ 0, 0 ]
	ld	hl, #(_g_PrintData + 42)
	ld	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:380: PRINT_DATA.Buffer[1] = b;
	ld	hl, #(_g_PrintData + 43)
	ld	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:381: PRINT_DATA.Buffer[2] = b;	// [ 0, 1 ]
	ld	hl, #(_g_PrintData + 44)
	ld	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:382: PRINT_DATA.Buffer[3] = t;
	ld	hl, #(_g_PrintData + 45)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:383: PRINT_DATA.Buffer[4] = t;	// [ 1, 0 ]
	ld	hl, #(_g_PrintData + 46)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:384: PRINT_DATA.Buffer[5] = b;
	ld	hl, #(_g_PrintData + 47)
	ld	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:385: PRINT_DATA.Buffer[6] = t;	// [ 1, 1 ]
	ld	hl, #(_g_PrintData + 48)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:386: PRINT_DATA.Buffer[7] = t;
	ld	hl, #(_g_PrintData + 49)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:389: }	
00107$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:390: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:397: void Print_SetColor(u8 text, u8 bg)
;	---------------------------------
; Function Print_SetColor
; ---------------------------------
_Print_SetColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	c, a
	ld	-1 (ix), l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
	ld	-2 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:499: return mode >= VDP_MODE_GRAPHIC4;
	ld	b, a
	sub	a, #0x06
	ld	a, #0x00
	rla
	xor	a, #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:399: if (VDP_IsBitmapMode(VDP_GetMode())) // Bitmap mode
	ld	e, a
	or	a, a
	jr	Z, 00109$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:404: t = Print_SplitColor(t);
	ld	a, c
	call	_Print_SplitColor
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:409: for (u8 i = 0; i < PRINT_COLOR_NUM; ++i)
	ld	e, #0x00
00116$:
	ld	a, e
	sub	a, #0x0c
	jr	NC, 00101$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:411: PRINT_DATA.TextColor[i] = t;
	ld	hl, #(_g_PrintData + 8)
	ld	d, #0x00
	add	hl, de
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:409: for (u8 i = 0; i < PRINT_COLOR_NUM; ++i)
	inc	e
	jp	00116$
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:417: b = Print_SplitColor(b);
	push	bc
	ld	a, -1 (ix)
	call	_Print_SplitColor
	pop	bc
	ld	b, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:419: PRINT_DATA.BGColor = b;
	ld	hl, #(_g_PrintData + 20)
	ld	(hl), b
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:421: Print_InitColorBuffer(t, b);
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	call	_Print_InitColorBuffer
	jp	00118$
00109$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:427: u8 col = text << 4 | bg;
	ld	a, c
	add	a, a
	add	a, a
	add	a, a
	add	a, a
	or	a, -1 (ix)
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:428: switch (VDP_GetMode())
	ld	a, -2 (ix)
	or	a, a
	jr	Z, 00103$
	ld	a, -2 (ix)
	sub	a, #0x02
	jr	Z, 00104$
	ld	a, -2 (ix)
	sub	a, #0x03
	jr	Z, 00106$
	ld	a, -2 (ix)
	sub	a, #0x04
	jr	Z, 00103$
	ld	a, -2 (ix)
	sub	a, #0x05
	jr	Z, 00106$
	jp	00118$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:434: case VDP_MODE_TEXT2:		// 80 characters per line of text, character blinkable selection
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:724: inline void VDP_SetColor(u8 color) { VDP_RegWrite(7, color); }
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x07
	call	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:438: break;
	jp	00118$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:441: case VDP_MODE_GRAPHIC1:		// 32 characters per one line of text, the COLOURed character available
00104$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:442: VDP_FillVRAM(col, g_ScreenColorLow, 0, 32);
	ld	hl, #0x0020
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	de, (_g_ScreenColorLow)
	ld	a, c
	call	_VDP_FillVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:443: break;
	jp	00118$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:449: case VDP_MODE_GRAPHIC3:		// GRAPHIC 2 which can use sprite mode 2
00106$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:453: u16 dst = (u16)g_ScreenColorLow + PRINT_DATA.PatternOffset * 8;
	ld	a, (#_g_PrintData + 37)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	iy, (_g_ScreenColorLow)
	ex	de, hl
	add	iy, de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:454: VDP_FillVRAM(col, dst, 0, PRINT_DATA.CharCount * 8);
	ld	a, (#(_g_PrintData + 23) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	push	iy
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	iy
	pop	de
	ld	a, c
	call	_VDP_FillVRAM_128K
	pop	iy
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:455: dst += 256 * 8;
	ld	de, #0x0800
	add	iy, de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:456: VDP_FillVRAM(col, dst, 0, PRINT_DATA.CharCount * 8);
	ld	a, (#(_g_PrintData + 23) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	bc
	push	iy
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	iy
	pop	de
	ld	a, c
	call	_VDP_FillVRAM_128K
	pop	iy
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:457: dst += 256 * 8;
	push	iy
	pop	de
	ld	hl, #0x0800
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:458: VDP_FillVRAM(col, dst, 0, PRINT_DATA.CharCount * 8);
	ld	a, (#(_g_PrintData + 23) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	a, c
	call	_VDP_FillVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:462: };
00118$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:465: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:470: void Print_SetColorShade(const u8* shade)
;	---------------------------------
; Function Print_SetColorShade
; ---------------------------------
_Print_SetColorShade::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	hl, #_g_VDP_Data+0
	ld	e, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:499: return mode >= VDP_MODE_GRAPHIC4;
	ld	a, e
	sub	a, #0x06
	ld	a, #0x00
	rla
	xor	a, #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:472: if (VDP_IsBitmapMode(VDP_GetMode())) // Bitmap mode
	ld	d, a
	or	a, a
	jr	Z, 00107$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:475: for (u8 i = 0; i < PRINT_COLOR_NUM; ++i)
	ld	e, #0x00
00113$:
	ld	a, e
	sub	a, #0x0c
	jp	NC, 00118$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:477: u8 t = shade[i];
	ld	l, e
	ld	h, #0x00
	add	hl, bc
	ld	d, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:479: t = Print_SplitColor(t);
	push	bc
	push	de
	ld	a, d
	call	_Print_SplitColor
	pop	de
	pop	bc
	ld	d, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:481: PRINT_DATA.TextColor[i] = t;
	ld	a, #<((_g_PrintData + 8))
	add	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>((_g_PrintData + 8))
	adc	a, #0x00
	ld	h, a
	ld	(hl), d
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:475: for (u8 i = 0; i < PRINT_COLOR_NUM; ++i)
	inc	e
	jp	00113$
00107$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:488: switch (VDP_GetMode())
	ld	a,e
	cp	a,#0x03
	jr	Z, 00103$
	sub	a, #0x05
	jr	NZ, 00118$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:494: case VDP_MODE_GRAPHIC3:		// GRAPHIC 2 which can use sprite mode 2
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:498: u16 dst = (u16)g_ScreenColorLow + PRINT_DATA.PatternOffset * 8;
	ld	a, (#_g_PrintData + 37)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	iy, (_g_ScreenColorLow)
	ex	de, hl
	add	iy, de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:499: for (u8 i = 0; i < PRINT_DATA.CharCount; ++i)
	ld	-1 (ix), #0x00
00116$:
	ld	hl, #_g_PrintData + 23
	ld	a,-1 (ix)
	sub	a,(hl)
	jr	NC, 00118$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:501: VDP_WriteVRAM(shade, dst,           0, 8);
	push	bc
	push	iy
	ld	hl, #0x0008
	push	hl
	xor	a, a
	push	af
	inc	sp
	push	iy
	pop	de
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
	pop	iy
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:502: VDP_WriteVRAM(shade, dst + 256 * 8, 0, 8);
	push	iy
	pop	hl
	ld	e, l
	ld	a, h
	add	a, #0x08
	ld	d, a
	push	hl
	push	bc
	ld	hl, #0x0008
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
	pop	bc
	pop	hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:503: VDP_WriteVRAM(shade, dst + 512 * 8, 0, 8);
	ld	e, l
	ld	a, h
	add	a, #0x10
	ld	d, a
	push	hl
	push	bc
	ld	hl, #0x0008
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
	pop	bc
	pop	hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:504: dst += 8;
	ld	de, #0x0008
	add	hl, de
	push	hl
	pop	iy
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:499: for (u8 i = 0; i < PRINT_DATA.CharCount; ++i)
	inc	-1 (ix)
	jp	00116$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:509: };
00118$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:512: }
	inc	sp
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:526: u8 Print_ValidateChar(u8 chr)
;	---------------------------------
; Function Print_ValidateChar
; ---------------------------------
_Print_ValidateChar::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:528: if ((chr < PRINT_DATA.CharFirst) || (chr > PRINT_DATA.CharLast))
	ld	hl, #_g_PrintData + 21
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jr	C, 00113$
	ld	a, (#_g_PrintData + 22)
	sub	a, c
	jr	NC, 00114$
00113$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:530: if ((chr >= 'a') && (chr <= 'z') && (PRINT_DATA.CharFirst <= 'A') && (PRINT_DATA.CharLast >= 'Z')) // try to remap to upper case letter
	ld	a, c
	sub	a, #0x61
	jr	C, 00108$
	ld	a, #0x7a
	sub	a, c
	jr	C, 00108$
	ld	a, #0x41
	sub	a, b
	jr	C, 00108$
	ld	a, (#_g_PrintData + 22)
	sub	a, #0x5a
	jr	C, 00108$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:532: chr = chr - 'a' + 'A';
	ld	a, c
	add	a, #0xe0
	ld	c, a
	jp	00114$
00108$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:534: else if ((chr >= 'A') && (chr <= 'Z') && (PRINT_DATA.CharFirst <= 'a') && (PRINT_DATA.CharLast >= 'z')) // try to remap to lower case letter
	ld	a, c
	sub	a, #0x41
	jr	C, 00102$
	ld	a, #0x5a
	sub	a, c
	jr	C, 00102$
	ld	a, #0x61
	sub	a, b
	jr	C, 00102$
	ld	a, (#_g_PrintData + 22)
	sub	a, #0x7a
	jr	C, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:536: chr = chr - 'A' + 'a';
	ld	a, c
	add	a, #0x20
	ld	c, a
	jp	00114$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:539: chr = PRINT_DATA.CharFirst;
	ld	c, b
00114$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:541: return chr;
	ld	a, c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:542: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:547: u8 Print_ValidatePattern(u8 chr, const c8** patterns)
;	---------------------------------
; Function Print_ValidatePattern
; ---------------------------------
_Print_ValidatePattern::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	c, a
	ld	-2 (ix), e
	ld	-1 (ix), d
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:549: if ((chr < PRINT_DATA.CharFirst) || (chr > PRINT_DATA.CharLast))
	ld	hl, #_g_PrintData + 21
	ld	e, (hl)
	ld	a, c
	sub	a, e
	jr	C, 00113$
	ld	a, (#_g_PrintData + 22)
	sub	a, c
	jp	NC, 00114$
00113$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:551: if ((chr >= 'a') && (chr <= 'z') && (PRINT_DATA.CharFirst <= 'A') && (PRINT_DATA.CharLast >= 'Z')) // try to remap to upper case letter
	ld	a, c
	sub	a, #0x61
	jr	C, 00108$
	ld	a, #0x7a
	sub	a, c
	jr	C, 00108$
	ld	a, #0x41
	sub	a, e
	jr	C, 00108$
	ld	a, (#_g_PrintData + 22)
	sub	a, #0x5a
	jr	C, 00108$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:553: chr = chr - 'a' + 'A';
	ld	a, c
	add	a, #0xe0
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:554: *patterns = PRINT_DATA.FontPatterns + PRINT_DATA.PatternY * (chr - PRINT_DATA.CharFirst);
	ld	hl, #_g_PrintData + 29
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	hl, #_g_PrintData + 1
	ld	b, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
	ld	d, h
	cp	a, a
	sbc	hl, de
	ex	de, hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	pop	bc
	ld	a, e
	add	a, -4 (ix)
	ld	b, a
	ld	a, d
	adc	a, -3 (ix)
	ld	e, a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
	jp	00114$
00108$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:556: else if ((chr >= 'A') && (chr <= 'Z') && (PRINT_DATA.CharFirst <= 'a') && (PRINT_DATA.CharLast >= 'z')) // try to remap to lower case letter
	ld	a, c
	sub	a, #0x41
	jr	C, 00102$
	ld	a, #0x5a
	sub	a, c
	jr	C, 00102$
	ld	a, #0x61
	sub	a, e
	jr	C, 00102$
	ld	a, (#_g_PrintData + 22)
	sub	a, #0x7a
	jr	C, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:558: chr = chr - 'A' + 'a';
	ld	a, c
	add	a, #0x20
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:559: *patterns = PRINT_DATA.FontPatterns + PRINT_DATA.PatternY * (chr - PRINT_DATA.CharFirst);
	ld	hl, #_g_PrintData + 29
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	hl, #_g_PrintData + 1
	ld	b, (hl)
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
	ld	d, h
	cp	a, a
	sbc	hl, de
	ex	de, hl
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	call	__mulint
	pop	bc
	ld	a, e
	add	a, -4 (ix)
	ld	b, a
	ld	a, d
	adc	a, -3 (ix)
	ld	e, a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	(hl), b
	inc	hl
	ld	(hl), e
	jp	00114$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:562: *patterns = g_PrintInvalid;
	pop	de
	pop	hl
	push	hl
	push	de
	ld	(hl), #<(_g_PrintInvalid)
	inc	hl
	ld	(hl), #>(_g_PrintInvalid)
00114$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:564: return chr;
	ld	a, c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:565: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:579: void Print_SetBitmapFont(const u8* font)
;	---------------------------------
; Function Print_SetBitmapFont
; ---------------------------------
_Print_SetBitmapFont::
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:581: Print_SetFont(font);
	call	_Print_SetFont
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:582: Print_SetMode(PRINT_MODE_BITMAP);
	xor	a, a
	call	_Print_SetMode
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:583: Print_Initialize();
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:584: }
	jp	_Print_Initialize
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:590: void DrawChar_8B(u8 chr)
;	---------------------------------
; Function DrawChar_8B
; ---------------------------------
_DrawChar_8B::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:592: const u8* patterns = PRINT_DATA.FontAddr + chr * PRINT_H(PRINT_DATA.PatternY); // Get character patterns' base address
	ld	de, (#_g_PrintData + 31)
	ld	a, (#(_g_PrintData + 1) + 0)
	push	de
	ld	e, a
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00120$:
	add	hl, hl
	jr	NC, 00121$
	add	hl, de
00121$:
	djnz	00120$
	pop	de
	add	hl, de
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:594: chr = Print_ValidatePattern(chr, &patterns);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	a, c
	call	_Print_ValidatePattern
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:596: u16* l = (u16*)g_HeapStartAddress;
	ld	bc, (_g_HeapStartAddress)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:597: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j) // Unpack each 6/8-bits line to buffer and send it to VRAM
	ld	-1 (ix), #0x00
00105$:
	ld	hl, #(_g_PrintData + 1)
	ld	e, (hl)
	ld	a, -1 (ix)
	sub	a, e
	jp	NC, 00101$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:600: Print_InitColorBuffer(PRINT_DATA.TextColor[j], PRINT_DATA.BGColor);
	ld	hl, #_g_PrintData + 20
	ld	e, (hl)
	ld	a, #<((_g_PrintData + 8))
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>((_g_PrintData + 8))
	adc	a, #0x00
	ld	h, a
	ld	d, (hl)
	push	bc
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	call	_Print_InitColorBuffer
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:602: u8 f = patterns[j];
	ld	a, -6 (ix)
	add	a, -1 (ix)
	ld	e, a
	ld	a, -5 (ix)
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:603: *l++ = ((u16*)PRINT_DATA.Buffer)[f >> 6];
	ld	-2 (ix), a
	rlca
	rlca
	and	a, #0x03
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	add	hl, hl
	ld	de, #(_g_PrintData + 42)
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	bc
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:604: *l++ = ((u16*)PRINT_DATA.Buffer)[(f >> 4) & 0x03];
	ld	a, -2 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x3
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #(_g_PrintData + 42)
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	bc
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:605: *l++ = ((u16*)PRINT_DATA.Buffer)[(f >> 2) & 0x03];
	ld	a, -2 (ix)
	rrca
	rrca
	and	a, #0x3
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #(_g_PrintData + 42)
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	bc
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:607: *l++ = ((u16*)PRINT_DATA.Buffer)[f & 0x03];
	ld	a, -2 (ix)
	and	a, #0x03
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	ld	de, #(_g_PrintData + 42)
	add	hl, de
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	ld	l, c
	ld	h, b
	ld	(hl), e
	inc	hl
	ld	(hl), d
	inc	bc
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:597: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j) // Unpack each 6/8-bits line to buffer and send it to VRAM
	inc	-1 (ix)
	jp	00105$
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:610: VDP_CommandHMMC((u8*)g_HeapStartAddress, PRINT_DATA.CursorX, PRINT_DATA.CursorY, DATA_LEN, PRINT_H(PRINT_DATA.PatternY));
	ld	-4 (ix), e
	ld	-3 (ix), #0x00
	ld	a, (#_g_PrintData + 7)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	bc, (#_g_PrintData + 5)
	ld	de, (_g_HeapStartAddress)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:23: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:24: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:25: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:26: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:27: g_VDP_Command.CLR = *addr;
	ld	a, (de)
	ld	(#(_g_VDP_Command + 12)),a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:28: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:29: g_VDP_Command.CMD = VDP_CMD_HMMC;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xf0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:30: VDP_CommandSetupR36();
	push	de
	call	_VDP_CommandSetupR36
	pop	de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:31: VDP_CommandWriteLoop(addr);
	ex	de, hl
	call	_VDP_CommandWriteLoop
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:610: VDP_CommandHMMC((u8*)g_HeapStartAddress, PRINT_DATA.CursorX, PRINT_DATA.CursorY, DATA_LEN, PRINT_H(PRINT_DATA.PatternY));
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:611: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:619: void DrawChar_4B(u8 chr)
;	---------------------------------
; Function DrawChar_4B
; ---------------------------------
_DrawChar_4B::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:621: const u8* patterns = PRINT_DATA.FontAddr + chr * PRINT_H(PRINT_DATA.PatternY); // Get character patterns' base address
	ld	de, (#_g_PrintData + 31)
	ld	a, (#(_g_PrintData + 1) + 0)
	push	de
	ld	e, a
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00120$:
	add	hl, hl
	jr	NC, 00121$
	add	hl, de
00121$:
	djnz	00120$
	pop	de
	add	hl, de
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:623: chr = Print_ValidatePattern(chr, &patterns);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	a, c
	call	_Print_ValidatePattern
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:625: u8* l = (u8*)g_HeapStartAddress;
	ld	bc, (_g_HeapStartAddress)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:626: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j) // Unpack each 6/8-bits line to buffer and send it to VRAM
	ld	e, #0x00
00105$:
	ld	hl, #(_g_PrintData + 1)
	ld	l, (hl)
;	spillPairReg hl
	ld	a, e
	sub	a, l
	jr	NC, 00101$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:629: Print_InitColorBuffer(PRINT_DATA.TextColor[j], PRINT_DATA.BGColor);
	ld	hl, #_g_PrintData + 20
	ld	d, (hl)
	ld	a, #<((_g_PrintData + 8))
	add	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>((_g_PrintData + 8))
	adc	a, #0x00
	ld	h, a
	ld	h, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	call	_Print_InitColorBuffer
	pop	de
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:631: u8 f = patterns[j];
	pop	hl
	push	hl
	ld	d, #0x00
	add	hl, de
	ld	d, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:632: *l++ = PRINT_DATA.Buffer[f >> 6];
	ld	a, d
	rlca
	rlca
	and	a, #0x03
	add	a, #<((_g_PrintData + 42))
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x00
	adc	a, #>((_g_PrintData + 42))
	ld	h, a
	ld	a, (hl)
	ld	(bc), a
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:633: *l++ = PRINT_DATA.Buffer[(f >> 4) & 0x03];
	ld	a, d
	rlca
	rlca
	rlca
	rlca
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x3
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	de, #(_g_PrintData + 42)
	add	hl, de
	pop	de
	ld	a, (hl)
	ld	(bc), a
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:634: *l++ = PRINT_DATA.Buffer[(f >> 2) & 0x03];
	ld	a, d
	rrca
	rrca
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x3
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	de, #(_g_PrintData + 42)
	add	hl, de
	pop	de
	ld	a, (hl)
	ld	(bc), a
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:636: *l++ = PRINT_DATA.Buffer[f & 0x03];
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	and	a, #0x03
	ld	d, #0x00
	add	a, #<((_g_PrintData + 42))
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, #>((_g_PrintData + 42))
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl)
	ld	(bc), a
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:626: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j) // Unpack each 6/8-bits line to buffer and send it to VRAM
	inc	e
	jp	00105$
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:639: VDP_CommandHMMC((u8*)g_HeapStartAddress, PRINT_DATA.CursorX, PRINT_DATA.CursorY, DATA_LEN, PRINT_H(PRINT_DATA.PatternY));
	ld	-4 (ix), l
	ld	-3 (ix), #0x00
	ld	a, (#_g_PrintData + 7)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	bc, (#_g_PrintData + 5)
	ld	de, (_g_HeapStartAddress)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:23: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:24: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:25: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:26: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:27: g_VDP_Command.CLR = *addr;
	ld	a, (de)
	ld	(#(_g_VDP_Command + 12)),a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:28: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:29: g_VDP_Command.CMD = VDP_CMD_HMMC;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xf0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:30: VDP_CommandSetupR36();
	push	de
	call	_VDP_CommandSetupR36
	pop	de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:31: VDP_CommandWriteLoop(addr);
	ex	de, hl
	call	_VDP_CommandWriteLoop
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:639: VDP_CommandHMMC((u8*)g_HeapStartAddress, PRINT_DATA.CursorX, PRINT_DATA.CursorY, DATA_LEN, PRINT_H(PRINT_DATA.PatternY));
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:640: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:648: void DrawChar_2B(u8 chr)
;	---------------------------------
; Function DrawChar_2B
; ---------------------------------
_DrawChar_2B::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:650: const u8* patterns = PRINT_DATA.FontAddr + chr * PRINT_H(PRINT_DATA.PatternY); // Get character patterns' base address
	ld	de, (#_g_PrintData + 31)
	ld	a, (#(_g_PrintData + 1) + 0)
	push	de
	ld	e, a
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00120$:
	add	hl, hl
	jr	NC, 00121$
	add	hl, de
00121$:
	djnz	00120$
	pop	de
	add	hl, de
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:652: chr = Print_ValidatePattern(chr, &patterns);
	ld	hl, #0
	add	hl, sp
	ex	de, hl
	ld	a, c
	call	_Print_ValidatePattern
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:654: u8* l = (u8*)g_HeapStartAddress;
	ld	bc, (_g_HeapStartAddress)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:655: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j) // Unpack each 6/8-bits line to buffer and send it to VRAM
	ld	e, #0x00
00105$:
	ld	hl, #(_g_PrintData + 1)
	ld	l, (hl)
;	spillPairReg hl
	ld	a, e
	sub	a, l
	jr	NC, 00101$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:658: Print_InitColorBuffer(PRINT_DATA.TextColor[j], PRINT_DATA.BGColor);
	ld	hl, #_g_PrintData + 20
	ld	d, (hl)
	ld	a, #<((_g_PrintData + 8))
	add	a, e
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #>((_g_PrintData + 8))
	adc	a, #0x00
	ld	h, a
	ld	h, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	call	_Print_InitColorBuffer
	pop	de
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:660: u8 f = patterns[j];
	pop	hl
	push	hl
	ld	d, #0x00
	add	hl, de
	ld	d, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:661: *l++ = PRINT_DATA.Buffer[f >> 4];
	ld	a, d
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	add	a, #<((_g_PrintData + 42))
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x00
	adc	a, #>((_g_PrintData + 42))
	ld	h, a
	ld	a, (hl)
	ld	(bc), a
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:662: *l++ = PRINT_DATA.Buffer[f & 0x0F];
	ld	a, d
	and	a, #0x0f
	ld	d, #0x00
	add	a, #<((_g_PrintData + 42))
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, d
	adc	a, #>((_g_PrintData + 42))
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, (hl)
	ld	(bc), a
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:655: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j) // Unpack each 6/8-bits line to buffer and send it to VRAM
	inc	e
	jp	00105$
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:664: VDP_CommandHMMC((u8*)g_HeapStartAddress, PRINT_DATA.CursorX, PRINT_DATA.CursorY, 8, PRINT_H(PRINT_DATA.PatternY));
	ld	-4 (ix), l
	ld	-3 (ix), #0x00
	ld	a, (#_g_PrintData + 7)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	bc, (#_g_PrintData + 5)
	ld	de, (_g_HeapStartAddress)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:23: g_VDP_Command.DX = dx;
	ld	((_g_VDP_Command + 4)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:24: g_VDP_Command.DY = dy;
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:25: g_VDP_Command.NX = nx;
	ld	hl, #0x0008
	ld	((_g_VDP_Command + 8)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:26: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:27: g_VDP_Command.CLR = *addr;
	ld	a, (de)
	ld	(#(_g_VDP_Command + 12)),a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:28: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:29: g_VDP_Command.CMD = VDP_CMD_HMMC;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xf0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:30: VDP_CommandSetupR36();
	push	de
	call	_VDP_CommandSetupR36
	pop	de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:31: VDP_CommandWriteLoop(addr);
	ex	de, hl
	call	_VDP_CommandWriteLoop
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:664: VDP_CommandHMMC((u8*)g_HeapStartAddress, PRINT_DATA.CursorX, PRINT_DATA.CursorY, 8, PRINT_H(PRINT_DATA.PatternY));
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:665: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:671: void DrawChar_Trans(u8 chr)
;	---------------------------------
; Function DrawChar_Trans
; ---------------------------------
_DrawChar_Trans::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-5
	add	hl, sp
	ld	sp, hl
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:673: const u8* patterns = PRINT_DATA.FontAddr + chr * PRINT_H(PRINT_DATA.PatternY); // Get character patterns' base address
	ld	de, (#_g_PrintData + 31)
	ld	a, (#(_g_PrintData + 1) + 0)
	push	de
	ld	e, a
	ld	h, c
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00330$:
	add	hl, hl
	jr	NC, 00331$
	add	hl, de
00331$:
	djnz	00330$
	pop	de
	add	hl, de
	ld	-3 (ix), l
	ld	-2 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:675: chr = Print_ValidatePattern(chr, &patterns);
	ld	hl, #2
	add	hl, sp
	ex	de, hl
	ld	a, c
	call	_Print_ValidatePattern
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:678: if (PRINT_DATA.FX & PRINT_FX_SHADOW)
	ld	a, (#(_g_PrintData + 38) + 0)
	rrca
	jp	NC,00119$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:680: g_VDP_Command.DY = PRINT_DATA.CursorY + PRINT_DATA.ShadowOffsetY - 3;
	ld	a, (#_g_PrintData + 7)
	ld	c, a
	ld	b, #0x00
	ld	a, (#(_g_PrintData + 39) + 0)
	rrca
	rrca
	rrca
	and	a, #0x07
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	bc, #0xfffd
	add	hl,bc
	ld	c, l
	ld	a,h
	ld	b,a
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:681: g_VDP_Command.CLR = PRINT_DATA.ShadowColor;
	ld	bc, #_g_VDP_Command + 12
	ld	a, (#_g_PrintData + 40)
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:682: g_VDP_Command.ARG = 0;
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:683: g_VDP_Command.CMD = VDP_CMD_PSET + 0;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x50
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:684: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j)
	ld	-1 (ix), #0x00
00157$:
	ld	hl, #(_g_PrintData + 1)
	ld	a,-1 (ix)
	sub	a,(hl)
	jp	NC, 00119$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:686: g_VDP_Command.DX = PRINT_DATA.CursorX + PRINT_DATA.ShadowOffsetX - 3;
	ld	bc, (#_g_PrintData + 5)
	ld	a, (#(_g_PrintData + 39) + 0)
	and	a, #0x07
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	bc, #0xfffd
	add	hl,bc
	ld	c, l
	ld	a,h
	ld	b,a
	ld	((_g_VDP_Command + 4)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:688: u8 f = patterns[j];
	ld	a, -3 (ix)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	h, a
	ld	c, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:689: if (f & BIT_7) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	7, c
	jr	Z, 00102$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00102$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:690: if (f & BIT_6) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	6, c
	jr	Z, 00104$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00104$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:691: if (f & BIT_5) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	5, c
	jr	Z, 00106$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00106$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:692: if (f & BIT_4) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	4, c
	jr	Z, 00108$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00108$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:693: if (f & BIT_3) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	3, c
	jr	Z, 00110$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00110$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:694: if (f & BIT_2) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	2, c
	jr	Z, 00112$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00112$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:695: if (f & BIT_1) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	1, c
	jr	Z, 00114$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00114$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:696: if (f & BIT_0) VDP_CommandSetupR36();
	bit	0, c
	jr	Z, 00116$
	call	_VDP_CommandSetupR36
00116$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:697: g_VDP_Command.DY++;
	ld	bc, (#(_g_VDP_Command + 6) + 0)
	inc	bc
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:684: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j)
	inc	-1 (ix)
	jp	00157$
00119$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:702: if (PRINT_DATA.FX & PRINT_FX_OUTLINE)
	ld	a, (#(_g_PrintData + 38) + 0)
	bit	1, a
	jp	Z,00138$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:704: g_VDP_Command.DY = PRINT_DATA.CursorY - 1;
	ld	a, (#_g_PrintData + 7)
	ld	b, #0x00
	ld	c, a
	dec	bc
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:705: g_VDP_Command.NX = 3;
	ld	hl, #0x0003
	ld	((_g_VDP_Command + 8)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:706: g_VDP_Command.NY = 3;
	ld	((_g_VDP_Command + 10)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:707: g_VDP_Command.CLR = PRINT_DATA.OutlineColor;
	ld	a, (#_g_PrintData + 41)
	ld	(#(_g_VDP_Command + 12)),a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:708: g_VDP_Command.ARG = 0;
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:709: g_VDP_Command.CMD = (u8)(VDP_CMD_LMMV + 0);
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x80
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:710: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j)
	ld	c, #0x00
00160$:
	ld	hl, #(_g_PrintData + 1)
	ld	b, (hl)
	ld	a, c
	sub	a, b
	jp	NC, 00138$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:712: g_VDP_Command.DX = PRINT_DATA.CursorX - 1;
	ld	de, (#_g_PrintData + 5)
	dec	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:714: u8 f = patterns[j];
	ld	l, -3 (ix)
	ld	h, -2 (ix)
	ld	b, #0x00
	add	hl, bc
	ld	b, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:715: if (f & BIT_7) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	7, b
	jr	Z, 00121$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00121$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:716: if (f & BIT_6) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	6, b
	jr	Z, 00123$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00123$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:717: if (f & BIT_5) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	5, b
	jr	Z, 00125$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00125$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:718: if (f & BIT_4) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	4, b
	jr	Z, 00127$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00127$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:719: if (f & BIT_3) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	3, b
	jr	Z, 00129$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00129$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:720: if (f & BIT_2) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	2, b
	jr	Z, 00131$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00131$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:721: if (f & BIT_1) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	1, b
	jr	Z, 00133$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00133$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:722: if (f & BIT_0) VDP_CommandSetupR36();
	bit	0, b
	jr	Z, 00135$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00135$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:723: g_VDP_Command.DY++;
	ld	hl, (#(_g_VDP_Command + 6) + 0)
	inc	hl
	ex	(sp), hl
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:710: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j)
	inc	c
	jp	00160$
00138$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:732: g_VDP_Command.DY = PRINT_DATA.CursorY;
	ld	a, (#_g_PrintData + 7)
	ld	c, a
	ld	b, #0x00
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:733: g_VDP_Command.ARG = 0;
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:734: g_VDP_Command.CMD = VDP_CMD_PSET + 0;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x50
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:738: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j)
	ld	-1 (ix), #0x00
00163$:
	ld	hl, #(_g_PrintData + 1)
	ld	a,-1 (ix)
	sub	a,(hl)
	jp	NC, 00165$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:741: g_VDP_Command.CLR = PRINT_DATA.TextColor[j];
	ld	bc, #_g_VDP_Command + 12
	ld	a, #<((_g_PrintData + 8))
	add	a, -1 (ix)
	ld	e, a
	ld	a, #>((_g_PrintData + 8))
	adc	a, #0x00
	ld	d, a
	ld	a, (de)
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:743: g_VDP_Command.DX = PRINT_DATA.CursorX;
	ld	bc, (#_g_PrintData + 5)
	ld	((_g_VDP_Command + 4)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:745: u8 f = patterns[j];
	ld	a, -3 (ix)
	add	a, -1 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, -2 (ix)
	adc	a, #0x00
	ld	h, a
	ld	c, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:746: if (f & BIT_7) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	7, c
	jr	Z, 00140$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00140$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:747: if (f & BIT_6) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	6, c
	jr	Z, 00142$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00142$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:748: if (f & BIT_5) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	5, c
	jr	Z, 00144$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00144$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:749: if (f & BIT_4) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	4, c
	jr	Z, 00146$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00146$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:750: if (f & BIT_3) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	3, c
	jr	Z, 00148$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00148$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:751: if (f & BIT_2) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	2, c
	jr	Z, 00150$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00150$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:752: if (f & BIT_1) VDP_CommandSetupR36(); g_VDP_Command.DX++;
	bit	1, c
	jr	Z, 00152$
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
00152$:
	ld	de, (#(_g_VDP_Command + 4) + 0)
	inc	de
	ld	((_g_VDP_Command + 4)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:753: if (f & BIT_0) VDP_CommandSetupR36();
	bit	0, c
	jr	Z, 00154$
	call	_VDP_CommandSetupR36
00154$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:754: g_VDP_Command.DY++;
	ld	bc, (#(_g_VDP_Command + 6) + 0)
	inc	bc
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:738: for (u8 j = 0; j < PRINT_H(PRINT_DATA.PatternY); ++j)
	inc	-1 (ix)
	jp	00163$
00165$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:756: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:771: void Print_SetVRAMFont(const u8* font, UY y, u8 color, bool trans)
;	---------------------------------
; Function Print_SetVRAMFont
; ---------------------------------
_Print_SetVRAMFont::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-10
	add	iy, sp
	ld	sp, iy
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:773: UX cx = PRINT_DATA.CursorX;
	ld	hl, #(_g_PrintData + 5)
	ld	a, (hl)
	ld	-10 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-9 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:774: UY cy = PRINT_DATA.CursorY;
	ld	hl, #(_g_PrintData + 7)
	ld	a, (hl)
	ld	-8 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:776: Print_SetFont(font);
	ex	de, hl
	call	_Print_SetFont
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:777: Print_Initialize();
	call	_Print_Initialize
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:778: Print_SetColor(color, 0x0);
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	a, 5 (ix)
	call	_Print_SetColor
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:781: Print_SetMode(PRINT_MODE_BITMAP_TRANS); // Activate default mode to write font data into VRAM
	ld	a, #0x01
	call	_Print_SetMode
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:782: PRINT_DATA.FontVRAMY = y;
	ld	hl, #(_g_PrintData + 33)
	ld	a, 4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:784: u8 nx = PRINT_DATA.ScreenWidth / PRINT_W(PRINT_DATA.UnitX);
	ld	hl, #(_g_PrintData + 27)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	-1 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	e, a
	ld	d, #0x00
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	-2 (ix), e
	ld	-1 (ix), d
	ld	a, -2 (ix)
	ld	-7 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:785: for (u16 chr = PRINT_DATA.CharFirst; chr <= PRINT_DATA.CharLast; ++chr)
	ld	a, (#(_g_PrintData + 21) + 0)
	ld	-1 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
00105$:
	ld	a, (#_g_PrintData + 22)
	ld	-3 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	C, 00101$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:787: u16 idx = chr - PRINT_DATA.CharFirst;
	ld	a, (#(_g_PrintData + 21) + 0)
	ld	b, #0x00
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	c, a
	cp	a, a
	sbc	hl, bc
	push	hl
	pop	iy
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:789: PRINT_DATA.CursorX = (idx % nx) * PRINT_W(PRINT_DATA.UnitX);		
	ld	a, -7 (ix)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	push	iy
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	push	iy
	pop	hl
	call	__moduint
	ld	c, e
	ld	b, d
	pop	iy
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	e, a
	ld	d, #0x00
	push	iy
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	c, e
	ld	b, d
	pop	iy
	ld	((_g_PrintData + 5)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:790: PRINT_DATA.CursorY = (idx / nx) * PRINT_H(PRINT_DATA.PatternY) + y;
	push	bc
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	push	iy
	pop	hl
	call	__divuint
	pop	bc
	ld	a, (#(_g_PrintData + 1) + 0)
	push	bc
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00127$:
	add	hl, hl
	jr	NC, 00128$
	add	hl, de
00128$:
	djnz	00127$
	pop	bc
	ld	a, l
	add	a, 4 (ix)
	ld	e, a
	ld	hl, #(_g_PrintData + 7)
	ld	(hl), e
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:791: VDP_CommandHMMV(PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY), 0);
	ld	a, (#(_g_PrintData + 1) + 0)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	d, #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	((_g_VDP_Command + 4)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	((_g_VDP_Command + 6)), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	hl, #(_g_VDP_Command + 8)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:171: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:172: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:173: g_VDP_Command.CMD = VDP_CMD_HMMV;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xc0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:174: VDP_CommandSetupR36();
	call	_VDP_CommandSetupR36
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:792: PRINT_DATA.DrawChar(chr);
	ld	hl, (#_g_PrintData + 24)
	ld	a, -2 (ix)
	call	___sdcc_call_hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:785: for (u16 chr = PRINT_DATA.CharFirst; chr <= PRINT_DATA.CharLast; ++chr)
	inc	-2 (ix)
	jp	NZ,00105$
	inc	-1 (ix)
	jp	00105$
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:795: PRINT_DATA.CursorX = cx;
	ld	hl, #(_g_PrintData + 5)
	ld	a, -10 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -9 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:796: PRINT_DATA.CursorY = cy;
	ld	hl, #(_g_PrintData + 7)
	ld	a, -8 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:798: PRINT_DATA.CharPerLine = PRINT_DATA.ScreenWidth / PRINT_W(PRINT_DATA.UnitX);
	ld	bc, (#(_g_PrintData + 27) + 0)
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	e, a
	ld	d, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	__divuint
	ld	hl, #(_g_PrintData + 34)
	ld	(hl), e
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:800: Print_SetMode(trans ? PRINT_MODE_BITMAP_VRAM_TRANS : PRINT_MODE_BITMAP_VRAM);
	ld	a, 6 (ix)
	or	a, a
	jr	Z, 00109$
	ld	bc, #0x0003
	jp	00110$
00109$:
	ld	bc, #0x0002
00110$:
	ld	a, c
	call	_Print_SetMode
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:801: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:807: void DrawChar_VRAM256(u8 chr)
;	---------------------------------
; Function DrawChar_VRAM256
; ---------------------------------
_DrawChar_VRAM256::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:810: chr = Print_ValidateChar(chr);
	call	_Print_ValidateChar
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:812: u8 idx = chr - PRINT_DATA.CharFirst;
	ld	hl, #_g_PrintData + 21
	ld	b, (hl)
	ld	a, c
	sub	a, b
	ld	e, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:813: u16 sx = (idx % PRINT_MOD256) * PRINT_W(PRINT_DATA.UnitX);		
	ld	hl, #_g_PrintData + 34
	ld	d, (hl)
	push	de
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	call	__moduchar
	ld	a, e
	pop	de
	ld	hl, #_g_PrintData + 2
	ld	c, (hl)
	push	de
	ld	e, c
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00115$:
	add	hl, hl
	jr	NC, 00116$
	add	hl, de
00116$:
	djnz	00115$
	pop	de
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:814: u16 sy = (idx / PRINT_MOD256) * PRINT_H(PRINT_DATA.PatternY) + PRINT_DATA.FontVRAMY;
	push	bc
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	call	__divuchar
	pop	bc
	ld	a, (#_g_PrintData + 1)
	ld	-1 (ix), a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00117$:
	add	hl, hl
	jr	NC, 00118$
	add	hl, de
00118$:
	djnz	00117$
	ex	de, hl
	ld	a, (#_g_PrintData + 33)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:816: if (PRINT_DATA.SourceMode == PRINT_MODE_BITMAP_VRAM)
	ld	a, (#_g_PrintData + 26)
	and	a, #0x0f
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:817: VDP_CommandHMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY));
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	-2 (ix), c
	ld	-1 (ix), #0x00
	ld	iy, #_g_PrintData
	ld	hl, #_g_PrintData + 7
	ld	c, (hl)
	push	af
	ld	l, 5 (iy)
;	spillPairReg hl
	ld	h, 6 (iy)
;	spillPairReg hl
	pop	af
	ld	b, #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:816: if (PRINT_DATA.SourceMode == PRINT_MODE_BITMAP_VRAM)
	sub	a, #0x02
	jr	NZ, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:817: VDP_CommandHMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY));
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	((_g_VDP_Command + 8)), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:113: VDP_CommandSetupR32();
	call	_VDP_CommandSetupR32
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:817: VDP_CommandHMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY));
	jp	00108$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:819: VDP_CommandLMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY), VDP_OP_TIMP);
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:240: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:241: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:242: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:243: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:244: g_VDP_Command.NX = nx;
	ld	((_g_VDP_Command + 8)), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:245: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:246: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:247: g_VDP_Command.CMD = VDP_CMD_LMMM + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x98
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:248: VDP_CommandSetupR32();
	call	_VDP_CommandSetupR32
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:819: VDP_CommandLMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY), VDP_OP_TIMP);
00108$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:820: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:827: void DrawChar_VRAM512(u8 chr)
;	---------------------------------
; Function DrawChar_VRAM512
; ---------------------------------
_DrawChar_VRAM512::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-8
	add	hl, sp
	ld	sp, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:830: chr = Print_ValidateChar(chr);
	call	_Print_ValidateChar
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:832: u8 idx = chr - PRINT_DATA.CharFirst;
	ld	hl, #_g_PrintData + 21
	ld	b, (hl)
	ld	a, c
	sub	a, b
	ld	e, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:833: u16 sx = (idx % PRINT_MOD512) * PRINT_W(PRINT_DATA.UnitX);		
	ld	hl, #_g_PrintData + 34
	ld	d, (hl)
	push	de
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	call	__moduchar
	ld	a, e
	pop	de
	ld	hl, #_g_PrintData + 2
	ld	c, (hl)
	push	de
	ld	e, c
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00115$:
	add	hl, hl
	jr	NC, 00116$
	add	hl, de
00116$:
	djnz	00115$
	pop	de
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:834: u16 sy = (idx / PRINT_MOD512) * PRINT_H(PRINT_DATA.PatternY) + PRINT_DATA.FontVRAMY;
	push	bc
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	a, e
	call	__divuchar
	pop	bc
	ld	a, (#_g_PrintData + 1)
	ld	-1 (ix), a
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00117$:
	add	hl, hl
	jr	NC, 00118$
	add	hl, de
00118$:
	djnz	00117$
	ex	de, hl
	ld	a, (#_g_PrintData + 33)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ld	-6 (ix), l
	ld	-5 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:836: if (PRINT_DATA.SourceMode == PRINT_MODE_BITMAP_VRAM)
	ld	a, (#_g_PrintData + 26)
	and	a, #0x0f
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:837: VDP_CommandHMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY));
	ld	e, -1 (ix)
	ld	d, #0x00
	ld	-2 (ix), c
	ld	-1 (ix), #0x00
	ld	iy, #_g_PrintData
	ld	hl, #_g_PrintData + 7
	ld	c, (hl)
	push	af
	ld	l, 5 (iy)
;	spillPairReg hl
	ld	h, 6 (iy)
;	spillPairReg hl
	pop	af
	ld	b, #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:836: if (PRINT_DATA.SourceMode == PRINT_MODE_BITMAP_VRAM)
	sub	a, #0x02
	jr	NZ, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:837: VDP_CommandHMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY));
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:105: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:106: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:107: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:108: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:109: g_VDP_Command.NX = nx;
	ld	((_g_VDP_Command + 8)), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:110: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:111: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:112: g_VDP_Command.CMD = VDP_CMD_HMMM;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xd0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:113: VDP_CommandSetupR32();
	call	_VDP_CommandSetupR32
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:837: VDP_CommandHMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY));
	jp	00108$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:839: VDP_CommandLMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY), VDP_OP_TIMP);
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	e, -2 (ix)
	ld	d, -1 (ix)
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:240: g_VDP_Command.SX = sx;
	ld	hl, #_g_VDP_Command
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:241: g_VDP_Command.SY = sy;
	ld	hl, #(_g_VDP_Command + 2)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:242: g_VDP_Command.DX = dx;
	ld	hl, #(_g_VDP_Command + 4)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:243: g_VDP_Command.DY = dy;
	ld	((_g_VDP_Command + 6)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:244: g_VDP_Command.NX = nx;
	ld	((_g_VDP_Command + 8)), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:245: g_VDP_Command.NY = ny;
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:246: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:247: g_VDP_Command.CMD = VDP_CMD_LMMM + op;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0x98
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:248: VDP_CommandSetupR32();
	call	_VDP_CommandSetupR32
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:839: VDP_CommandLMMM(sx, sy, PRINT_DATA.CursorX, PRINT_DATA.CursorY, PRINT_W(PRINT_DATA.UnitX), PRINT_H(PRINT_DATA.PatternY), VDP_OP_TIMP);
00108$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:840: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:856: void CopyNo8HeightFontData(const u8* src, u16 dst, u8 height)
;	---------------------------------
; Function CopyNo8HeightFontData
; ---------------------------------
_CopyNo8HeightFontData::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	dec	sp
	ex	(sp), hl
	ld	c, e
	ld	b, d
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:858: for (u8 i = 0; i < PRINT_DATA.CharCount; ++i)
	ld	-1 (ix), #0x00
00103$:
	ld	hl, #(_g_PrintData + 23)
	ld	e, (hl)
	ld	a, -1 (ix)
	sub	a, e
	jr	NC, 00105$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:860: VDP_FillVRAM(0, dst, 0, 8);
	push	bc
	ld	hl, #0x0008
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	e, c
	ld	d, b
	xor	a, a
	call	_VDP_FillVRAM_128K
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:861: VDP_WriteVRAM(src, dst, 0, height);
	ld	e, 4 (ix)
	ld	d, #0x00
	push	bc
	push	de
	xor	a, a
	push	af
	inc	sp
	ld	e, c
	ld	d, b
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:862: src += height;
	ld	a, -3 (ix)
	add	a, 4 (ix)
	ld	-3 (ix), a
	jr	NC, 00118$
	inc	-2 (ix)
00118$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:863: dst += 8;
	ld	hl, #0x0008
	add	hl, bc
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:858: for (u8 i = 0; i < PRINT_DATA.CharCount; ++i)
	inc	-1 (ix)
	jp	00103$
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:865: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:870: void Print_SetTextFont(const u8* fontData, u8 offset)
;	---------------------------------
; Function Print_SetTextFont
; ---------------------------------
_Print_SetTextFont::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-12
	add	iy, sp
	ld	sp, iy
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:872: PRINT_DATA.PatternOffset = offset;
	ld	hl, #(_g_PrintData + 37)
	ld	a, 4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:875: if (fontData == NULL) // Use Bios font (if any)
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jp	NZ, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:876: Print_SetFontEx(8, 8, 1, 1, 1, 255, (const u8*)g_CGTABL + 8); // @todo Should be [1, 255] to include all characters
	ld	hl, (_g_CGTABL)
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -4 (ix)
	add	a, #0x08
	ld	-8 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:242: PRINT_DATA.PatternX     = patternX;
	ld	hl, #_g_PrintData
	ld	(hl), #0x08
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:243: PRINT_DATA.PatternY     = patternY;
	ld	hl, #(_g_PrintData + 1)
	ld	(hl), #0x08
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:244: PRINT_DATA.UnitX        = sizeX;
	ld	hl, #(_g_PrintData + 2)
	ld	(hl), #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:245: PRINT_DATA.UnitY        = sizeY;
	ld	hl, #(_g_PrintData + 3)
	ld	(hl), #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:246: PRINT_DATA.CharFirst    = firstChr;
	ld	hl, #(_g_PrintData + 21)
	ld	(hl), #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:247: PRINT_DATA.CharLast     = lastChr;
	ld	hl, #(_g_PrintData + 22)
	ld	(hl), #0xff
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:248: PRINT_DATA.CharCount    = lastChr - firstChr + 1;
	ld	hl, #_g_PrintData + 23
	ex	(sp), hl
	pop	hl
	push	hl
	ld	(hl), #0xff
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:249: PRINT_DATA.FontPatterns = patterns;
	ld	hl, #_g_PrintData + 29
	ld	-10 (ix), l
	ld	-9 (ix), h
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:250: PRINT_DATA.FontAddr     = PRINT_DATA.FontPatterns - (firstChr * PRINT_DATA.PatternY); // pre-compute address of the virtual index 0 character (used to quick drawing in PutChar_GX functions)
	ld	a, (#(_g_PrintData + 1) + 0)
	ld	-3 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -8 (ix)
	sub	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	sbc	a, -5 (ix)
	ld	-3 (ix), a
	ld	hl, #(_g_PrintData + 31)
	ld	a, -4 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:876: Print_SetFontEx(8, 8, 1, 1, 1, 255, (const u8*)g_CGTABL + 8); // @todo Should be [1, 255] to include all characters
	jp	00103$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:878: Print_SetFontEx(8, 8, 1, 1, fontData[2], fontData[3], fontData+4);
	ld	a, -2 (ix)
	add	a, #0x04
	ld	-8 (ix), a
	ld	a, -1 (ix)
	adc	a, #0x00
	ld	-7 (ix), a
	ld	a, -2 (ix)
	ld	-4 (ix), a
	ld	a, -1 (ix)
	ld	-3 (ix), a
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	inc	hl
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
	ld	a, -2 (ix)
	ld	-5 (ix), a
	ld	a, -1 (ix)
	ld	-4 (ix), a
	ld	l, -5 (ix)
	ld	h, -4 (ix)
	inc	hl
	inc	hl
	ld	a, (hl)
	ld	-6 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:242: PRINT_DATA.PatternX     = patternX;
	ld	hl, #_g_PrintData
	ld	(hl), #0x08
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:243: PRINT_DATA.PatternY     = patternY;
	ld	hl, #(_g_PrintData + 1)
	ld	(hl), #0x08
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:244: PRINT_DATA.UnitX        = sizeX;
	ld	hl, #(_g_PrintData + 2)
	ld	(hl), #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:245: PRINT_DATA.UnitY        = sizeY;
	ld	hl, #(_g_PrintData + 3)
	ld	(hl), #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:246: PRINT_DATA.CharFirst    = firstChr;
	ld	hl, #(_g_PrintData + 21)
	ld	a, -6 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:247: PRINT_DATA.CharLast     = lastChr;
	ld	hl, #(_g_PrintData + 22)
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:248: PRINT_DATA.CharCount    = lastChr - firstChr + 1;
	ld	hl, #_g_PrintData + 23
	ex	(sp), hl
	ld	a, -3 (ix)
	sub	a, -6 (ix)
	ld	-3 (ix), a
	inc	-3 (ix)
	pop	hl
	push	hl
	ld	a, -3 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:249: PRINT_DATA.FontPatterns = patterns;
	ld	hl, #_g_PrintData + 29
	ld	-10 (ix), l
	ld	-9 (ix), h
	pop	bc
	pop	hl
	push	hl
	push	bc
	ld	a, -8 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -7 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:250: PRINT_DATA.FontAddr     = PRINT_DATA.FontPatterns - (firstChr * PRINT_DATA.PatternY); // pre-compute address of the virtual index 0 character (used to quick drawing in PutChar_GX functions)
	ld	a, (#(_g_PrintData + 1) + 0)
	ld	-3 (ix), a
	ld	e, a
	ld	h, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00146$:
	add	hl, hl
	jr	NC, 00147$
	add	hl, de
00147$:
	djnz	00146$
	ld	-4 (ix), l
	ld	-3 (ix), h
	ld	a, -8 (ix)
	sub	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	sbc	a, -3 (ix)
	ld	-5 (ix), a
	ld	hl, #(_g_PrintData + 31)
	ld	a, -6 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:878: Print_SetFontEx(8, 8, 1, 1, fontData[2], fontData[3], fontData+4);
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:879: Print_Initialize();
	call	_Print_Initialize
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:880: Print_SetMode(PRINT_MODE_TEXT);
	ld	a, #0x05
	call	_Print_SetMode
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:883: const u8* src = PRINT_DATA.FontPatterns;
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-4 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-3 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:884: u16 dst = (u16)g_ScreenPatternLow + (offset * 8);
	ld	a, 4 (ix)
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	b, #0x03
00148$:
	sla	-6 (ix)
	rl	-5 (ix)
	djnz	00148$
	ld	hl, (_g_ScreenPatternLow)
	ld	-10 (ix), l
	ld	-9 (ix), h
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	add	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, -7 (ix)
	ld	-5 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:886: if (fontData != NULL)
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jr	Z, 00105$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:887: CopyNo8HeightFontData(src, dst, fontData[0] & 0x0F);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	and	a, #0x0f
	push	af
	inc	sp
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_CopyNo8HeightFontData
	jp	00106$
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:890: VDP_WriteVRAM(src, dst, 0, PRINT_DATA.CharCount * 8);
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-7 (ix), a
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	b, #0x03
00149$:
	sla	-8 (ix)
	rl	-7 (ix)
	djnz	00149$
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
00106$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
	ld	a, (#_g_VDP_Data + 0)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:892: switch (VDP_GetMode())
	ld	-7 (ix), a
	sub	a, #0x03
	jr	Z, 00108$
	ld	a, -7 (ix)
	sub	a, #0x05
	jp	NZ,00119$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:898: case VDP_MODE_GRAPHIC3:		// GRAPHIC 2 which can use sprite mode 2
00108$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:901: dst += 256 * 8;
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	add	a, #0x08
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:903: if (fontData != NULL)
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jr	Z, 00110$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:904: CopyNo8HeightFontData(src, dst, fontData[0] & 0x0F);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	and	a, #0x0f
	push	af
	inc	sp
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_CopyNo8HeightFontData
	jp	00111$
00110$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:907: VDP_WriteVRAM(src, dst, 0, PRINT_DATA.CharCount * 8);
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-5 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	b, #0x03
00153$:
	sla	-6 (ix)
	rl	-5 (ix)
	djnz	00153$
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	e, -8 (ix)
	ld	d, -7 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
00111$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:908: dst += 256 * 8;
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	add	a, #0x08
	ld	-7 (ix), a
	ld	a, -8 (ix)
	ld	-6 (ix), a
	ld	a, -7 (ix)
	ld	-5 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:910: if (fontData != NULL)
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jr	Z, 00113$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:911: CopyNo8HeightFontData(src, dst, fontData[0] & 0x0F);
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	and	a, #0x0f
	push	af
	inc	sp
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_CopyNo8HeightFontData
	jp	00119$
00113$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:914: VDP_WriteVRAM(src, dst, 0, PRINT_DATA.CharCount * 8);
	pop	hl
	push	hl
	ld	a, (hl)
	ld	-8 (ix), a
	ld	-7 (ix), #0x00
	ld	b, #0x03
00154$:
	sla	-8 (ix)
	rl	-7 (ix)
	djnz	00154$
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	xor	a, a
	push	af
	inc	sp
	ld	e, -6 (ix)
	ld	d, -5 (ix)
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:917: };
00119$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:918: }
	ld	sp, ix
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:923: void DrawChar_Layout(u8 chr)
;	---------------------------------
; Function DrawChar_Layout
; ---------------------------------
_DrawChar_Layout::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:926: chr = Print_ValidateChar(chr);
	call	_Print_ValidateChar
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:928: u8 shape = chr - PRINT_DATA.CharFirst + PRINT_DATA.PatternOffset;
	ld	hl, #_g_PrintData + 21
	ld	b, (hl)
	ld	a, c
	sub	a, b
	ld	hl, #_g_PrintData + 37
	ld	c, (hl)
	add	a, c
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:929: u16 dst = (u16)g_ScreenLayoutLow + (PRINT_DATA.CursorY * PRINT_DATA.ScreenWidth) + PRINT_DATA.CursorX;
	ld	hl, #_g_PrintData + 7
	ld	c, (hl)
	ld	de, (#_g_PrintData + 27)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	iy, (_g_ScreenLayoutLow)
	add	iy, de
	ld	hl, (#_g_PrintData + 5)
	push	iy
	pop	de
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:930: VDP_Poke(shape, dst, g_ScreenLayoutHigh);
	ld	a, (_g_ScreenLayoutHigh+0)
	push	af
	inc	sp
	ld	a, -1 (ix)
	call	_VDP_Poke_128K
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:931: }
	inc	sp
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:950: void Print_SetSpriteFont(const u8* font, u8 patIdx, u8 sprtIdx)
;	---------------------------------
; Function Print_SetSpriteFont
; ---------------------------------
_Print_SetSpriteFont::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-12
	add	iy, sp
	ld	sp, iy
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:952: PRINT_DATA.SpritePattern = patIdx;
	ld	hl, #(_g_PrintData + 35)
	ld	a, 4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:953: PRINT_DATA.SpriteID = sprtIdx;
	ld	hl, #(_g_PrintData + 36)
	ld	a, 5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:955: Print_SetFont(font);
	ex	de, hl
	call	_Print_SetFont
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:956: Print_Initialize();
	call	_Print_Initialize
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:957: Print_SetMode(PRINT_MODE_SPRITE);
	ld	a, #0x04
	call	_Print_SetMode
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:962: u16 ram = (u16)PRINT_DATA.FontPatterns;
	ld	hl, (#_g_PrintData + 29)
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:963: u16 vram = g_SpritePatternLow;
	ld	hl, (_g_SpritePatternLow)
	ld	-10 (ix), l
	ld	-9 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:964: for (u16 chr = PRINT_DATA.CharFirst; chr <= PRINT_DATA.CharLast; ++chr)
	ld	a, (#_g_PrintData + 21)
	ld	-1 (ix), a
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
00106$:
	ld	a, (#_g_PrintData + 22)
	ld	-3 (ix), a
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -4 (ix)
	sub	a, -2 (ix)
	ld	a, -3 (ix)
	sbc	a, -1 (ix)
	jp	C, 00108$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:967: if (PRINT_H(PRINT_DATA.PatternY) < 8)
	ld	a, (#(_g_PrintData + 1) + 0)
	ld	-7 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:969: VDP_WriteVRAM((u8*)ram, vram, g_SpritePatternHigh, PRINT_H(PRINT_DATA.PatternY));
	ld	a, -12 (ix)
	ld	-6 (ix), a
	ld	a, -11 (ix)
	ld	-5 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:970: vram += PRINT_H(PRINT_DATA.PatternY);
	ld	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:967: if (PRINT_H(PRINT_DATA.PatternY) < 8)
	ld	a, -7 (ix)
	sub	a, #0x08
	jr	NC, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:969: VDP_WriteVRAM((u8*)ram, vram, g_SpritePatternHigh, PRINT_H(PRINT_DATA.PatternY));
	ld	c, -7 (ix)
	ld	b, #0x00
	push	bc
	ld	a, (_g_SpritePatternHigh+0)
	push	af
	inc	sp
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:970: vram += PRINT_H(PRINT_DATA.PatternY);
	ld	a, (#(_g_PrintData + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	e, c
	ld	d, b
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:971: VDP_FillVRAM(0, vram, g_SpritePatternHigh, 8 - PRINT_H(PRINT_DATA.PatternY));
	ld	hl, #0x0008
	cp	a, a
	sbc	hl, bc
	push	de
	push	hl
	ld	a, (_g_SpritePatternHigh+0)
	push	af
	inc	sp
	xor	a, a
	call	_VDP_FillVRAM_128K
	pop	de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:972: vram += 8 - PRINT_H(PRINT_DATA.PatternY);
	ld	a, (#(_g_PrintData + 1) + 0)
	ld	c, a
	ld	b, #0x00
	ld	hl, #0x0008
	cp	a, a
	sbc	hl, bc
	add	hl, de
	ld	-10 (ix), l
	ld	-9 (ix), h
	jp	00103$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:976: VDP_WriteVRAM((u8*)ram, vram, g_SpritePatternHigh, 8);
	ld	hl, #0x0008
	push	hl
	ld	a, (_g_SpritePatternHigh+0)
	push	af
	inc	sp
	ld	e, -10 (ix)
	ld	d, -9 (ix)
	ld	l, -6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:977: vram += 8;
	ld	a, -4 (ix)
	add	a, #0x08
	ld	-6 (ix), a
	ld	a, -3 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	ld	-9 (ix), a
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:979: ram += PRINT_H(PRINT_DATA.PatternY);
	ld	a, (#(_g_PrintData + 1) + 0)
	ld	-4 (ix), a
	ld	-3 (ix), #0x00
	ld	a, -12 (ix)
	ld	-8 (ix), a
	ld	a, -11 (ix)
	ld	-7 (ix), a
	ld	a, -4 (ix)
	ld	-6 (ix), a
	ld	a, -3 (ix)
	ld	-5 (ix), a
	ld	a, -8 (ix)
	add	a, -6 (ix)
	ld	-4 (ix), a
	ld	a, -7 (ix)
	adc	a, -5 (ix)
	ld	-3 (ix), a
	ld	a, -4 (ix)
	ld	-12 (ix), a
	ld	a, -3 (ix)
	ld	-11 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:964: for (u16 chr = PRINT_DATA.CharFirst; chr <= PRINT_DATA.CharLast; ++chr)
	inc	-2 (ix)
	jp	NZ,00106$
	inc	-1 (ix)
	jp	00106$
00108$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:982: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:988: void DrawChar_Sprite(u8 chr)
;	---------------------------------
; Function DrawChar_Sprite
; ---------------------------------
_DrawChar_Sprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:990: u16 shape = chr - PRINT_DATA.CharFirst + PRINT_DATA.SpritePattern;
	ld	hl, #_g_PrintData + 21
	ld	b, (hl)
	ld	a, c
	sub	a, b
	ld	hl, #_g_PrintData + 35
	ld	c, (hl)
	add	a, c
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:994: VDP_SetSpriteExMultiColor(PRINT_DATA.SpriteID++, PRINT_DATA.CursorX, PRINT_DATA.CursorY, shape, PRINT_DATA.TextColor);
	ld	hl, #_g_PrintData + 7
	ld	e, (hl)
	ld	hl, #_g_PrintData + 5
	ld	c, (hl)
	ld	hl, #_g_PrintData + 36
	ld	b, (hl)
	ld	a, b
	inc	a
	ld	(hl), a
	ld	hl, #(_g_PrintData + 8)
	push	hl
	ld	d, -1 (ix)
	push	de
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, b
	call	_VDP_SetSpriteExMultiColor
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:996: }
	inc	sp
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1014: void Print_SetShadow(bool enable, i8 offsetX, i8 offsetY, u8 color)
;	---------------------------------
; Function Print_SetShadow
; ---------------------------------
_Print_SetShadow::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	c, a
	ld	e, l
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1016: Print_EnableShadow(enable);
	push	de
	ld	a, c
	call	_Print_EnableShadow
	pop	de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1017: PRINT_DATA.ShadowOffsetX = 3 + offsetX;
	ld	bc, #_g_PrintData + 39
	ld	a, e
	add	a, #0x03
	and	a, #0x07
	ld	e, a
	ld	a, (bc)
	and	a, #0xf8
	or	a, e
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1018: PRINT_DATA.ShadowOffsetY = 3 + offsetY;
	ld	a, 4 (ix)
	add	a, #0x03
	rlca
	rlca
	rlca
	and	a, #0x38
	ld	e, a
	ld	a, (bc)
	and	a, #0xc7
	or	a, e
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1019: PRINT_DATA.ShadowColor   = color;
	ld	hl, #(_g_PrintData + 40)
	ld	a, 5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1020: }
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1025: void Print_EnableShadow(bool enable)
;	---------------------------------
; Function Print_EnableShadow
; ---------------------------------
_Print_EnableShadow::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1027: PRINT_DATA.FX = enable ? PRINT_FX_SHADOW : 0;
	ld	hl, #_g_PrintData+38
	ld	a, c
	or	a, a
	jr	Z, 00103$
	ld	de, #0x0001
	jp	00104$
00103$:
	ld	de, #0x0000
00104$:
	ld	(hl), e
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1028: Print_SetMode(enable ? PRINT_MODE_BITMAP_TRANS : PRINT_MODE_BITMAP); // enable default mode to write font data into VRAM
	ld	a, c
	or	a, a
	jr	Z, 00105$
	ld	bc, #0x0001
	jp	00106$
00105$:
	ld	bc, #0x0000
00106$:
	ld	a, c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1029: }
	jp	_Print_SetMode
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1054: void Print_SetOutline(bool enable, u8 color)
;	---------------------------------
; Function Print_SetOutline
; ---------------------------------
_Print_SetOutline::
	ld	b, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1056: Print_EnableOutline(enable);
	push	bc
	ld	a, b
	call	_Print_EnableOutline
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1057: PRINT_DATA.OutlineColor = color;
	ld	hl, #(_g_PrintData + 41)
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1058: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1062: void Print_EnableOutline(bool enable)
;	---------------------------------
; Function Print_EnableOutline
; ---------------------------------
_Print_EnableOutline::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1064: PRINT_DATA.FX = enable ? PRINT_FX_OUTLINE : 0;
	ld	hl, #_g_PrintData+38
	ld	a, c
	or	a, a
	jr	Z, 00103$
	ld	de, #0x0002
	jp	00104$
00103$:
	ld	de, #0x0000
00104$:
	ld	(hl), e
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1065: Print_SetMode(enable ? PRINT_MODE_BITMAP_TRANS : PRINT_MODE_BITMAP); // enable default mode to write font data into VRAM
	ld	a, c
	or	a, a
	jr	Z, 00105$
	ld	bc, #0x0001
	jp	00106$
00105$:
	ld	bc, #0x0000
00106$:
	ld	a, c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1066: }
	jp	_Print_SetMode
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1096: void Print_Clear()
;	---------------------------------
; Function Print_Clear
; ---------------------------------
_Print_Clear::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:499: return mode >= VDP_MODE_GRAPHIC4;
	ld	a, (#_g_VDP_Data+0)
	sub	a, #0x06
	ld	a, #0x00
	rla
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1098: if (VDP_IsBitmapMode(VDP_GetMode())) // Bitmap mode
	xor	a,#0x01
	jr	Z, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1101: u8 color = Print_MergeColor(PRINT_DATA.BGColor);
	ld	a, (#_g_PrintData + 20)
	call	_Print_MergeColor
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1102: VDP_CommandHMMV(0, 0, PRINT_DATA.ScreenWidth, 212, color); // @todo Check the 192/212 lines parameter
	ld	de, (#_g_PrintData + 27)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	hl, #0x0000
	ld	((_g_VDP_Command + 4)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	((_g_VDP_Command + 6)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	((_g_VDP_Command + 8)), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	l, #0xd4
	ld	((_g_VDP_Command + 10)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:171: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:172: g_VDP_Command.ARG = arg; 
	ld	hl, #(_g_VDP_Command + 13)
	ld	(hl), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:173: g_VDP_Command.CMD = VDP_CMD_HMMV;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xc0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:174: VDP_CommandSetupR36();
	call	_VDP_CommandSetupR36
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1103: VDP_CommandWait();
	jp	_VDP_CommandWait
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1109: VDP_FillVRAM(0, g_ScreenLayoutLow, g_ScreenLayoutHigh, 24 * PRINT_DATA.ScreenWidth);
	ld	hl, (#(_g_PrintData + 27) + 0)
	ld	c, l
	ld	b, h
	add	hl, hl
	add	hl, bc
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, (_g_ScreenLayoutHigh+0)
	push	af
	inc	sp
	ld	de, (_g_ScreenLayoutLow)
	xor	a, a
	call	_VDP_FillVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1112: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1117: void Print_Backspace(u8 num)
;	---------------------------------
; Function Print_Backspace
; ---------------------------------
_Print_Backspace::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-6
	add	hl, sp
	ld	sp, hl
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:483: inline u8 VDP_GetMode() { return g_VDP_Data.Mode; }
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:499: return mode >= VDP_MODE_GRAPHIC4;
	ld	a, (#_g_VDP_Data+0)
	sub	a, #0x06
	ld	a, #0x00
	rla
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1120: if (VDP_IsBitmapMode(VDP_GetMode())) // Bitmap mode
	xor	a,#0x01
	jp	Z, 00105$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1123: u16 x = PRINT_W(PRINT_DATA.UnitX) * num;
	ld	a, (#_g_PrintData + 2)
	ld	e, -1 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	l, #0x00
	ld	d, l
	ld	b, #0x08
00123$:
	add	hl, hl
	jr	NC, 00124$
	add	hl, de
00124$:
	djnz	00123$
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1124: if (x >  PRINT_DATA.CursorX)
	ld	hl, (#(_g_PrintData + 5) + 0)
	ld	a, l
	sub	a, c
	ld	a, h
	sbc	a, b
	jr	NC, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1125: x = 0;
	ld	bc, #0x0000
	jp	00103$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1127: x = PRINT_DATA.CursorX - x;
	ld	a, l
	sub	a, c
	ld	c, a
	ld	a, h
	sbc	a, b
	ld	b, a
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1129: u8 color = Print_MergeColor(PRINT_DATA.BGColor);
	ld	hl, #_g_PrintData + 20
	ld	e, (hl)
	push	bc
	ld	a, e
	call	_Print_MergeColor
	pop	bc
	ld	-6 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1130: VDP_CommandHMMV(x, PRINT_DATA.CursorY, x - PRINT_DATA.CursorX, PRINT_H(PRINT_DATA.UnitY), color); // @todo Check the 192/212 lines parameter
	ld	a, (#_g_PrintData + 3)
	ld	-5 (ix), a
	ld	-4 (ix), #0x00
	ld	hl, (#(_g_PrintData + 5) + 0)
	ld	a, c
	sub	a, l
	ld	e, a
	ld	a, b
	sbc	a, h
	ld	d, a
	ld	a, (#_g_PrintData + 7)
	ld	-3 (ix), a
	ld	-2 (ix), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:167: g_VDP_Command.DX = dx; 
	ld	((_g_VDP_Command + 4)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:168: g_VDP_Command.DY = dy; 
	ld	hl, #(_g_VDP_Command + 6)
	ld	a, -3 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -2 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:169: g_VDP_Command.NX = nx; 
	ld	((_g_VDP_Command + 8)), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:170: g_VDP_Command.NY = ny; 
	ld	hl, #(_g_VDP_Command + 10)
	ld	a, -5 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:171: g_VDP_Command.CLR = col; 
	ld	hl, #(_g_VDP_Command + 12)
	ld	a, -6 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:172: g_VDP_Command.ARG = arg; 
	ld	de, #_g_VDP_Command + 13
	xor	a, a
	ld	(de), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:173: g_VDP_Command.CMD = VDP_CMD_HMMV;
	ld	hl, #(_g_VDP_Command + 14)
	ld	(hl), #0xc0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp_inl.h:174: VDP_CommandSetupR36();
	push	bc
	call	_VDP_CommandSetupR36
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1131: PRINT_DATA.CursorX = x;
	ld	((_g_PrintData + 5)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1132: VDP_CommandWait();	
	call	_VDP_CommandWait
	jp	00111$
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1138: u16 dst = g_ScreenLayoutLow + (PRINT_DATA.CursorY * PRINT_DATA.ScreenWidth) + PRINT_DATA.CursorX - num;
	ld	hl, #_g_PrintData + 7
	ld	l, (hl)
	ld	de, (#_g_PrintData + 27)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	call	__mulint
	ld	iy, (_g_ScreenLayoutLow)
	add	iy, de
	ld	hl, (#(_g_PrintData + 5) + 0)
	push	iy
	pop	de
	add	hl, de
	ld	c, -1 (ix)
	ld	b, #0x00
	cp	a, a
	sbc	hl, bc
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1139: VDP_FillVRAM(0, dst, g_ScreenLayoutHigh, num);
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	bc
	push	hl
	ld	a, (_g_ScreenLayoutHigh+0)
	push	af
	inc	sp
	xor	a, a
	call	_VDP_FillVRAM_128K
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1140: PRINT_DATA.CursorX -= num;
	ld	hl, (#(_g_PrintData + 5) + 0)
	cp	a, a
	sbc	hl, bc
	ex	de, hl
	ld	((_g_PrintData + 5)), de
00111$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1143: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1148: void Print_DrawChar(u8 chr)
;	---------------------------------
; Function Print_DrawChar
; ---------------------------------
_Print_DrawChar::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1151: if (PRINT_DATA.CursorX + PRINT_W(PRINT_DATA.UnitX) > PRINT_DATA.ScreenWidth) // Handle automatic new-line when 
	ld	de, (#(_g_PrintData + 5) + 0)
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	ld	hl, (#_g_PrintData + 27)
	xor	a, a
	sbc	hl, de
	jr	NC, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:500: PRINT_DATA.CursorX = 0;
	ld	hl, #0x0000
	ld	((_g_PrintData + 5)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:501: PRINT_DATA.CursorY += PRINT_H(PRINT_DATA.UnitY);
	ld	de, #_g_PrintData + 7
	ld	a, (de)
	ld	hl, #_g_PrintData + 3
	ld	b, (hl)
	add	a, b
	ld	(de), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1152: Print_Return();
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1154: VDP_CommandWait();
	call	_VDP_CommandWait
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1157: PRINT_DATA.DrawChar(chr);
	ld	hl, (#_g_PrintData + 24)
	ld	a, c
	call	___sdcc_call_hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1160: PRINT_DATA.CursorX += PRINT_W(PRINT_DATA.UnitX);
	ld	bc, (#(_g_PrintData + 5) + 0)
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1161: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1167: void Print_DrawCharX(c8 chr, u8 num)
;	---------------------------------
; Function Print_DrawCharX
; ---------------------------------
_Print_DrawCharX::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1169: for (u8 i = 0; i < num; ++i)
	ld	b, #0x00
00103$:
	ld	a, b
	sub	a, l
	ret	NC
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1170: Print_DrawChar(chr);
	push	hl
	push	bc
	ld	a, c
	call	_Print_DrawChar
	pop	bc
	pop	hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1169: for (u8 i = 0; i < num; ++i)
	inc	b
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1171: }
	jp	00103$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1176: void Print_DrawText(const c8* str)
;	---------------------------------
; Function Print_DrawText
; ---------------------------------
_Print_DrawText::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1178: while (*str != 0)
00110$:
	ld	a, (bc)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1180: if (*str == '\t')
	ld	e,a
	or	a,a
	jr	Z, 00116$
	sub	a, #0x09
	jr	NZ, 00108$
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:492: PRINT_DATA.CursorX += PRINT_W(PRINT_DATA.UnitX) + PRINT_DATA.TabSize - 1;
	ld	de, (#(_g_PrintData + 5) + 0)
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	-2 (ix), a
	ld	-1 (ix), #0x00
	ld	a, (#(_g_PrintData + 4) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, -2 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, -1 (ix)
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	dec	hl
	add	hl, de
	ex	de, hl
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:493: PRINT_DATA.CursorX &= ~(PRINT_DATA.TabSize - 1);
	ld	a, (#(_g_PrintData + 4) + 0)
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	l, a
	dec	hl
	ld	a, l
	cpl
	push	af
	ld	a, h
	cpl
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	pop	af
	and	a, e
	ld	e, a
	ld	a, l
	and	a, d
	ld	d, a
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1181: Print_Tab();
	jp	00109$
00108$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1182: else if (*str == '\n')
	ld	a, e
	sub	a, #0x0a
	jr	NZ, 00105$
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:500: PRINT_DATA.CursorX = 0;
	ld	hl, #0x0000
	ld	((_g_PrintData + 5)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:501: PRINT_DATA.CursorY += PRINT_H(PRINT_DATA.UnitY);
	ld	de, #_g_PrintData + 7
	ld	a, (de)
	ld	hl, #_g_PrintData + 3
	ld	l, (hl)
;	spillPairReg hl
	add	a, l
	ld	(de), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1183: Print_Return();
	jp	00109$
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1185: else if (*str == ' ')
	ld	a, e
	sub	a, #0x20
	jr	NZ, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:486: inline void Print_Space() { PRINT_DATA.CursorX += PRINT_W(PRINT_DATA.UnitX); }
	ld	de, (#(_g_PrintData + 5) + 0)
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	ex	de, hl
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1186: Print_Space();
	jp	00109$
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1189: Print_DrawChar(*str);
	push	bc
	ld	a, e
	call	_Print_DrawChar
	pop	bc
00109$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1190: str++;
	inc	bc
	jp	00110$
00116$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1192: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1197: void Print_DrawBin8(u8 value)
;	---------------------------------
; Function Print_DrawBin8
; ---------------------------------
_Print_DrawBin8::
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1199: u8 flag = (u8)(1 << 7);
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1200: for (u8 i = 0; i < 8; ++i)
	ld	bc, #0x80
00103$:
	ld	a, b
	sub	a, #0x08
	ret	NC
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1202: Print_DrawChar((value & flag) ? '1' : '0');
	ld	a, l
	and	a,c
	jr	Z, 00107$
	ld	de, #0x0031
	jp	00108$
00107$:
	ld	de, #0x0030
00108$:
	push	hl
	push	bc
	ld	a, e
	call	_Print_DrawChar
	pop	bc
	pop	hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1203: flag >>= 1;
	srl	c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1200: for (u8 i = 0; i < 8; ++i)
	inc	b
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1208: }
	jp	00103$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1213: void Print_DrawHex8(u8 value)
;	---------------------------------
; Function Print_DrawHex8
; ---------------------------------
_Print_DrawHex8::
	ld	e, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1215: Print_DrawChar(g_HexChar[(value >> 4) & 0x000F]);
	ld	bc, #_g_HexChar+0
	ld	a, e
	rlca
	rlca
	rlca
	rlca
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0xf
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	d, (hl)
	push	bc
	push	de
	ld	a, d
	call	_Print_DrawChar
	pop	de
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1216: Print_DrawChar(g_HexChar[value & 0x000F]);
	ld	d, #0x00
	ld	a, e
	and	a, #0x0f
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ld	c, (hl)
	ld	a, c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1220: }
	jp	_Print_DrawChar
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1225: void Print_DrawHex16(u16 value)
;	---------------------------------
; Function Print_DrawHex16
; ---------------------------------
_Print_DrawHex16::
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1227: Print_DrawHex8(value >> 8);
	ld	c, h
	push	hl
	ld	a, c
	call	_Print_DrawHex8
	pop	hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1228: Print_DrawHex8((u8)value);
	ld	a, l
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1229: }
	jp	_Print_DrawHex8
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1235: void Print_DrawHex32(u32 value)
;	---------------------------------
; Function Print_DrawHex32
; ---------------------------------
_Print_DrawHex32::
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1237: Print_DrawHex16(value >> 16);
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	push	de
	call	_Print_DrawHex16
	pop	de
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1238: Print_DrawHex16((u16)value);
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1239: }
	jp	_Print_DrawHex16
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1246: void Print_DrawInt(i32 value)
;	---------------------------------
; Function Print_DrawInt
; ---------------------------------
_Print_DrawInt::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	iy, #-12
	add	iy, sp
	ld	sp, iy
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1253: if (value < 0)
	bit	7, -1 (ix)
	jr	Z, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1255: Print_DrawChar('-');
	ld	a, #0x2d
	call	_Print_DrawChar
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1256: value = -value;
	xor	a, a
	sub	a, -4 (ix)
	ld	-4 (ix), a
	ld	a, #0x00
	sbc	a, -3 (ix)
	ld	-3 (ix), a
	ld	a, #0x00
	sbc	a, -2 (ix)
	ld	-2 (ix), a
	sbc	a, a
	sub	a, -1 (ix)
	ld	-1 (ix), a
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1260: c8* ptr = str;
	ld	hl, #0
	add	hl, sp
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1261: *ptr = 0;
	xor	a, a
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1262: while (value >= 10)
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1264: *++ptr = '0' + (value % 10);
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1262: while (value >= 10)
	ld	a, -4 (ix)
	sub	a, #0x0a
	ld	a, -3 (ix)
	sbc	a, #0x00
	ld	a, -2 (ix)
	sbc	a, #0x00
	ld	a, -1 (ix)
	rla
	ccf
	rra
	sbc	a, #0x80
	jr	C, 00105$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1264: *++ptr = '0' + (value % 10);
	ld	c, l
	ld	b, h
	push	hl
	push	bc
	ld	de, #0x0000
	push	de
	ld	e, #0x0a
	push	de
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__modslong
	pop	af
	ex	(sp),hl
	pop	iy
	pop	bc
	pop	hl
	ld	a, e
	add	a, #0x30
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1265: value /= 10;
	push	bc
	ld	hl, #0x0000
	push	hl
	ld	l, #0x0a
	push	hl
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	__divslong
	pop	af
	pop	af
	pop	bc
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	-2 (ix), l
	ld	-1 (ix), h
	jp	00103$
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1267: *++ptr = '0' + value;
	ld	a, -4 (ix)
	add	a, #0x30
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1268: while (*ptr != 0)
00106$:
	ld	a, (hl)
	or	a, a
	jr	Z, 00109$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1269: Print_DrawChar(*ptr--);	
	dec	hl
	ld	c, a
	push	hl
	ld	a, c
	call	_Print_DrawChar
	pop	hl
	jp	00106$
00109$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1270: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1279: void Print_DrawFormat(const c8* format, ...)
;	---------------------------------
; Function Print_DrawFormat
; ---------------------------------
_Print_DrawFormat::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	hl, #-20
	add	hl, sp
	ld	sp, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1284: va_start(args, format);
	ld	hl, #26
	add	hl, sp
	ld	-8 (ix), l
	ld	-7 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1286: const c8* ptr = format;
	ld	a, 4 (ix)
	ld	-4 (ix), a
	ld	a, 5 (ix)
	ld	-3 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1287: while (*ptr != 0)
00194$:
	ld	l, -4 (ix)
	ld	h, -3 (ix)
	ld	a, (hl)
	ld	-1 (ix), a
	or	a, a
	jp	Z, 00200$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1289: if (*ptr == '%')
	ld	a, -1 (ix)
	sub	a, #0x25
	jp	NZ,00192$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1291: ptr++;
	ld	c, -4 (ix)
	ld	b, -3 (ix)
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1294: u8 len = 0;
	ld	-1 (ix), #0x00
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1295: if ((*ptr >= '0') && (*ptr <= '9'))
	ld	a, (bc)
	ld	e, a
	sub	a, #0x30
	jr	C, 00208$
	ld	a, #0x39
	sub	a, e
	jr	C, 00208$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1297: len = *ptr - '0';
	ld	a, e
	add	a, #0xd0
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1298: ptr++;
	inc	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1300: while ((*ptr >= '0') && (*ptr <= '9'))
00208$:
	ld	-10 (ix), c
	ld	-9 (ix), b
00105$:
	ld	l, -10 (ix)
	ld	h, -9 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	sub	a, #0x30
	jr	C, 00244$
	ld	a, #0x39
	sub	a, -2 (ix)
	jr	C, 00244$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1302: len *= 10;
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	c, l
	add	hl, hl
	add	hl, hl
	add	hl, bc
	add	hl, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1303: len += *ptr - '0';
	ld	a, -2 (ix)
	add	a, #0xd0
	add	a, l
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1304: ptr++;
	inc	-10 (ix)
	jr	NZ, 00105$
	inc	-9 (ix)
	jp	00105$
00244$:
	ld	a, -10 (ix)
	ld	-4 (ix), a
	ld	a, -9 (ix)
	ld	-3 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1308: if ((*ptr == 'i') || (*ptr == 'd'))
	ld	a, -2 (ix)
	sub	a, #0x69
	jr	Z, 00178$
	ld	a, -2 (ix)
	sub	a, #0x64
	jr	NZ, 00179$
00178$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1310: i16 val = (i16)va_arg(args, i16);
	ld	a, -8 (ix)
	add	a, #0x02
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, #0xfe
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1311: Print_DrawInt(val);
	ld	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -1 (ix)
	ld	-11 (ix), a
	rlca
	sbc	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Print_DrawInt
	jp	00193$
00179$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1313: else if (*ptr == 'u')
	ld	a, -2 (ix)
	sub	a, #0x75
	jr	NZ, 00176$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1315: u16 val = (u16)va_arg(args, u16);
	ld	a, -8 (ix)
	add	a, #0x02
	ld	-6 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-5 (ix), a
	ld	a, -6 (ix)
	ld	-8 (ix), a
	ld	a, -5 (ix)
	ld	-7 (ix), a
	ld	a, -6 (ix)
	add	a, #0xfe
	ld	-2 (ix), a
	ld	a, -5 (ix)
	adc	a, #0xff
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	ld	-2 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1316: Print_DrawInt(val);
	ld	a, -2 (ix)
	ld	-12 (ix), a
	ld	a, -1 (ix)
	ld	-11 (ix), a
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	e, -12 (ix)
	ld	d, -11 (ix)
	ld	l, -10 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -9 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Print_DrawInt
	jp	00193$
00176$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1318: else if (*ptr == 'x')
	ld	a, -2 (ix)
	sub	a, #0x78
	jp	NZ,00173$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1320: if (len == 0)
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00109$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1321: len = 4;
	ld	-1 (ix), #0x04
00109$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1322: u16 val = (u16)va_arg(args, u16);
	ld	a, -8 (ix)
	add	a, #0x02
	ld	-10 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	add	a, #0xfe
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, #0xff
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-12 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-11 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1323: if (len > 3)
	ld	a, #0x03
	sub	a, -1 (ix)
	jr	NC, 00111$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1324: Print_DrawChar(g_HexChar[(val >> 12) & 0x000F]);
	ld	a, -11 (ix)
	rlca
	rlca
	rlca
	rlca
	and	a, #0x0f
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -6 (ix)
	and	a, #0x0f
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, #<(_g_HexChar)
	add	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, #>(_g_HexChar)
	adc	a, -9 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	call	_Print_DrawChar
00111$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1325: if (len > 2)
	ld	a, #0x02
	sub	a, -1 (ix)
	jr	NC, 00113$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1326: Print_DrawChar(g_HexChar[(val >> 8) & 0x000F]);
	ld	a, -11 (ix)
	ld	-2 (ix), a
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, -6 (ix)
	and	a, #0x0f
	ld	-10 (ix), a
	ld	-9 (ix), #0x00
	ld	a, #<(_g_HexChar)
	add	a, -10 (ix)
	ld	-6 (ix), a
	ld	a, #>(_g_HexChar)
	adc	a, -9 (ix)
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	call	_Print_DrawChar
00113$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1327: if (len > 1)
	ld	a, #0x01
	sub	a, -1 (ix)
	jr	NC, 00115$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1328: Print_DrawChar(g_HexChar[(val >> 4) & 0x000F]);
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, -11 (ix)
	ld	-1 (ix), a
	srl	-1 (ix)
	rr	-2 (ix)
	srl	-1 (ix)
	rr	-2 (ix)
	srl	-1 (ix)
	rr	-2 (ix)
	srl	-1 (ix)
	rr	-2 (ix)
	ld	a, -2 (ix)
	and	a, #0x0f
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, #<(_g_HexChar)
	add	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_HexChar)
	adc	a, -5 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	call	_Print_DrawChar
00115$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1329: Print_DrawChar(g_HexChar[val & 0x000F]);
	ld	a, -12 (ix)
	ld	-2 (ix), a
	ld	a, -11 (ix)
	ld	-1 (ix), a
	ld	a, -2 (ix)
	and	a, #0x0f
	ld	-6 (ix), a
	ld	-5 (ix), #0x00
	ld	a, #<(_g_HexChar)
	add	a, -6 (ix)
	ld	-2 (ix), a
	ld	a, #>(_g_HexChar)
	adc	a, -5 (ix)
	ld	-1 (ix), a
	ld	l, -2 (ix)
	ld	h, -1 (ix)
	ld	a, (hl)
	call	_Print_DrawChar
	jp	00193$
00173$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1331: else if (*ptr == 'b')
	ld	a, -2 (ix)
	sub	a, #0x62
	jp	NZ,00170$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1333: if (len == 0)
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00117$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1334: len = 16;
	ld	-1 (ix), #0x10
00117$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1335: u16 val = (u16)va_arg(args, u16);
	ld	a, -8 (ix)
	add	a, #0x02
	ld	-10 (ix), a
	ld	a, -7 (ix)
	adc	a, #0x00
	ld	-9 (ix), a
	ld	a, -10 (ix)
	ld	-8 (ix), a
	ld	a, -9 (ix)
	ld	-7 (ix), a
	ld	a, -10 (ix)
	add	a, #0xfe
	ld	-6 (ix), a
	ld	a, -9 (ix)
	adc	a, #0xff
	ld	-5 (ix), a
	ld	l, -6 (ix)
	ld	h, -5 (ix)
	ld	a, (hl)
	ld	-6 (ix), a
	inc	hl
	ld	a, (hl)
	ld	-5 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1336: u16 bit = 1 << (len - 1);
	dec	-1 (ix)
	ld	b, -1 (ix)
	ld	-2 (ix), #0x01
	ld	-1 (ix), #0
	inc	b
	jp	00426$
00425$:
	sla	-2 (ix)
	rl	-1 (ix)
00426$:
	djnz	00425$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1337: while (bit)
00121$:
	ld	a, -1 (ix)
	or	a, -2 (ix)
	jp	Z, 00193$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1339: if (val & bit)
	ld	a, -6 (ix)
	and	a, -2 (ix)
	ld	-10 (ix), a
	ld	a, -5 (ix)
	and	a, -1 (ix)
	ld	-9 (ix), a
	or	a, -10 (ix)
	jr	Z, 00119$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1340: Print_DrawChar('1');
	ld	a, #0x31
	call	_Print_DrawChar
	jp	00120$
00119$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1342: Print_DrawChar('0');
	ld	a, #0x30
	call	_Print_DrawChar
00120$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1343: bit >>= 1;
	srl	-1 (ix)
	rr	-2 (ix)
	jp	00121$
00170$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1347: else if ((*ptr == 'I') || (*ptr == 'D'))
	ld	a, -2 (ix)
	sub	a, #0x49
	jr	Z, 00165$
	ld	a, -2 (ix)
	sub	a, #0x44
	jr	NZ, 00166$
00165$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1349: i32 val = (i32)va_arg(args, i32);
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, l
	add	a, #0xfc
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1350: Print_DrawInt(val);
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	call	_Print_DrawInt
	jp	00193$
00166$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1352: else if (*ptr == 'U')
	ld	a, -2 (ix)
	sub	a, #0x55
	jr	NZ, 00163$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1354: u32 val = (u32)va_arg(args, u32);
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, l
	add	a, #0xfc
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
	inc	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1355: Print_DrawInt(val);
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	call	_Print_DrawInt
	jp	00193$
00163$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1357: else if (*ptr == 'X')
	ld	a, -2 (ix)
	sub	a, #0x58
	jp	NZ,00160$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1359: if (len == 0)
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00125$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1360: len = 8;
	ld	-1 (ix), #0x08
00125$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1361: u32 val = (u32)va_arg(args, u32);
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	a, l
	add	a, #0xfc
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #0xff
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, (hl)
	inc	hl
	ld	b, (hl)
	inc	hl
	ld	e, (hl)
	inc	hl
	ld	d, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1363: if (len > 7)
	ld	a, #0x07
	sub	a, -1 (ix)
	jr	NC, 00127$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1364: Print_DrawChar(g_HexChar[(val >> 28) & 0xF]);
	ld	-12 (ix), d
	xor	a, a
	ld	-11 (ix), a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	a, #0x04
00434$:
	srl	-12 (ix)
	dec	a
	jr	NZ, 00434$
	ld	a, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x0f
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #<(_g_HexChar)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #>(_g_HexChar)
	ld	h, a
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	a, l
	call	_Print_DrawChar
	pop	de
	pop	bc
00127$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1365: if (len > 6)
	ld	a, #0x06
	sub	a, -1 (ix)
	jr	NC, 00129$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1366: Print_DrawChar(g_HexChar[(val >> 24) & 0xF]);
	ld	a, d
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x0f
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #<(_g_HexChar)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #>(_g_HexChar)
	ld	h, a
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	a, l
	call	_Print_DrawChar
	pop	de
	pop	bc
00129$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1367: if (len > 5)
	ld	a, #0x05
	sub	a, -1 (ix)
	jr	NC, 00131$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1368: Print_DrawChar(g_HexChar[(val >> 20) & 0xF]);
	ld	-12 (ix), e
	ld	-11 (ix), d
	xor	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
	ld	a, #0x04
00436$:
	srl	-11 (ix)
	rr	-12 (ix)
	dec	a
	jr	NZ, 00436$
	ld	a, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x0f
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #<(_g_HexChar)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #>(_g_HexChar)
	ld	h, a
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	a, l
	call	_Print_DrawChar
	pop	de
	pop	bc
00131$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1369: if (len > 4)
	ld	a, #0x04
	sub	a, -1 (ix)
	jr	NC, 00133$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1370: Print_DrawChar(g_HexChar[(val >> 16) & 0xF]);
	ld	a, e
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x0f
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #<(_g_HexChar)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #>(_g_HexChar)
	ld	h, a
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	a, l
	call	_Print_DrawChar
	pop	de
	pop	bc
00133$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1371: if (len > 3)
	ld	a, #0x03
	sub	a, -1 (ix)
	jr	NC, 00135$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1372: Print_DrawChar(g_HexChar[(val >> 12) & 0xF]);
	ld	-12 (ix), b
	ld	-11 (ix), e
	ld	-10 (ix), d
	ld	-9 (ix), #0x00
	ld	a, #0x04
00438$:
	srl	-10 (ix)
	rr	-11 (ix)
	rr	-12 (ix)
	dec	a
	jr	NZ, 00438$
	ld	a, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x0f
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	push	de
	ld	de, #_g_HexChar
	add	hl, de
	pop	de
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	a, l
	call	_Print_DrawChar
	pop	de
	pop	bc
00135$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1373: if (len > 2)
	ld	a, #0x02
	sub	a, -1 (ix)
	jr	NC, 00137$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1374: Print_DrawChar(g_HexChar[(val >> 8) & 0xF]);
	ld	a, b
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x0f
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #<(_g_HexChar)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #>(_g_HexChar)
	ld	h, a
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	a, l
	call	_Print_DrawChar
	pop	de
	pop	bc
00137$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1375: if (len > 1)
	ld	a, #0x01
	sub	a, -1 (ix)
	jr	NC, 00139$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1376: Print_DrawChar(g_HexChar[(val >> 4) & 0xF]);
	ld	-12 (ix), c
	ld	-11 (ix), b
	ld	-10 (ix), e
	ld	-9 (ix), d
	ld	a, #0x04
00440$:
	srl	-9 (ix)
	rr	-10 (ix)
	rr	-11 (ix)
	rr	-12 (ix)
	dec	a
	jr	NZ, 00440$
	ld	a, -12 (ix)
;	spillPairReg hl
;	spillPairReg hl
	and	a, #0x0f
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	a, #<(_g_HexChar)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, h
	adc	a, #>(_g_HexChar)
	ld	h, a
	ld	l, (hl)
;	spillPairReg hl
	push	bc
	push	de
	ld	a, l
	call	_Print_DrawChar
	pop	de
	pop	bc
00139$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1377: Print_DrawChar(g_HexChar[val & 0xF]);
	ld	a, c
	and	a, #0x0f
	ld	c, a
	ld	b, #0x00
	ld	hl, #_g_HexChar
	add	hl, bc
	ld	a, (hl)
	call	_Print_DrawChar
	jp	00193$
00160$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1379: else if (*ptr == 'B')
	ld	a, -2 (ix)
	sub	a, #0x42
	jp	NZ,00157$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1381: if (len == 0)
	ld	a, -1 (ix)
	or	a, a
	jr	NZ, 00141$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1382: len = 16;
	ld	-1 (ix), #0x10
00141$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1383: u32 val = (u32)va_arg(args, u32);
	ld	l, -8 (ix)
	ld	h, -7 (ix)
	ld	de, #0x0004
	add	hl, de
	ld	-8 (ix), l
	ld	-7 (ix), h
	ld	de, #0xfffc
	add	hl, de
	ex	de,hl
	ld	hl, #4
	add	hl, sp
	ex	de, hl
	ld	bc, #0x0004
	ldir
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1384: u32 bit = 1 << (len - 1);
	ld	b, -1 (ix)
	dec	b
	ld	hl, #0x0001
	inc	b
	jp	00445$
00444$:
	add	hl, hl
00445$:
	djnz	00444$
	ld	-12 (ix), l
	ld	a, h
	ld	-11 (ix), a
	rlca
	sbc	a, a
	ld	-10 (ix), a
	ld	-9 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1385: while (bit)
00145$:
	ld	a, -9 (ix)
	or	a, -10 (ix)
	or	a, -11 (ix)
	or	a, -12 (ix)
	jp	Z, 00193$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1387: if (val & bit)
	ld	a, -16 (ix)
	and	a, -12 (ix)
	ld	-20 (ix), a
	ld	a, -15 (ix)
	and	a, -11 (ix)
	ld	-19 (ix), a
	ld	a, -14 (ix)
	and	a, -10 (ix)
	ld	-18 (ix), a
	ld	a, -13 (ix)
	and	a, -9 (ix)
	ld	-17 (ix), a
	or	a, -18 (ix)
	or	a, -19 (ix)
	or	a, -20 (ix)
	jr	Z, 00143$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1388: Print_DrawChar('1');
	ld	a, #0x31
	call	_Print_DrawChar
	jp	00144$
00143$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1390: Print_DrawChar('0');
	ld	a, #0x30
	call	_Print_DrawChar
00144$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1391: bit >>= 1;
	srl	-9 (ix)
	rr	-10 (ix)
	rr	-11 (ix)
	rr	-12 (ix)
	jp	00145$
00157$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1395: else if (*ptr == 'c')
	ld	a, -2 (ix)
	sub	a, #0x63
	jr	NZ, 00154$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1397: c8 val = (c8)va_arg(args, u16);
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	-8 (ix), l
	ld	-7 (ix), h
	dec	hl
	dec	hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1398: Print_DrawChar(val);
	ld	a, (hl)
	call	_Print_DrawChar
	jp	00193$
00154$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1400: else if (*ptr == 's')
	ld	a, -2 (ix)
	sub	a, #0x73
	jr	NZ, 00151$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1402: const c8* val = (const c8*)va_arg(args, const c8*);
	ld	l, -8 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	inc	hl
	ld	-8 (ix), l
	ld	-7 (ix), h
	dec	hl
	dec	hl
	ld	c, (hl)
	inc	hl
	ld	h, (hl)
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1403: Print_DrawText(val);
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	call	_Print_DrawText
	jp	00193$
00151$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1405: else if (*ptr == '%')
	ld	a, -2 (ix)
	sub	a, #0x25
	jr	NZ, 00193$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1407: Print_DrawChar('%');
	ld	a, #0x25
	call	_Print_DrawChar
	jp	00193$
00192$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1411: else if (*ptr == '\t')
	ld	a, -1 (ix)
	sub	a, #0x09
	jr	NZ, 00189$
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:492: PRINT_DATA.CursorX += PRINT_W(PRINT_DATA.UnitX) + PRINT_DATA.TabSize - 1;
	ld	bc, (#(_g_PrintData + 5) + 0)
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	e, a
	ld	d, #0x00
	ld	a, (#(_g_PrintData + 4) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, de
	dec	hl
	add	hl, bc
	ex	de, hl
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:493: PRINT_DATA.CursorX &= ~(PRINT_DATA.TabSize - 1);
	ld	a, (#(_g_PrintData + 4) + 0)
	ld	b, #0x00
	ld	c, a
	dec	bc
	ld	a, c
	cpl
	ld	c, a
	ld	a, b
	cpl
	ld	b, a
	ld	a, e
	and	a, c
	ld	c, a
	ld	a, d
	and	a, b
	ld	b, a
	ld	((_g_PrintData + 5)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1412: Print_Tab();
	jp	00193$
00189$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1413: else if (*ptr == '\n')
	ld	a, -1 (ix)
	sub	a, #0x0a
	jr	NZ, 00186$
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:500: PRINT_DATA.CursorX = 0;
	ld	hl, #0x0000
	ld	((_g_PrintData + 5)), hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:501: PRINT_DATA.CursorY += PRINT_H(PRINT_DATA.UnitY);
	ld	bc, #_g_PrintData + 7
	ld	a, (bc)
	ld	hl, #_g_PrintData + 3
	ld	e, (hl)
	add	a, e
	ld	(bc), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1414: Print_Return();
	jp	00193$
00186$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1416: else if (*ptr == ' ')
	ld	a, -1 (ix)
	sub	a, #0x20
	jr	NZ, 00183$
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:486: inline void Print_Space() { PRINT_DATA.CursorX += PRINT_W(PRINT_DATA.UnitX); }
	ld	bc, (#(_g_PrintData + 5) + 0)
	ld	a, (#(_g_PrintData + 2) + 0)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, bc
	ex	de, hl
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1417: Print_Space();
	jp	00193$
00183$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1420: Print_DrawChar(*ptr);
	ld	a, -1 (ix)
	call	_Print_DrawChar
00193$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1422: ptr++;
	inc	-4 (ix)
	jp	NZ,00194$
	inc	-3 (ix)
	jp	00194$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1425: va_end(args);
00200$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1426: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1436: void Print_DrawLineH(UX x, UY y, u8 len)
;	---------------------------------
; Function Print_DrawLineH
; ---------------------------------
_Print_DrawLineH::
	push	ix
	ld	ix,#0
	add	ix,sp
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1438: Print_SetPosition(x, y);
	ld	c, 4 (ix)
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #(_g_PrintData + 7)
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1439: Print_DrawCharX(0x17, len);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x17
	call	_Print_DrawCharX
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1440: }
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1444: void Print_DrawLineV(UX x, UY y, u8 len)
;	---------------------------------
; Function Print_DrawLineV
; ---------------------------------
_Print_DrawLineV::
	push	ix
	ld	ix,#0
	add	ix,sp
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1446: for (u8 i = 0; i < len; i++)
	ld	c, #0x00
00104$:
	ld	a, c
	sub	a, 5 (ix)
	jr	NC, 00106$
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1448: Print_SetPosition(x, y + i);
	ld	a, 4 (ix)
	add	a, c
	ld	b, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #(_g_PrintData + 7)
	ld	(hl), b
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1449: Print_DrawChar(0x16);
	push	bc
	push	de
	ld	a, #0x16
	call	_Print_DrawChar
	pop	de
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1446: for (u8 i = 0; i < len; i++)
	inc	c
	jp	00104$
00106$:
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1451: }
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1455: void Print_DrawBox(UX x, UY y, u8 width, u8 height)
;	---------------------------------
; Function Print_DrawBox
; ---------------------------------
_Print_DrawBox::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	dec	sp
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1458: Print_SetPosition(x, y);
	ld	a, 4 (ix)
	ld	-5 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #(_g_PrintData + 7)
	ld	a, -5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1459: Print_DrawChar(0x18);
	push	de
	ld	a, #0x18
	call	_Print_DrawChar
	pop	de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1460: Print_SetPosition(x + width - 1, y);
	ld	c, 5 (ix)
	ld	b, #0x00
	ld	-4 (ix), e
	ld	-3 (ix), d
	ld	l, e
	ld	h, d
	add	hl, bc
	dec	hl
	ld	-2 (ix), l
	ld	-1 (ix), h
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	((_g_PrintData + 5)), bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #(_g_PrintData + 7)
	ld	a, -5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1461: Print_DrawChar(0x19);
	push	de
	ld	a, #0x19
	call	_Print_DrawChar
	pop	de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1462: Print_SetPosition(x, y + height - 1);
	ld	a, -5 (ix)
	add	a, 6 (ix)
	dec	a
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	((_g_PrintData + 5)), de
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	(#(_g_PrintData + 7)),a
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1463: Print_DrawChar(0x1A);
	push	bc
	push	de
	ld	a, #0x1a
	call	_Print_DrawChar
	pop	de
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:268: PRINT_DATA.CursorX = x;
	ld	hl, #(_g_PrintData + 5)
	ld	a, -2 (ix)
	ld	(hl), a
	inc	hl
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/print.h:269: PRINT_DATA.CursorY = y;
	ld	hl, #(_g_PrintData + 7)
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1465: Print_DrawChar(0x1B);
	push	bc
	push	de
	ld	a, #0x1b
	call	_Print_DrawChar
	pop	de
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1468: Print_DrawLineH(x + 1, y,              width - 2);
	ld	b, 5 (ix)
	dec	b
	dec	b
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	inc	hl
	push	hl
	push	bc
	push	de
	push	bc
	inc	sp
	ld	a, -5 (ix)
	push	af
	inc	sp
	call	_Print_DrawLineH
	pop	de
	pop	bc
	pop	hl
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1469: Print_DrawLineH(x + 1, y + height - 1, width - 2);
	push	de
	push	bc
	call	_Print_DrawLineH
	pop	de
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1472: Print_DrawLineV(x,             y + 1, height - 2);
	ld	b, 6 (ix)
	dec	b
	dec	b
	ld	c, -5 (ix)
	inc	c
	push	bc
	push	bc
	ex	de, hl
	call	_Print_DrawLineV
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_Print_DrawLineV
;C:\MSX\MSXgl-1.4.1\engine/src/print.c:1474: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
__xinit__g_PrintInvalid:
	.db #0xff	; 255
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0x81	; 129
	.db #0xff	; 255
	.area _CABS (ABS)
