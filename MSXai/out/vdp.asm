;--------------------------------------------------------
; File Created by SDCC : free open source ANSI-C Compiler
; Version 4.2.0 #13081 (MINGW64)
;--------------------------------------------------------
	.module vdp
	.optsdcc -mz80
	
;--------------------------------------------------------
; Public variables in this module
;--------------------------------------------------------
	.globl _g_VDPInitilized
	.globl _g_SpriteColorHigh
	.globl _g_SpritePatternHigh
	.globl _g_SpriteAttributeHigh
	.globl _g_ScreenPatternHigh
	.globl _g_ScreenColorHigh
	.globl _g_ScreenLayoutHigh
	.globl _g_SpriteColorLow
	.globl _g_SpritePatternLow
	.globl _g_SpriteAttributeLow
	.globl _g_ScreenPatternLow
	.globl _g_ScreenColorLow
	.globl _g_ScreenLayoutLow
	.globl _g_VDP_Sprite
	.globl _g_VDP_Command
	.globl _g_VDP_Data
	.globl _g_VDP_REGSAV
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
	.globl _g_VDPBitValue
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
	.globl _VDP_SetModeFlag
	.globl _VDP_SetModeText1
	.globl _VDP_SetModeMultiColor
	.globl _VDP_SetModeGraphic1
	.globl _VDP_SetModeGraphic2
	.globl _VDP_ClearVRAM
	.globl _VDP_WriteVRAM_16K
	.globl _VDP_FillVRAM_16K
	.globl _VDP_ReadVRAM_16K
	.globl _VDP_Peek_16K
	.globl _VDP_Poke_16K
	.globl _VDP_SetModeText2
	.globl _VDP_SetModeGraphic3
	.globl _VDP_SetModeGraphic4
	.globl _VDP_SetModeGraphic5
	.globl _VDP_SetModeGraphic6
	.globl _VDP_SetModeGraphic7
	.globl _VDP_ReadStatus
	.globl _VDP_SetAdjustOffset
	.globl _VDP_SetPalette
	.globl _VDP_SetPaletteEntry
	.globl _VDP_WriteVRAM_128K
	.globl _VDP_FillVRAM_128K
	.globl _VDP_ReadVRAM_128K
	.globl _VDP_Poke_128K
	.globl _VDP_Peek_128K
	.globl _VDP_CommandWait
	.globl _VDP_CommandSetupR32
	.globl _VDP_CommandSetupR36
	.globl _VDP_CommandWriteLoop
	.globl _VDP_Initialize
	.globl _VDP_SetMode
	.globl _VDP_GetVersion
	.globl _VDP_RegWrite
	.globl _VDP_RegWriteBak
	.globl _VDP_RegWriteBakMask
	.globl _VDP_ReadDefaultStatus
	.globl _VDP_SetPage
	.globl _VDP_SetLayoutTable
	.globl _VDP_SetColorTable
	.globl _VDP_SetPatternTable
	.globl _VDP_SetSpriteAttributeTable
	.globl _VDP_SetSpritePatternTable
	.globl _VDP_LoadSpritePattern
	.globl _VDP_SetSpriteSM1
	.globl _VDP_SetSprite
	.globl _VDP_SetSpriteExMultiColor
	.globl _VDP_SetSpriteExUniColor
	.globl _VDP_SetSpritePosition
	.globl _VDP_SetSpritePositionX
	.globl _VDP_SetSpritePositionY
	.globl _VDP_SetSpritePattern
	.globl _VDP_SetSpriteColorSM1
	.globl _VDP_SetSpriteUniColor
	.globl _VDP_SetSpriteMultiColor
	.globl _VDP_DisableSpritesFrom
	.globl _VDP_SetBlinkTile
	.globl _VDP_LoadPattern_GM2
	.globl _VDP_LoadColor_GM2
	.globl _VDP_WriteLayout_GM2
	.globl _VDP_FillLayout_GM2
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
_g_VDP_REGSAV::
	.ds 28
_g_VDP_Data::
	.ds 2
_g_VDP_Command::
	.ds 15
_g_VDP_Sprite::
	.ds 4
_g_ScreenLayoutLow::
	.ds 2
_g_ScreenColorLow::
	.ds 2
_g_ScreenPatternLow::
	.ds 2
_g_SpriteAttributeLow::
	.ds 2
_g_SpritePatternLow::
	.ds 2
_g_SpriteColorLow::
	.ds 2
_g_ScreenLayoutHigh::
	.ds 1
_g_ScreenColorHigh::
	.ds 1
_g_ScreenPatternHigh::
	.ds 1
_g_SpriteAttributeHigh::
	.ds 1
_g_SpritePatternHigh::
	.ds 1
_g_SpriteColorHigh::
	.ds 1
;--------------------------------------------------------
; ram data
;--------------------------------------------------------
	.area _INITIALIZED
_g_VDPInitilized::
	.ds 1
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
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:166: void VDP_SetModeFlag(u8 flag)
;	---------------------------------
; Function VDP_SetModeFlag
; ---------------------------------
_VDP_SetModeFlag::
	ld	e, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:169: u8 reg1 = g_VDP_REGSAV[1];
	ld	a, (#_g_VDP_REGSAV + 1)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:170: reg1 &= 0b11100111;
	and	a, #0xe7
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:171: if (flag & 0b00001)
	bit	0, e
	jr	Z, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:172: reg1 |= 0b00010000;
	set	4, l
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:173: if (flag & 0b00010)
	bit	1, e
	jr	Z, 00104$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:174: reg1 |= 0b00001000;
	set	3, l
00104$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:175: VDP_RegWriteBak(1, reg1);
	ld	a, #0x01
	call	_VDP_RegWriteBak
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:178: u8 reg0 = g_VDP_REGSAV[0];
	ld	a, (#_g_VDP_REGSAV + 0)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:179: reg0 &= 0b11110001;
	and	a, #0xf1
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:180: flag >>= 1;
	ld	a, e
	srl	a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:181: flag &= 0b00001110;
	and	a, #0x0e
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:182: reg0 |= flag;
	or	a, c
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:183: VDP_RegWriteBak(0, reg0);
	xor	a, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:184: }
	jp	_VDP_RegWriteBak
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
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:189: void VDP_SetModeText1()
;	---------------------------------
; Function VDP_SetModeText1
; ---------------------------------
_VDP_SetModeText1::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:191: VDP_SetModeFlag(VDP_T1_MODE);
	ld	a, #0x01
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:192: VDP_SetLayoutTable(VDP_T1_ADDR_NT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:193: VDP_SetPatternTable(VDP_T1_ADDR_PT);
	ld	de, #0x0800
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:194: }
	jp	_VDP_SetPatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:200: void VDP_SetModeMultiColor()
;	---------------------------------
; Function VDP_SetModeMultiColor
; ---------------------------------
_VDP_SetModeMultiColor::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:202: VDP_SetModeFlag(VDP_MC_MODE);
	ld	a, #0x02
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:203: VDP_SetLayoutTable(VDP_MC_ADDR_NT);
	ld	de, #0x0800
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:204: VDP_SetPatternTable(VDP_MC_ADDR_PT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetPatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:206: VDP_SetSpriteAttributeTable(VDP_MC_ADDR_SAT);
	ld	de, #0x1b00
	ld	hl, #0x0000
	call	_VDP_SetSpriteAttributeTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:207: VDP_SetSpritePatternTable(VDP_MC_ADDR_SPT);
	ld	de, #0x3800
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:209: }
	jp	_VDP_SetSpritePatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:215: void VDP_SetModeGraphic1()
;	---------------------------------
; Function VDP_SetModeGraphic1
; ---------------------------------
_VDP_SetModeGraphic1::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:217: VDP_SetModeFlag(VDP_G1_MODE);
	xor	a, a
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:218: VDP_SetLayoutTable(VDP_G1_ADDR_NT);
	ld	de, #0x1800
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:219: VDP_SetColorTable(VDP_G1_ADDR_CT);
	ld	de, #0x2000
	ld	hl, #0x0000
	call	_VDP_SetColorTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:220: VDP_SetPatternTable(VDP_G1_ADDR_PT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetPatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:222: VDP_SetSpriteAttributeTable(VDP_G1_ADDR_SAT);
	ld	de, #0x1b00
	ld	hl, #0x0000
	call	_VDP_SetSpriteAttributeTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:223: VDP_SetSpritePatternTable(VDP_G1_ADDR_SPT);
	ld	de, #0x3800
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:225: }
	jp	_VDP_SetSpritePatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:231: void VDP_SetModeGraphic2()
;	---------------------------------
; Function VDP_SetModeGraphic2
; ---------------------------------
_VDP_SetModeGraphic2::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:233: VDP_SetModeFlag(VDP_G2_MODE);
	ld	a, #0x04
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:234: VDP_SetLayoutTable(VDP_G2_ADDR_NT);
	ld	de, #0x1800
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:235: VDP_SetColorTable(VDP_G2_ADDR_CT);
	ld	de, #0x2000
	ld	hl, #0x0000
	call	_VDP_SetColorTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:236: VDP_SetPatternTable(VDP_G2_ADDR_PT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetPatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:238: VDP_SetSpriteAttributeTable(VDP_G2_ADDR_SAT);
	ld	de, #0x1b00
	ld	hl, #0x0000
	call	_VDP_SetSpriteAttributeTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:239: VDP_SetSpritePatternTable(VDP_G2_ADDR_SPT);
	ld	de, #0x3800
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:241: }
	jp	_VDP_SetSpritePatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:252: void VDP_ClearVRAM()
;	---------------------------------
; Function VDP_ClearVRAM
; ---------------------------------
_VDP_ClearVRAM::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:258: loopx (8)
	ld	bc, #0x0000
	ld	de, #0x0000
	ld	l, #0x00
;	spillPairReg hl
;	spillPairReg hl
00103$:
	ld	a, l
	sub	a, #0x08
	ret	NC
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:260: VDP_FillVRAM(0x00, addr & 0xFFFF, addr >> 16, 0x4000); // Clear VRAM by 16 KB step
	ld	a, e
	push	bc
	pop	iy
	push	hl
	push	bc
	push	de
	push	hl
	ld	hl, #0x4000
	ex	(sp), hl
	push	af
	inc	sp
	push	iy
	pop	de
	xor	a, a
	call	_VDP_FillVRAM_128K
	pop	de
	pop	bc
	pop	hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:261: addr += 0x4000;
	ld	a, b
	add	a, #0x40
	ld	b, a
	jr	NC, 00118$
	inc	de
00118$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:258: loopx (8)
	inc	l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:264: }
	jp	00103$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:275: void VDP_WriteVRAM_16K(const u8* src, u16 dest, u16 count)
;	---------------------------------
; Function VDP_WriteVRAM_16K
; ---------------------------------
_VDP_WriteVRAM_16K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:344: __endasm;
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	iy, #2
	add	iy, sp
	ld	a, e
	di
	out	(0x99), a
	ld	a, d
	and	a, #0x3F
	or	a, #0x40
	ei
	out	(0x99), a
	ld	c, #0x98
	ld	a, 0(iy)
	and	a
	jp	z, wrt16_loop_init
	ld	b, a
	otir
	 wrt16_loop_init:
	ld	a, 1(iy)
	 wrt16_loop_start:
	and	a
	jp	z, wrt16_loop_end
	ld	b, #0
	otir
	dec	a
	jp	wrt16_loop_start
	 wrt16_loop_end:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:345: }
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:354: void VDP_FillVRAM_16K(u8 value, u16 dest, u16 count) __NAKED // Stack: 4 bytes
;	---------------------------------
; Function VDP_FillVRAM_16K
; ---------------------------------
_VDP_FillVRAM_16K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:405: __endasm;
	ld	c, a
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	a, e
	di
	out	(0x99), a
	ld	a, d
	and	a, #0x3F
	or	a, #0x40
	out	(0x99), a
	pop	iy
	pop	de
	ld	a, c
	ld	b, e
	dec	de
	inc	d
	 fll16_loop_start:
	out	(0x98), a
	djnz	fll16_loop_start
	dec	d
	jp	nz, fll16_loop_start
	 fll16_loop_end:
	ei
	jp	(iy)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:406: }
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:519: void VDP_ReadVRAM_16K(u16 src, u8* dest, u16 count)
;	---------------------------------
; Function VDP_ReadVRAM_16K
; ---------------------------------
_VDP_ReadVRAM_16K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:589: __endasm;
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	iy, #2
	add	iy, sp
	ld	a, l
	di
	out	(0x99), a
	ld	a, h
	and	a, #0x3F
	ei
	out	(0x99), a
	ex	de, hl
	ld	c, #0x98
	ld	a, 0(iy)
	and	a
	jp	z, rd16_loop_init
	ld	b, a
	inir
	 rd16_loop_init:
	ld	a, 1(iy)
	 rd16_loop_start:
	and	a
	jp	z, rd16_loop_end
	ld	b, #0
	inir
	dec	a
	jp	rd16_loop_start
	 rd16_loop_end:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:590: }
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:600: u8 VDP_Peek_16K(u16 dest) __NAKED __PRESERVES(b, c, d, e, iyl, iyh)
;	---------------------------------
; Function VDP_Peek_16K
; ---------------------------------
_VDP_Peek_16K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:636: __endasm;
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	a, l
	di
	out	(0x99), a
	ld	a, h
	and	a, #0x3F
	out	(0x99), a
	nop
	ei
	in	a, (0x98)
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:637: }
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:645: void VDP_Poke_16K(u8 val, u16 dest) __PRESERVES(c, h, l, iyl, iyh)
;	---------------------------------
; Function VDP_Poke_16K
; ---------------------------------
_VDP_Poke_16K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:682: __endasm;
	ld	b, a
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	a, e
	di
	out	(0x99), a
	ld	a, d
	and	a, #0x3F
	or	a, #0x40
	out	(0x99), a
	ld	a, b
	ei
	out	(0x98), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:683: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:781: void VDP_SetModeText2()
;	---------------------------------
; Function VDP_SetModeText2
; ---------------------------------
_VDP_SetModeText2::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:783: VDP_SetModeFlag(VDP_T2_MODE);
	ld	a, #0x09
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:784: VDP_SetLayoutTable(VDP_T2_ADDR_NT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:785: VDP_SetColorTable(VDP_T2_ADDR_CT);
	ld	de, #0x3e00
	ld	hl, #0x0000
	call	_VDP_SetColorTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:786: VDP_SetPatternTable(VDP_T2_ADDR_PT);
	ld	de, #0x1000
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:787: }
	jp	_VDP_SetPatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:793: void VDP_SetModeGraphic3()
;	---------------------------------
; Function VDP_SetModeGraphic3
; ---------------------------------
_VDP_SetModeGraphic3::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:795: VDP_SetModeFlag(VDP_G3_MODE);
	ld	a, #0x08
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:796: VDP_SetLayoutTable(VDP_G3_ADDR_NT);
	ld	de, #0x1800
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:797: VDP_SetColorTable(VDP_G3_ADDR_CT);
	ld	de, #0x2000
	ld	hl, #0x0000
	call	_VDP_SetColorTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:798: VDP_SetPatternTable(VDP_G3_ADDR_PT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetPatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:800: VDP_SetSpriteAttributeTable(VDP_G3_ADDR_SAT);
	ld	de, #0x1e00
	ld	hl, #0x0000
	call	_VDP_SetSpriteAttributeTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:801: VDP_SetSpritePatternTable(VDP_G3_ADDR_SPT);
	ld	de, #0x3800
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:803: }
	jp	_VDP_SetSpritePatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:809: void VDP_SetModeGraphic4()
;	---------------------------------
; Function VDP_SetModeGraphic4
; ---------------------------------
_VDP_SetModeGraphic4::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:811: VDP_SetModeFlag(VDP_G4_MODE);
	ld	a, #0x0c
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:812: VDP_SetLayoutTable(VDP_G4_ADDR_NT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:814: VDP_SetSpriteAttributeTable(VDP_G4_ADDR_SAT);
	ld	de, #0x7600
	ld	hl, #0x0000
	call	_VDP_SetSpriteAttributeTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:815: VDP_SetSpritePatternTable(VDP_G4_ADDR_SPT);
	ld	de, #0x7800
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:817: }
	jp	_VDP_SetSpritePatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:823: void VDP_SetModeGraphic5()
;	---------------------------------
; Function VDP_SetModeGraphic5
; ---------------------------------
_VDP_SetModeGraphic5::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:825: VDP_SetModeFlag(VDP_G5_MODE);
	ld	a, #0x10
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:826: VDP_SetLayoutTable(VDP_G5_ADDR_NT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:828: VDP_SetSpriteAttributeTable(VDP_G5_ADDR_SAT);
	ld	de, #0x7600
	ld	hl, #0x0000
	call	_VDP_SetSpriteAttributeTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:829: VDP_SetSpritePatternTable(VDP_G5_ADDR_SPT);
	ld	de, #0x7800
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:831: }
	jp	_VDP_SetSpritePatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:837: void VDP_SetModeGraphic6()
;	---------------------------------
; Function VDP_SetModeGraphic6
; ---------------------------------
_VDP_SetModeGraphic6::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:839: VDP_SetModeFlag(VDP_G6_MODE);
	ld	a, #0x14
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:840: VDP_SetLayoutTable(VDP_G6_ADDR_NT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:842: VDP_SetSpriteAttributeTable(VDP_G6_ADDR_SAT);
	ld	de, #0xfa00
	ld	hl, #0x0000
	call	_VDP_SetSpriteAttributeTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:843: VDP_SetSpritePatternTable(VDP_G6_ADDR_SPT);
	ld	de, #0xf000
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:845: }
	jp	_VDP_SetSpritePatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:851: void VDP_SetModeGraphic7()
;	---------------------------------
; Function VDP_SetModeGraphic7
; ---------------------------------
_VDP_SetModeGraphic7::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:853: VDP_SetModeFlag(VDP_G7_MODE);
	ld	a, #0x1c
	call	_VDP_SetModeFlag
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:854: VDP_SetLayoutTable(VDP_G7_ADDR_NT);
	ld	de, #0x0000
	ld	hl, #0x0000
	call	_VDP_SetLayoutTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:856: VDP_SetSpriteAttributeTable(VDP_G7_ADDR_SAT);
	ld	de, #0xfa00
	ld	hl, #0x0000
	call	_VDP_SetSpriteAttributeTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:857: VDP_SetSpritePatternTable(VDP_G7_ADDR_SPT);
	ld	de, #0xf000
	ld	hl, #0x0000
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:859: }
	jp	_VDP_SetSpritePatternTable
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:873: u8 VDP_ReadStatus(u8 stat) __NAKED __PRESERVES(b, c, d, e, h, iyl, iyh)
;	---------------------------------
; Function VDP_ReadStatus
; ---------------------------------
_VDP_ReadStatus::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:901: __endasm;
	di
	out	(0x99), a
	ld	a, #(0x80 | 15)
	out	(0x99), a
	in	a, (0x99)
	ld	l, a
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 15)
	ei
	out	(0x99),a
	ld	a, l
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:902: }
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:906: void VDP_SetAdjustOffset(u8 offset)
;	---------------------------------
; Function VDP_SetAdjustOffset
; ---------------------------------
_VDP_SetAdjustOffset::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:909: VDP_CommandWait(); // @todo Check if it's really needed. Cf. https://www.msx.org/wiki/VDP_Display_Registers#Control_Register_18
	call	_VDP_CommandWait
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:911: VDP_RegWrite(18, offset);
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x12
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:912: }
	jp	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:918: void VDP_SetPalette(const u8* pal) __FASTCALL __PRESERVES(d, e, iyl, iyh)
;	---------------------------------
; Function VDP_SetPalette
; ---------------------------------
_VDP_SetPalette::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:942: __endasm;
	ld	a, #1
	di
	out	(0x99), a
	ld	a, #(0x80 | 16)
	ei
	out	(0x99), a
	ld	c, #0x9A
	ld	b, #30
	otir
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:943: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:969: void VDP_SetPaletteEntry(u8 index, u16 color)
;	---------------------------------
; Function VDP_SetPaletteEntry
; ---------------------------------
_VDP_SetPaletteEntry::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:983: __endasm;
	di
	out	(_g_VDP_RegPort), a
	ld	a, #(0x80 | 16)
	out	(_g_VDP_RegPort), a
	ld	a, e
	out	(_g_VDP_PalPort), a
	ld	a, d
	ei
	out	(_g_VDP_PalPort), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:984: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1002: void VDP_WriteVRAM_128K(const u8* src, u16 destLow, u8 destHigh, u16 count)
;	---------------------------------
; Function VDP_WriteVRAM_128K
; ---------------------------------
_VDP_WriteVRAM_128K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1054: __endasm;
	ld	iy, #2
	add	iy, sp
	ld	a, 0(iy)
	add	a, a
	add	a, a
	ld	c, a
	ld	a, d
	rlca
	rlca
	and	a, #0x03
	add	a, c
	di
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	a, e
	out	(0x99), a
	ld	a, d
	and	a, #0x3F
	or	a, #0x40
	ei
	out	(0x99), a
	ld	c, #0x98
	ld	a, 1(iy)
	and	a
	jp	z, wrt_loop_init
	ld	b, a
	otir
	 wrt_loop_init:
	ld	a, 2(iy)
	 wrt_loop_start:
	and	a
	jp	z, wrt_loop_end
	ld	b, #0
	otir
	dec	a
	jp	wrt_loop_start
	 wrt_loop_end:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1055: }
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1065: void VDP_FillVRAM_128K(u8 value, u16 destLow, u8 destHigh, u16 count)
;	---------------------------------
; Function VDP_FillVRAM_128K
; ---------------------------------
_VDP_FillVRAM_128K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1113: __endasm;
	ld	b, a
	ld	iy, #2
	add	iy, sp
	ld	a, 0(iy)
	add	a, a
	add	a, a
	ld	c, a
	ld	a, d
	rlca
	rlca
	and	a, #0x03
	add	a, c
	di
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	a, e
	out	(0x99), a
	ld	a, d
	and	a, #0x3F
	or	a, #0x40
	ei
	out	(0x99), a
	ld	e, 1(iy)
	ld	d, 2(iy)
	ld	a, b
	ld	b, e
	dec	de
	inc	d
	 fll_loop_start:
	out	(0x98), a
	djnz	fll_loop_start
	dec	d
	jp	nz, fll_loop_start
	 fll_loop_end:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1114: }
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1122: void VDP_ReadVRAM_128K(u16 srcLow, u8 srcHigh, u8* dest, u16 count)
;	---------------------------------
; Function VDP_ReadVRAM_128K
; ---------------------------------
_VDP_ReadVRAM_128K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1175: __endasm;
	ld	iy, #2
	add	iy, sp
	ld	a, 0(iy)
	add	a, a
	add	a, a
	ld	c, a
	ld	a, h
	rlca
	rlca
	and	a, #0x03
	add	a, c
	di
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	a, l
	out	(0x99), a
	ld	a, h
	and	a, #0x3F
	ei
	out	(0x99), a
	ld	l, 1(iy)
	ld	h, 2(iy)
	ld	c, #0x98
	ld	a, 3(iy)
	and	a
	jp	z, rd_loop_init
	ld	b, a
	inir
	 rd_loop_init:
	ld	a, 4(iy)
	 rd_loop_start:
	and	a
	jp	z, rd_loop_end
	ld	b, #0
	inir
	dec	a
	jp	rd_loop_start
	 rd_loop_end:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1176: }
	pop	hl
	pop	af
	pop	af
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1185: void VDP_Poke_128K(u8 val, u16 destLow, u8 destHigh)
;	---------------------------------
; Function VDP_Poke_128K
; ---------------------------------
_VDP_Poke_128K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1227: __endasm;
	ld	b, a
	ld	iy, #2
	add	iy, sp
	ld	a, 0(iy)
	add	a, a
	add	a, a
	ld	c, a
	ld	a, d
	rlca
	rlca
	and	a, #0x03
	add	a, c
	di
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	a, e
	out	(0x99), a
	ld	a, d
	and	a, #0x3F
	or	a, #0x40
	out	(0x99), a
	ld	a, b
	ei
	out	(0x98), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1228: }
	pop	hl
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1239: u8 VDP_Peek_128K(u16 srcLow, u8 srcHigh) __NAKED
;	---------------------------------
; Function VDP_Peek_128K
; ---------------------------------
_VDP_Peek_128K::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1284: __endasm;
	pop	iy
	dec	sp
	pop	de
	ld	a, d
	add	a, a
	add	a, a
	ld	c, a
	ld	a, h
	rlca
	rlca
	and	a, #0x03
	add	a, c
	di
	out	(0x99), a
	ld	a, #(0x80 | 14)
	out	(0x99), a
	ld	a, l
	out	(0x99), a
	ld	a, h
	and	a, #0x3F
	out	(0x99), a
	nop
	ei
	in	a, (0x98)
	jp	(iy)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1285: }
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1303: void VDP_CommandWait() __PRESERVES(b, c, d, e, h, l, iyl, iyh)
;	---------------------------------
; Function VDP_CommandWait
; ---------------------------------
_VDP_CommandWait::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1334: __endasm;
	 wait_vdp_ready:
	ld	a, #2
	di
	out	(0x99), a
	ld	a, #(0x80 | 15)
	out	(0x99), a
	in	a, (0x99)
	rra
	ld	a, #0
	out	(0x99), a
	ld	a, #(0x80 | 15)
	ei
	out	(0x99), a
	jp	c, wait_vdp_ready
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1335: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1339: void VDP_CommandSetupR32()
;	---------------------------------
; Function VDP_CommandSetupR32
; ---------------------------------
_VDP_CommandSetupR32::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1341: VDP_CommandWait();
	call	_VDP_CommandWait
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1342: ASM_REG_WRITE_INC(g_VDP_Command, 32, 15);
	ld a, #(32) 
	di 
	out (0x99), a 
	ld a, #((0x80 | 17)) 
	ei 
	out (0x99), a 
	ld hl, #(_g_VDP_Command) 
	ld c, #(0x9B) 
	di 
	.rept 15 -1 
	outi 
	.endm 
	ei 
	outi ; 'ei' included 
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1343: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1347: void VDP_CommandSetupR36()
;	---------------------------------
; Function VDP_CommandSetupR36
; ---------------------------------
_VDP_CommandSetupR36::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1349: VDP_CommandWait();
	call	_VDP_CommandWait
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1350: ASM_REG_WRITE_INC(g_VDP_Command + 4, 36, 11);
	ld a, #(36) 
	di 
	out (0x99), a 
	ld a, #((0x80 | 17)) 
	ei 
	out (0x99), a 
	ld hl, #(_g_VDP_Command + 4) 
	ld c, #(0x9B) 
	di 
	.rept 11 -1 
	outi 
	.endm 
	ei 
	outi ; 'ei' included 
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1351: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1357: void VDP_CommandWriteLoop(const u8* addr) __FASTCALL __PRESERVES(d, e, iyl, iyh)
;	---------------------------------
; Function VDP_CommandWriteLoop
; ---------------------------------
_VDP_CommandWriteLoop::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1395: __endasm;
	ld	a, #(0x80 | 44)
	di
	out	(0x99), a
	ld	a, #(0x80 | 17)
	out	(0x99), a
	ld	a, #2
	out	(0x99), a
	ld	a, #(0x80 | 15)
	out	(0x99), a
	inc	hl
	ld	c, #0x9B
	 write_loop:
	in	a, (0x99)
	rra
	jp	nc, write_finished
	outi
	jp	write_loop
	 write_finished:
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 15)
	ei
	out	(0x99), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1396: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1455: void VDP_Initialize()
;	---------------------------------
; Function VDP_Initialize
; ---------------------------------
_VDP_Initialize::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1463: __endasm;
	ld	hl, #0xF3DF
	ld	de, #_g_VDP_REGSAV+0
	ld	bc, #8
	ldir
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1472: __endasm;
	ld	hl, #0xFFE7
	ld	de, #_g_VDP_REGSAV+8
	ld	bc, #16
	ldir
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1486: g_VDPInitilized = TRUE;
	ld	hl, #_g_VDPInitilized
	ld	(hl), #0x01
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1488: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1496: void VDP_SetMode(const u8 mode)
;	---------------------------------
; Function VDP_SetMode
; ---------------------------------
_VDP_SetMode::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1499: if (!g_VDPInitilized)
	ld	a, (_g_VDPInitilized+0)
	or	a, a
	jr	NZ, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1500: VDP_Initialize();
	push	bc
	call	_VDP_Initialize
	pop	bc
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1507: g_VDP_Data.Mode = mode;
	ld	hl, #_g_VDP_Data
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1508: switch (mode)
	ld	a, #0x11
	sub	a, c
	jp	C, 00133$
	ld	e, c
	ld	d, #0x00
	ld	hl, #00162$
	add	hl, de
	add	hl, de
	add	hl, de
	jp	(hl)
00162$:
	jp	00103$
	jp	00104$
	jp	00105$
	jp	00106$
	jp	00107$
	jp	00111$
	jp	00113$
	jp	00115$
	jp	00116$
	jp	00117$
	jp	00113$
	jp	00115$
	jp	00133$
	jp	00133$
	jp	00133$
	jp	00111$
	jp	00111$
	jp	00111$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1515: case VDP_MODE_TEXT1:
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1516: VDP_SetModeText1();
	push	bc
	call	_VDP_SetModeText1
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1517: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1522: case VDP_MODE_MULTICOLOR:
00104$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1523: VDP_SetModeMultiColor();
	push	bc
	call	_VDP_SetModeMultiColor
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1524: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1529: case VDP_MODE_GRAPHIC1:
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1530: VDP_SetModeGraphic1();
	push	bc
	call	_VDP_SetModeGraphic1
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1531: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1536: case VDP_MODE_GRAPHIC2:
00106$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1537: VDP_SetModeGraphic2();
	push	bc
	call	_VDP_SetModeGraphic2
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1538: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1547: case VDP_MODE_TEXT2:
00107$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1548: VDP_SetModeText2();
	push	bc
	call	_VDP_SetModeText2
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1549: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1559: case VDP_MODE_GRAPHIC3:
00111$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1560: VDP_SetModeGraphic3();
	push	bc
	call	_VDP_SetModeGraphic3
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1561: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1568: case VDP_MODE_SCREEN9_40: // @todo Further setting needed?
00113$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1569: VDP_SetModeGraphic4();
	push	bc
	call	_VDP_SetModeGraphic4
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1570: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1576: case VDP_MODE_SCREEN9_80: // @todo Further setting needed?
00115$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1577: VDP_SetModeGraphic5();
	push	bc
	call	_VDP_SetModeGraphic5
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1578: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1583: case VDP_MODE_GRAPHIC6:
00116$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1584: VDP_SetModeGraphic6();
	push	bc
	call	_VDP_SetModeGraphic6
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1585: break;
	jp	00133$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1590: case VDP_MODE_GRAPHIC7:		
00117$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1591: VDP_SetModeGraphic7();
	push	bc
	call	_VDP_SetModeGraphic7
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:710: inline void VDP_EnableDisplay(bool enable) { VDP_RegWriteBakMask(1, (u8)~R01_BL, enable ? R01_BL : 0); }
00133$:
	push	bc
	ld	a, #0x40
	push	af
	inc	sp
	ld	l, #0xbf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
	ld	a, #0x20
	push	af
	inc	sp
	ld	l, #0xdf
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x01
	call	_VDP_RegWriteBakMask
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xfd
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x08
	call	_VDP_RegWriteBakMask
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:499: return mode >= VDP_MODE_GRAPHIC4;
	ld	a, c
	sub	a, #0x06
	ld	a, #0x00
	rla
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1635: if (VDP_IsBitmapMode(mode)) // Activate 212 lines for bitmap mode
	xor	a,#0x01
	jr	Z, 00120$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:839: inline void VDP_SetLineCount(u8 lines) { VDP_RegWriteBakMask(9, (u8)~R09_LN, lines); }
	ld	a, #0x80
	push	af
	inc	sp
	ld	l, #0x7f
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_VDP_RegWriteBakMask
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1636: VDP_SetLineCount(VDP_LINE_212);
	jp	00138$
00120$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:839: inline void VDP_SetLineCount(u8 lines) { VDP_RegWriteBakMask(9, (u8)~R09_LN, lines); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0x7f
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_VDP_RegWriteBakMask
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:854: inline void VDP_SetInterlace(bool enable) { VDP_RegWriteBakMask(9, (u8)~R09_IL, enable ? R09_IL : 0); }
00138$:
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xf7
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_VDP_RegWriteBakMask
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.h:846: inline void VDP_SetPageAlternance(bool enable) { VDP_RegWriteBakMask(9, (u8)~R09_EO, enable ? R09_EO : 0); }
	xor	a, a
	push	af
	inc	sp
	ld	l, #0xfb
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x09
	call	_VDP_RegWriteBakMask
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1640: VDP_SetPageAlternance(FALSE);
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1643: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1649: u8 VDP_GetVersion() __NAKED
;	---------------------------------
; Function VDP_GetVersion
; ---------------------------------
_VDP_GetVersion::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1718: __endasm;
	 VDP_GetVersionAsm:
	call	VDP_IsTMS9918A
	ret	z
	ld	a, #1
	di
	out	(0x99), a
	ld	a, #(0x80 | 15)
	out	(0x99), a
	in	a, (0x99)
	and	#0b00111110
	rrca
	ex	af, af'					; '
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 15)
	ei
	out	(0x99), a
	ex	af, af'					; '
	ret	nz
	inc	a
	ret
	 VDP_IsTMS9918A:
	xor	a
	di
	out	(0x99), a
	ld	a, #(0x80 | 15)
	out	(0x99), a
	in	a, (0x99)
	 VDP_IsTMS9918A_Wait:
	in	a,(0x99)
	and	a
	jp	p, VDP_IsTMS9918A_Wait
	ld	a, #2
	out	(0x99), a
	ld	a, #(0x80 | 15)
	out	(0x99), a
	in	a, (0x99)
	ex	af, af'					; '
	xor	a
	out	(0x99), a
	ld	a, #(0x80 | 15)
	out	(0x99), a
	ld	a, (0xF3E6)
	out	(0x99), a
	ld	a, #(0x80 | 7)
	ei
	out	(0x99), a
	ex	af, af'					; '
	and	#0b01000000
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1719: }
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1727: void VDP_RegWrite(u8 reg, u8 value) __PRESERVES(b, c, d, e, iyl, iyh)
;	---------------------------------
; Function VDP_RegWrite
; ---------------------------------
_VDP_RegWrite::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1741: __endasm;
	ld	h, a
	ld	a, l
	di
	out	(0x99), a
	ld	a, h
	add	#0x80
	ei
	out	(0x99), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1742: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1750: void VDP_RegWriteBak(u8 reg, u8 value) __PRESERVES(d, e, iyl, iyh)
;	---------------------------------
; Function VDP_RegWriteBak
; ---------------------------------
_VDP_RegWriteBak::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1770: __endasm;
	ld	c, a
	ld	a, l
	ld	b, #0
	ld	hl, #_g_VDP_REGSAV
	add	hl, bc
	ld	(hl), a
	di
	out	(0x99), a
	ld	a, c
	add	#0x80
	ei
	out	(0x99), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1771: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1780: void VDP_RegWriteBakMask(u8 reg, u8 mask, u8 flag)
;	---------------------------------
; Function VDP_RegWriteBakMask
; ---------------------------------
_VDP_RegWriteBakMask::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	c, a
	ld	e, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1782: u8 value = g_VDP_REGSAV[reg];
	ld	hl, #_g_VDP_REGSAV+0
	ld	b, #0x00
	add	hl, bc
	ld	a, (hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1783: value &= mask;
	and	a, e
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1784: value |= flag;
	or	a, 4 (ix)
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1785: VDP_RegWriteBak(reg, value);
	ld	a, c
	call	_VDP_RegWriteBak
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1786: }
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1790: u8 VDP_ReadDefaultStatus() __NAKED __PRESERVES(b, c, d, e, h, l, iyl, iyh)
;	---------------------------------
; Function VDP_ReadDefaultStatus
; ---------------------------------
_VDP_ReadDefaultStatus::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1795: __endasm;
	in	a, (0x99)
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1796: }
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1802: void VDP_SetPage(u8 page)
;	---------------------------------
; Function VDP_SetPage
; ---------------------------------
_VDP_SetPage::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1804: u8 reg = page << 5;
	ld	c, a
	rrca
	rrca
	rrca
	and	a, #0xe0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1805: reg |= 0b11111;
	or	a, #0x1f
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1806: VDP_RegWriteBak(2, reg);
	ld	a, #0x02
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1807: }
	jp	_VDP_RegWriteBak
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1813: void VDP_SetLayoutTable(VADDR addr)
;	---------------------------------
; Function VDP_SetLayoutTable
; ---------------------------------
_VDP_SetLayoutTable::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	inc	sp
	inc	sp
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1815: g_ScreenLayoutLow = (u16)addr;
	pop	hl
	push	hl
	ld	(_g_ScreenLayoutLow), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1818: reg = (u8)(addr >> 10);
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	b, #0x02
00134$:
	srl	l
	rr	d
	rr	e
	djnz	00134$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1820: switch (g_VDP_Data.Mode)
	ld	a, (#_g_VDP_Data + 0)
	cp	a, #0x04
	jr	Z, 00101$
	cp	a, #0x06
	jr	Z, 00105$
	cp	a, #0x07
	jr	Z, 00105$
	cp	a, #0x08
	jr	Z, 00103$
	sub	a, #0x09
	jr	Z, 00103$
	jp	00106$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1822: case VDP_MODE_TEXT2:
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1823: reg |= 0b11;
	ld	a, e
	or	a, #0x03
	ld	e, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1824: break;
	jp	00106$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1826: case VDP_MODE_GRAPHIC7:
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1832: reg >>= 1;
	srl	e
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1834: case VDP_MODE_GRAPHIC5:
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1835: reg |= 0b11111;
	ld	a, e
	or	a, #0x1f
	ld	e, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1837: };	
00106$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1839: VDP_RegWrite(2, reg);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x02
	call	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1842: g_ScreenLayoutHigh = addr >> 16;
	ld	a, -2 (ix)
	ld	(_g_ScreenLayoutHigh+0), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1844: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1848: void VDP_SetColorTable(VADDR addr)
;	---------------------------------
; Function VDP_SetColorTable
; ---------------------------------
_VDP_SetColorTable::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	inc	sp
	inc	sp
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1850: g_ScreenColorLow = (u16)addr;
	pop	hl
	push	hl
	ld	(_g_ScreenColorLow), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1853: reg = (u8)(addr >> 6);
	pop	bc
	push	bc
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
	srl	b
	rr	c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1854: switch (g_VDP_Data.Mode)
	ld	a, (#_g_VDP_Data + 0)
	cp	a, #0x03
	jr	Z, 00106$
	cp	a, #0x04
	jr	Z, 00101$
	cp	a, #0x05
	jr	Z, 00106$
	cp	a, #0x0f
	jr	Z, 00102$
	cp	a, #0x10
	jr	Z, 00103$
	sub	a, #0x11
	jr	Z, 00104$
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1857: case VDP_MODE_TEXT2:
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1858: reg |= 0b111;
	ld	a, c
	or	a, #0x07
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1859: break;
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1861: case VDP_MODE_GRAPHIC3_MIRROR_0:
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1862: reg |= 0b0011111;
	ld	a, c
	or	a, #0x1f
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1863: break;
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1864: case VDP_MODE_GRAPHIC3_MIRROR_01:
00103$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1865: reg |= 0b0111111;
	ld	a, c
	or	a, #0x3f
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1866: break;
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1867: case VDP_MODE_GRAPHIC3_MIRROR_02:
00104$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1868: reg |= 0b1011111;
	ld	a, c
	or	a, #0x5f
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1869: break;
	jp	00107$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1873: case VDP_MODE_GRAPHIC2:
00106$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1874: reg |= 0b1111111;
	ld	a, c
	or	a, #0x7f
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1876: };	
00107$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1877: VDP_RegWrite(3, reg);
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x03
	call	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1880: reg = (u8)(addr >> 14);
	ld	l, -3 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	c, -2 (ix)
	ld	e, -1 (ix)
	ld	b, #0x06
00146$:
	srl	e
	rr	c
	rr	l
	djnz	00146$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1881: VDP_RegWrite(10, reg);
	ld	a, #0x0a
	call	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1883: g_ScreenColorHigh = addr >> 16;
	ld	a, -2 (ix)
	ld	(_g_ScreenColorHigh+0), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1885: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1889: void VDP_SetPatternTable(VADDR addr)
;	---------------------------------
; Function VDP_SetPatternTable
; ---------------------------------
_VDP_SetPatternTable::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	inc	sp
	inc	sp
	push	de
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1891: g_ScreenPatternLow = (u16)addr;
	pop	hl
	push	hl
	ld	(_g_ScreenPatternLow), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1894: reg = (u8)(addr >> 11);
	ld	e, -3 (ix)
	ld	d, -2 (ix)
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
;	spillPairReg hl
	ld	b, #0x03
00128$:
	srl	l
	rr	d
	rr	e
	djnz	00128$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1895: switch (g_VDP_Data.Mode)
	ld	a, (#_g_VDP_Data + 0)
	cp	a, #0x03
	jr	Z, 00104$
	cp	a, #0x05
	jr	Z, 00104$
	cp	a, #0x10
	jr	Z, 00101$
	sub	a, #0x11
	jr	Z, 00102$
	jp	00105$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1899: case VDP_MODE_GRAPHIC3_MIRROR_01:
00101$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1900: reg |= 0b01;
	set	0, e
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1901: break;
	jp	00105$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1902: case VDP_MODE_GRAPHIC3_MIRROR_02:
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1903: reg |= 0b10;
	set	1, e
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1904: break;
	jp	00105$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1908: case VDP_MODE_GRAPHIC2:
00104$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1909: reg |= 0b11;
	ld	a, e
	or	a, #0x03
	ld	e, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1910: };
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1911: VDP_RegWrite(4, reg);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x04
	call	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1914: g_ScreenPatternHigh = addr >> 16;
	ld	a, -2 (ix)
	ld	(_g_ScreenPatternHigh+0), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1916: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1930: void VDP_SetSpriteAttributeTable(VADDR addr)
;	---------------------------------
; Function VDP_SetSpriteAttributeTable
; ---------------------------------
_VDP_SetSpriteAttributeTable::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1932: g_SpriteAttributeLow = (u16)addr;
	ld	(_g_SpriteAttributeLow), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1935: reg = (u8)(addr >> 7);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, d
;	spillPairReg hl
;	spillPairReg hl
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	srl	h
	rr	l
	ld	-1 (ix), l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1937: switch (g_VDP_Data.Mode)
	ld	a, (#_g_VDP_Data + 0)
	cp	a, #0x05
	jr	Z, 00108$
	cp	a, #0x06
	jr	Z, 00108$
	cp	a, #0x07
	jr	Z, 00108$
	cp	a, #0x08
	jr	Z, 00108$
	cp	a, #0x09
	jr	Z, 00108$
	cp	a, #0x0f
	jr	Z, 00108$
	cp	a, #0x10
	jr	Z, 00108$
	sub	a, #0x11
	jr	NZ, 00109$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1952: case VDP_MODE_GRAPHIC3_MIRROR_02:
00108$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1954: reg |= 0b111;
	ld	a, -1 (ix)
	or	a, #0x07
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1956: };
00109$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1958: VDP_RegWrite(5, reg);
	ld	l, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	a, #0x05
	call	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1961: reg = (u8)(addr >> 15);
	ld	-4 (ix), d
	ld	-3 (ix), c
	ld	-2 (ix), b
	ld	-1 (ix), #0x00
	ld	a, #0x07
00156$:
	srl	-2 (ix)
	rr	-3 (ix)
	rr	-4 (ix)
	dec	a
	jr	NZ, 00156$
	ld	l, -4 (ix)
;	spillPairReg hl
;	spillPairReg hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1962: VDP_RegWrite(11, reg);
	ld	a, #0x0b
	call	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1964: g_SpriteAttributeHigh = addr >> 16;
	ld	hl, #_g_SpriteAttributeHigh
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1967: addr -= 0x200;
;	spillPairReg hl
;	spillPairReg hl
	ld	l, e
	ld	a,d
	add	a,#0xfe
	ld	h, a
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
	adc	a, #0xff
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1968: g_SpriteColorLow = (u16)addr;
	ld	(_g_SpriteColorLow), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1970: g_SpriteColorHigh = addr >> 16;
	ld	hl, #_g_SpriteColorHigh
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1972: }
	ld	sp, ix
	pop	ix
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1978: void VDP_SetSpritePatternTable(VADDR addr)
;	---------------------------------
; Function VDP_SetSpritePatternTable
; ---------------------------------
_VDP_SetSpritePatternTable::
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1980: g_SpritePatternLow  = (u16)addr;
	ld	(_g_SpritePatternLow), de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1982: g_SpritePatternHigh = addr >> 16;
	ld	iy, #_g_SpritePatternHigh
	ld	0 (iy), l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1985: u8 reg = (u8)(addr >> 11);
	ld	e, h
	ld	h, l
;	spillPairReg hl
;	spillPairReg hl
	ld	l, d
;	spillPairReg hl
;	spillPairReg hl
	ld	d, #0x00
	ld	b, #0x03
00103$:
	srl	e
	rr	h
	rr	l
	djnz	00103$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1986: VDP_RegWrite(6, reg);
	ld	a, #0x06
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1988: }
	jp	_VDP_RegWrite
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1992: void VDP_LoadSpritePattern(const u8* addr, u8 index, u8 count)
;	---------------------------------
; Function VDP_LoadSpritePattern
; ---------------------------------
_VDP_LoadSpritePattern::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1994: u16 low = g_SpritePatternLow;
	ld	de, (_g_SpritePatternLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1995: low += (index * 8);
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1996: VDP_WriteVRAM(addr, low, g_SpritePatternHigh, count * 8);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	push	hl
	ld	a, (_g_SpritePatternHigh+0)
	push	af
	inc	sp
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:1997: }
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2001: void VDP_SetSpriteSM1(u8 index, u8 x, u8 y, u8 shape, u8 color)
;	---------------------------------
; Function VDP_SetSpriteSM1
; ---------------------------------
_VDP_SetSpriteSM1::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	e, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2003: g_VDP_Sprite.Y = y;				// Y coordinate on screen (all lower priority sprite will be disable if equal to 216 or 0xD0)
	ld	hl, #_g_VDP_Sprite
	ld	a, 4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2004: g_VDP_Sprite.X = x;				// X coordinate of the sprite
	ld	hl, #(_g_VDP_Sprite + 1)
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2005: g_VDP_Sprite.Pattern = shape;	// Pattern index
	ld	hl, #(_g_VDP_Sprite + 2)
	ld	a, 5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2006: g_VDP_Sprite.Color = color;		// Color index (Sprite Mode 1 only) + Early clock
	ld	hl, #(_g_VDP_Sprite + 3)
	ld	a, 6 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2008: u16 low = g_SpriteAttributeLow;
	ld	bc, (_g_SpriteAttributeLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2009: low += (index * 4);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2010: VDP_WriteVRAM((u8*)&g_VDP_Sprite, low, g_SpriteAttributeHigh, 4);
	ld	hl, #0x0004
	push	hl
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	hl, #_g_VDP_Sprite
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2011: }
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2015: void VDP_SetSprite(u8 index, u8 x, u8 y, u8 shape)
;	---------------------------------
; Function VDP_SetSprite
; ---------------------------------
_VDP_SetSprite::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	e, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2017: g_VDP_Sprite.Y = y;				// Y coordinate on screen (all lower priority sprite will be disable if equal to 216 or 0xD0)
	ld	hl, #_g_VDP_Sprite
	ld	a, 4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2018: g_VDP_Sprite.X = x;				// X coordinate of the sprite
	ld	hl, #(_g_VDP_Sprite + 1)
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2019: g_VDP_Sprite.Pattern = shape;	// Pattern index
	ld	hl, #(_g_VDP_Sprite + 2)
	ld	a, 5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2021: u16 low = g_SpriteAttributeLow;
	ld	bc, (_g_SpriteAttributeLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2022: low += (index * 4);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2023: VDP_WriteVRAM((u8*)&g_VDP_Sprite, low, g_SpriteAttributeHigh, 3);
	ld	hl, #0x0003
	push	hl
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	hl, #_g_VDP_Sprite
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2024: }
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2029: void VDP_SetSpriteExMultiColor(u8 index, u8 x, u8 y, u8 shape, const u8* ram)
;	---------------------------------
; Function VDP_SetSpriteExMultiColor
; ---------------------------------
_VDP_SetSpriteExMultiColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
	ld	-1 (ix), l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2031: u16 col = g_SpriteColorLow;
	ld	de, (_g_SpriteColorLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2032: col += (index * 16);
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2033: VDP_WriteVRAM(ram, col, g_SpriteColorHigh, VDP_SPRITE_COLORS);
	push	bc
	ex	de, hl
	ld	hl, #0x0010
	push	hl
	ld	a, (_g_SpriteColorHigh+0)
	push	af
	inc	sp
	ld	l, 6 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, 7 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2035: g_VDP_Sprite.X = x;				// Y coordinate on screen (all lower priority sprite will be disable if equal to 216 or 0xD0)
	ld	hl, #(_g_VDP_Sprite + 1)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2036: g_VDP_Sprite.Y = y;				// X coordinate of the sprite
	ld	hl, #_g_VDP_Sprite
	ld	a, 4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2037: g_VDP_Sprite.Pattern = shape;	// Pattern index
	ld	hl, #(_g_VDP_Sprite + 2)
	ld	a, 5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2038: u16 attr = g_SpriteAttributeLow;
	ld	de, (_g_SpriteAttributeLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2039: attr += (index * 4);
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2040: VDP_WriteVRAM((u8*)&g_VDP_Sprite, attr, g_SpriteAttributeHigh, 3);
	ld	hl, #0x0003
	push	hl
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	hl, #_g_VDP_Sprite
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2041: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2045: void VDP_SetSpriteExUniColor(u8 index, u8 x, u8 y, u8 shape, u8 color)
;	---------------------------------
; Function VDP_SetSpriteExUniColor
; ---------------------------------
_VDP_SetSpriteExUniColor::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
	ld	-1 (ix), l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2047: u16 col = g_SpriteColorLow;
	ld	de, (_g_SpriteColorLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2048: col += (index * 16);
	ld	b, #0x00
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2049: VDP_FillVRAM(color, col, g_SpriteColorHigh, VDP_SPRITE_COLORS);
	push	bc
	ex	de, hl
	ld	hl, #0x0010
	push	hl
	ld	a, (_g_SpriteColorHigh+0)
	push	af
	inc	sp
	ld	a, 6 (ix)
	call	_VDP_FillVRAM_128K
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2051: g_VDP_Sprite.X = x;				// Y coordinate on screen (all lower priority sprite will be disable if equal to 216 or 0xD0)
	ld	hl, #(_g_VDP_Sprite + 1)
	ld	a, -1 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2052: g_VDP_Sprite.Y = y;				// X coordinate of the sprite
	ld	hl, #_g_VDP_Sprite
	ld	a, 4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2053: g_VDP_Sprite.Pattern = shape;	// Pattern index
	ld	hl, #(_g_VDP_Sprite + 2)
	ld	a, 5 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2054: u16 attr = g_SpriteAttributeLow;
	ld	de, (_g_SpriteAttributeLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2055: attr += (index * 4);
	ld	l, c
	ld	h, b
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2056: VDP_WriteVRAM((u8*)&g_VDP_Sprite, attr, g_SpriteAttributeHigh, 3);
	ld	hl, #0x0003
	push	hl
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	hl, #_g_VDP_Sprite
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2057: }
	inc	sp
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2062: void VDP_SetSpritePosition(u8 index, u8 x, u8 y)
;	---------------------------------
; Function VDP_SetSpritePosition
; ---------------------------------
_VDP_SetSpritePosition::
	push	ix
	ld	ix,#0
	add	ix,sp
	ld	e, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2064: g_VDP_Sprite.Y = y;				// Y coordinate on screen (all lower priority sprite will be disable if equal to 216 or 0xD0)
	ld	hl, #_g_VDP_Sprite
	ld	a, 4 (ix)
	ld	(hl), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2065: g_VDP_Sprite.X = x;				// X coordinate of the sprite
	ld	hl, #(_g_VDP_Sprite + 1)
	ld	(hl), c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2067: u16 low = g_SpriteAttributeLow;
	ld	bc, (_g_SpriteAttributeLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2068: low += (index * 4);
	ld	l, e
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, bc
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2069: VDP_WriteVRAM((u8*)&g_VDP_Sprite, low, g_SpriteAttributeHigh, 2);
	ld	hl, #0x0002
	push	hl
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	hl, #_g_VDP_Sprite
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2070: }
	pop	ix
	pop	hl
	inc	sp
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2074: void VDP_SetSpritePositionX(u8 index, u8 x)
;	---------------------------------
; Function VDP_SetSpritePositionX
; ---------------------------------
_VDP_SetSpritePositionX::
	ld	b, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2076: u16 low = g_SpriteAttributeLow;
	ld	de, (_g_SpriteAttributeLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2077: low += (index * 4);
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2078: VDP_Poke(x, ++low, g_SpriteAttributeHigh);
	inc	de
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	a, c
	call	_VDP_Poke_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2079: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2083: void VDP_SetSpritePositionY(u8 index, u8 y)
;	---------------------------------
; Function VDP_SetSpritePositionY
; ---------------------------------
_VDP_SetSpritePositionY::
	ld	b, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2085: u16 low = g_SpriteAttributeLow;
	ld	de, (_g_SpriteAttributeLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2086: low += (index * 4);
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2087: VDP_Poke(y, low, g_SpriteAttributeHigh);
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	a, c
	call	_VDP_Poke_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2088: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2092: void VDP_SetSpritePattern(u8 index, u8 shape)
;	---------------------------------
; Function VDP_SetSpritePattern
; ---------------------------------
_VDP_SetSpritePattern::
	ld	b, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2094: u16 low = g_SpriteAttributeLow + 2;
	ld	de, (_g_SpriteAttributeLow)
	inc	de
	inc	de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2095: low += (index * 4);
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2096: VDP_Poke(shape, low, g_SpriteAttributeHigh);
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	a, c
	call	_VDP_Poke_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2097: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2101: void VDP_SetSpriteColorSM1(u8 index, u8 color)
;	---------------------------------
; Function VDP_SetSpriteColorSM1
; ---------------------------------
_VDP_SetSpriteColorSM1::
	ld	b, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2103: u16 low = g_SpriteAttributeLow + 3;
	ld	de, (_g_SpriteAttributeLow)
	inc	de
	inc	de
	inc	de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2104: low += (index * 4);
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2105: VDP_Poke(color, low, g_SpriteAttributeHigh);
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	a, c
	call	_VDP_Poke_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2106: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2111: void VDP_SetSpriteUniColor(u8 index, u8 color)
;	---------------------------------
; Function VDP_SetSpriteUniColor
; ---------------------------------
_VDP_SetSpriteUniColor::
	ld	b, a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2113: u16 col = g_SpriteColorLow;
	ld	de, (_g_SpriteColorLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2114: col += (index * 16);
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2115: VDP_FillVRAM(color, col, g_SpriteColorHigh, VDP_SPRITE_COLORS);
	ld	hl, #0x0010
	push	hl
	ld	a, (_g_SpriteColorHigh+0)
	push	af
	inc	sp
	ld	a, c
	call	_VDP_FillVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2116: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2120: void VDP_SetSpriteMultiColor(u8 index, const u8* ram)
;	---------------------------------
; Function VDP_SetSpriteMultiColor
; ---------------------------------
_VDP_SetSpriteMultiColor::
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, e
	ld	b, d
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2122: u16 col = g_SpriteColorLow;
	ld	de, (_g_SpriteColorLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2123: col += (index * 16);
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2124: VDP_WriteVRAM(ram, col, g_SpriteColorHigh, VDP_SPRITE_COLORS);	
	ld	hl, #0x0010
	push	hl
	ld	a, (_g_SpriteColorHigh+0)
	push	af
	inc	sp
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2125: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2129: void VDP_SetSpriteData(u8 index, const u8* data)
;	---------------------------------
; Function VDP_SetSpriteData
; ---------------------------------
_VDP_SetSpriteData::
	ld	l, a
;	spillPairReg hl
;	spillPairReg hl
	ld	c, e
	ld	b, d
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2131: u16 low = g_SpriteAttributeLow;
	ld	de, (_g_SpriteAttributeLow)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2132: low += (index * 4);
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2133: VDP_WriteVRAM(data, low, g_SpriteAttributeHigh, 3);
	ld	hl, #0x0003
	push	hl
	ld	a, (_g_SpriteAttributeHigh+0)
	push	af
	inc	sp
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2134: }
	ret
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2139: void VDP_DisableSpritesFrom(u8 index)
;	---------------------------------
; Function VDP_DisableSpritesFrom
; ---------------------------------
_VDP_DisableSpritesFrom::
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2141: u8 y = VDP_SPRITE_DISABLE_SM1;
	ld	b, #0xd0
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2143: if (g_VDP_Data.Mode >= VDP_MODE_MSX2) // MSX2 modes
	ld	a, (#_g_VDP_Data + 0)
	sub	a, #0x04
	jr	C, 00102$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2144: y = VDP_SPRITE_DISABLE_SM2;
	ld	b, #0xd8
00102$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2146: VDP_SetSpritePositionY(index, y);
	ld	l, b
;	spillPairReg hl
;	spillPairReg hl
	ld	a, c
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2147: }
	jp	_VDP_SetSpritePositionY
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2193: void VDP_SetBlinkTile(u8 x, u8 y)
;	---------------------------------
; Function VDP_SetBlinkTile
; ---------------------------------
_VDP_SetBlinkTile::
	push	ix
	ld	ix,#0
	add	ix,sp
	dec	sp
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2195: u16 addr = g_ScreenColorLow + (y * 10) + (x / 8);
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	ld	e, l
	ld	d, h
	add	hl, hl
	add	hl, hl
	add	hl, de
	add	hl, hl
	ld	de, (_g_ScreenColorLow)
	add	hl, de
	ex	de, hl
	ld	b, #0x00
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	bit	7, b
	jr	Z, 00103$
	ld	hl, #0x0007
	add	hl, bc
00103$:
	sra	h
	rr	l
	sra	h
	rr	l
	sra	h
	rr	l
	add	hl, de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2196: u8 chunk = VDP_Peek(addr, g_ScreenColorHigh);
	push	bc
	ex	de, hl
	push	de
	ld	a, (_g_ScreenColorHigh+0)
	push	af
	inc	sp
;	spillPairReg hl
;	spillPairReg hl
	ex	de,hl
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_Peek_128K
	pop	de
	pop	bc
	ld	-1 (ix), a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2197: chunk |= g_VDPBitValue[7 - (x % 8)];
	ld	hl, #_g_VDPBitValue+0
	ld	a, c
	and	a, #0x07
	ld	c, a
	ld	a, #0x07
	sub	a, c
	ld	c, a
	rlca
	sbc	a, a
	ld	b, a
	add	hl, bc
	ld	a, (hl)
	or	a, -1 (ix)
	ld	c, a
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2198: VDP_Poke(chunk, addr, g_ScreenColorHigh);
	ld	a, (_g_ScreenColorHigh+0)
	push	af
	inc	sp
	ld	a, c
	call	_VDP_Poke_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2199: }
	inc	sp
	pop	ix
	ret
_g_VDPBitValue:
	.db #0x01	; 1
	.db #0x02	; 2
	.db #0x04	; 4
	.db #0x08	; 8
	.db #0x10	; 16
	.db #0x20	; 32
	.db #0x40	; 64
	.db #0x80	; 128
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2213: void VDP_LoadPattern_GM2(const u8* src, u8 count, u8 offset)
;	---------------------------------
; Function VDP_LoadPattern_GM2
; ---------------------------------
_VDP_LoadPattern_GM2::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2215: u16 cnt = count == 0 ? 256 * 8 : count * 8;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00103$
	ld	hl, #0x0800
	jp	00104$
00103$:
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
00104$:
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2216: u16 dst = g_ScreenPatternLow + (offset * 8);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	iy, (_g_ScreenPatternLow)
	ex	de, hl
	add	iy, de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2217: VDP_WriteVRAM(src, dst, g_ScreenPatternHigh, cnt);
	push	bc
	push	iy
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, (_g_ScreenPatternHigh+0)
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
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2218: dst += 0x800;
	ld	de, #0x0800
	add	iy, de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2219: VDP_WriteVRAM(src, dst, g_ScreenPatternHigh, cnt);
	push	bc
	push	iy
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, (_g_ScreenPatternHigh+0)
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
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2220: dst += 0x800;
	push	iy
	pop	de
	ld	hl, #0x0800
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2221: VDP_WriteVRAM(src, dst, g_ScreenPatternHigh, cnt);
	pop	hl
	push	hl
	push	hl
	ld	a, (_g_ScreenPatternHigh+0)
	push	af
	inc	sp
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2222: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2226: void VDP_LoadColor_GM2(const u8* src, u8 count, u8 offset)
;	---------------------------------
; Function VDP_LoadColor_GM2
; ---------------------------------
_VDP_LoadColor_GM2::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2228: u16 cnt = count == 0 ? 256 * 8 : count * 8;
	ld	a, 4 (ix)
	or	a, a
	jr	NZ, 00103$
	ld	hl, #0x0800
	jp	00104$
00103$:
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
00104$:
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2229: u16 dst = g_ScreenColorLow + (offset * 8);
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	iy, (_g_ScreenColorLow)
	ex	de, hl
	add	iy, de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2230: VDP_WriteVRAM(src, dst, g_ScreenColorHigh, cnt);
	push	bc
	push	iy
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, (_g_ScreenColorHigh+0)
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
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2231: dst += 0x800;
	ld	de, #0x0800
	add	iy, de
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2232: VDP_WriteVRAM(src, dst, g_ScreenColorHigh, cnt);
	push	bc
	push	iy
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	push	hl
	ld	a, (_g_ScreenColorHigh+0)
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
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2233: dst += 0x800;
	push	iy
	pop	de
	ld	hl, #0x0800
	add	hl, de
	ex	de, hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2234: VDP_WriteVRAM(src, dst, g_ScreenColorHigh, cnt);
	pop	hl
	push	hl
	push	hl
	ld	a, (_g_ScreenColorHigh+0)
	push	af
	inc	sp
	ld	l, c
;	spillPairReg hl
;	spillPairReg hl
	ld	h, b
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2235: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2239: void VDP_WriteLayout_GM2(const u8* src, u8 dx, u8 dy, u8 nx, u8 ny)
;	---------------------------------
; Function VDP_WriteLayout_GM2
; ---------------------------------
_VDP_WriteLayout_GM2::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	push	af
	ld	-2 (ix), l
	ld	-1 (ix), h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2241: u16 dst = g_ScreenLayoutLow + (dy * 32) + dx;
	ld	l, 5 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	bc, (_g_ScreenLayoutLow)
	add	hl, bc
	ld	c, 4 (ix)
	ld	b, #0x00
	add	hl, bc
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2242: for (u8 y = 0; y < ny; ++y)
	ld	c, #0x00
00103$:
	ld	a, c
	sub	a, 7 (ix)
	jr	NC, 00105$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2244: VDP_WriteVRAM(src, dst, g_ScreenLayoutHigh, nx);
	ld	e, 6 (ix)
	ld	d, #0x00
	push	bc
	push	de
	ld	a, (_g_ScreenLayoutHigh+0)
	push	af
	inc	sp
	ld	e, -4 (ix)
	ld	d, -3 (ix)
	ld	l, -2 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, -1 (ix)
;	spillPairReg hl
;	spillPairReg hl
	call	_VDP_WriteVRAM_128K
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2245: src += nx;
	ld	a, -2 (ix)
	add	a, 6 (ix)
	ld	-2 (ix), a
	jr	NC, 00118$
	inc	-1 (ix)
00118$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2246: dst += 32;
	pop	de
	push	de
	ld	hl, #0x0020
	add	hl, de
	ex	(sp), hl
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2242: for (u8 y = 0; y < ny; ++y)
	inc	c
	jp	00103$
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2248: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	pop	af
	jp	(hl)
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2252: void VDP_FillLayout_GM2(u8 value, u8 dx, u8 dy, u8 nx, u8 ny)
;	---------------------------------
; Function VDP_FillLayout_GM2
; ---------------------------------
_VDP_FillLayout_GM2::
	push	ix
	ld	ix,#0
	add	ix,sp
	push	af
	ld	-2 (ix), a
	ld	c, l
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2254: u16 dst = g_ScreenLayoutLow + (dy * 32) + dx;
	ld	l, 4 (ix)
;	spillPairReg hl
;	spillPairReg hl
	ld	h, #0x00
;	spillPairReg hl
;	spillPairReg hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	add	hl, hl
	ld	de, (_g_ScreenLayoutLow)
	add	hl, de
	ld	b, #0x00
	add	hl, bc
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2255: for (u8 y = 0; y < ny; ++y)
	ld	-1 (ix), #0x00
00103$:
	ld	a, -1 (ix)
	sub	a, 6 (ix)
	jr	NC, 00105$
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2257: VDP_FillVRAM(value, dst, g_ScreenLayoutHigh, nx);
	ld	e, 5 (ix)
	ld	d, #0x00
	push	bc
	push	de
	ld	a, (_g_ScreenLayoutHigh+0)
	push	af
	inc	sp
	ld	e, c
	ld	d, b
	ld	a, -2 (ix)
	call	_VDP_FillVRAM_128K
	pop	bc
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2258: dst += 32;
	ld	hl, #0x0020
	add	hl, bc
	ld	c, l
	ld	b, h
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2255: for (u8 y = 0; y < ny; ++y)
	inc	-1 (ix)
	jp	00103$
00105$:
;C:\MSX\MSXgl-1.4.1\engine/src/vdp.c:2260: }
	ld	sp, ix
	pop	ix
	pop	hl
	pop	af
	inc	sp
	jp	(hl)
	.area _CODE
	.area _INITIALIZER
__xinit__g_VDPInitilized:
	.db #0x00	; 0
	.area _CABS (ABS)
