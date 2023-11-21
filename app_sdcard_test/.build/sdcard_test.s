	.text
	.file	"sdcard_test.c"
	.section	.debug_info,"",@progbits
.Lsection_info:
	.section	.debug_abbrev,"",@progbits
.Lsection_abbrev:
	.section	.debug_line,"",@progbits
.Lsection_line:
	.section	.debug_pubnames,"",@progbits
	.section	.debug_pubtypes,"",@progbits
	.section	.debug_str,"MS",@progbits,1
.Linfo_string:
	.section	.debug_loc,"",@progbits
.Lsection_debug_loc:
	.section	.debug_ranges,"",@progbits
.Ldebug_range:
	.file	1 "../src\\sdcard_test.c"
	.file	2 "C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_FatFs/src\\integer.h"
	.file	3 "C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_FatFs/src\\ff.h"
	.file	4 "C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_FatFs/src\\diskio.h"
	.text
	.globl	die
	.align	4
	.type	die,@function
	.cc_top die.function,die
die:
.Lfunc_begin0:
	.loc	1 25 0
	.cfi_startproc
	.issue_mode dual
.Ltmp0:
	.cfi_def_cfa_offset 8
.Ltmp1:
	.cfi_offset 15, 0
.Ltmp2:
	{
		mov r1, r0
		dualentsp 2
	}
.Ltmp3:
	.loc	1 26 5 prologue_end
	ldaw r11, cp[.L.str]
	{
		mov r0, r11
		nop
	}
	bl iprintf
.LBB0_1:
	.loc	1 27 5
.Ltmp4:
	bu .LBB0_1
.Ltmp5:
	.cc_bottom die.function
	.set	die.nstackwords,(iprintf.nstackwords + 2)
	.globl	die.nstackwords
	.set	die.maxcores,iprintf.maxcores $M 1
	.globl	die.maxcores
	.set	die.maxtimers,iprintf.maxtimers $M 0
	.globl	die.maxtimers
	.set	die.maxchanends,iprintf.maxchanends $M 0
	.globl	die.maxchanends
.Ltmp6:
	.size	die, .Ltmp6-die
.Lfunc_end0:
	.cfi_endproc

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI1_0.data,.LCPI1_0
	.align	4
	.type	.LCPI1_0,@object
	.size	.LCPI1_0, 4
.LCPI1_0:
	.long	100000
	.cc_bottom .LCPI1_0.data
	.text
	.globl	sdcard_test
	.align	4
	.type	sdcard_test,@function
	.cc_top sdcard_test.function,sdcard_test
sdcard_test:
.Lfunc_begin1:
	.loc	1 31 0
	.cfi_startproc
	.issue_mode dual
	{
		nop
		dualentsp 28
	}
.Ltmp7:
	.cfi_def_cfa_offset 112
.Ltmp8:
	.cfi_offset 15, 0
	std r5, r4, sp[11]
.Ltmp9:
	.cfi_offset 4, -24
.Ltmp10:
	.cfi_offset 5, -20
	{
		nop
		stw r6, sp[24]
	}
	{
		nop
		stw r7, sp[25]
	}
.Ltmp11:
	.cfi_offset 6, -16
.Ltmp12:
	.cfi_offset 7, -12
	{
		nop
		stw r8, sp[26]
	}
.Ltmp13:
	.cfi_offset 8, -8
.Ltmp14:
	.cfi_offset 9, -4
.Ltmp15:
	{
		ldc r0, 0
		stw r9, sp[27]
	}
	{
		ldc r7, 9
		nop
	}
	ldaw r1, dp[Buff]
	ldc r2, 20480
.LBB1_1:
	.loc	1 36 40 prologue_end
.Ltmp16:
	{
		shr r3, r0, r7
		nop
	}
	.loc	1 36 40
	{
		add r3, r0, r3
		nop
	}
	.loc	1 36 40
	st8 r3, r1[r0]
	.loc	1 36 35
	{
		add r0, r0, 1
		nop
	}
.Ltmp17:
.xtaloop 20480
	# LOOPMARKER 0
	.loc	1 36 5
	{
		eq r3, r0, r2
		nop
	}
	bf r3, .LBB1_1
.Ltmp18:
	{
		ldc r0, 0
		nop
	}
	.loc	1 39 5
	bl f_mount
	.loc	1 45 14
.Ltmp19:
	ldaw r11, cp[.L.str1]
.Ltmp20:
	{
		ldaw r1, sp[18]
		ldaw r2, sp[19]
	}
.Ltmp21:
	{
		mov r0, r11
		nop
	}
	bl f_getfree
.Ltmp22:
	bt r0, .LBB1_22
.Ltmp23:
	{
		nop
		ldw r0, sp[19]
	}
	{
		nop
		ldw r1, r0[7]
	}
	.loc	1 50 9
	{
		sub r1, r1, 2
		ldc r2, 2
	}
	{
		nop
		ld8u r0, r0[r2]
	}
	.loc	1 50 9
	mul r2, r0, r1
.Ltmp24:
	{
		nop
		ldw r1, sp[18]
	}
	.loc	1 52 9
	mul r0, r1, r0
.Ltmp25:
	.loc	1 55 9
	{
		shr r1, r0, 1
		shr r2, r2, 1
	}
.Ltmp26:
	.loc	1 55 9
	ldaw r11, cp[.L.str2]
	{
		mov r0, r11
		nop
	}
.Ltmp27:
	bl iprintf
.Ltmp28:
	.loc	1 60 5
	ldaw r11, cp[.L.str3]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 61 10
	ldaw r11, cp[.L.str4]
	{
		mov r0, r11
		nop
	}
	bl f_unlink
.Ltmp29:
	.loc	1 62 9
	bf r0, .LBB1_4
.Ltmp30:
	.loc	1 63 10
	ldaw r11, cp[.Lstr29]
	bu .LBB1_6
.LBB1_4:
	.loc	1 62 22
	ldaw r11, cp[.Lstr33]
.LBB1_6:
	.loc	1 63 10
	{
		mov r0, r11
		nop
	}
	bl puts
.Ltmp31:
	.loc	1 67 5
	ldaw r11, cp[.L.str7]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 68 10
	ldaw r0, dp[Fil]
	ldaw r11, cp[.L.str4]
	{
		ldc r2, 10
		mov r1, r11
	}
	bl f_open
.Ltmp32:
	bt r0, .LBB1_22
.Ltmp33:
	.loc	1 70 5
	ldaw r11, cp[.Lstr29]
	{
		mov r0, r11
		nop
	}
	bl puts
	.loc	1 72 5
	ldaw r11, cp[.L.str8]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 73 9
	bl get_time
	{
		mov r4, r0
		nop
	}
.Ltmp34:
	.loc	1 74 10
	ldaw r0, dp[Fil]
	ldaw r1, dp[Buff]
	ldc r2, 20480
	{
		ldaw r3, sp[21]
		nop
	}
.Ltmp35:
	bl f_write
.Ltmp36:
	{
		mov r5, r0
		nop
	}
.Ltmp37:
	.loc	1 75 9
	bl get_time
	.loc	1 76 8
.Ltmp38:
	bt r5, .LBB1_23
.Ltmp39:
	.loc	1 75 9
	{
		sub r0, r0, r4
		ldw r1, sp[21]
	}
.Ltmp40:
	ldw r6, cp[.LCPI1_0]
	.loc	1 77 5
	mul r2, r1, r6
	.loc	1 77 5
	divu r2, r2, r0
	.loc	1 77 5
	ldaw r11, cp[.L.str9]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 79 5
	ldaw r11, cp[.L.str10]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 80 10
	ldaw r0, dp[Fil]
	bl f_close
.Ltmp41:
	bt r0, .LBB1_24
.Ltmp42:
	.loc	1 82 5
	ldaw r11, cp[.Lstr29]
	{
		mov r0, r11
		nop
	}
	bl puts
	.loc	1 86 5
	ldaw r11, cp[.L.str11]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 87 10
	ldaw r0, dp[Fil]
	ldaw r11, cp[.L.str4]
	{
		mkmsk r2, 1
		mov r1, r11
	}
	bl f_open
.Ltmp43:
	bt r0, .LBB1_24
.Ltmp44:
	.loc	1 89 5
	ldaw r11, cp[.Lstr29]
	{
		mov r0, r11
		nop
	}
	bl puts
	.loc	1 91 5
	ldaw r11, cp[.L.str12]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 92 9
	bl get_time
	{
		mov r4, r0
		nop
	}
.Ltmp45:
	.loc	1 93 10
	ldaw r0, dp[Fil]
	ldaw r1, dp[Buff]
	ldc r2, 20480
	{
		ldaw r3, sp[20]
		nop
	}
.Ltmp46:
	bl f_read
.Ltmp47:
	{
		mov r5, r0
		nop
	}
.Ltmp48:
	.loc	1 94 9
	bl get_time
	.loc	1 95 8
.Ltmp49:
	bt r5, .LBB1_25
.Ltmp50:
	.loc	1 94 9
	{
		sub r0, r0, r4
		ldw r1, sp[20]
	}
.Ltmp51:
	.loc	1 96 5
	mul r2, r1, r6
	.loc	1 96 5
	divu r2, r2, r0
	.loc	1 96 5
	ldaw r11, cp[.L.str13]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 98 5
	ldaw r11, cp[.L.str10]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	.loc	1 99 10
	ldaw r0, dp[Fil]
	bl f_close
.Ltmp52:
	bt r0, .LBB1_26
.Ltmp53:
	.loc	1 101 5
	ldaw r11, cp[.Lstr29]
	{
		mov r0, r11
		nop
	}
	bl puts
	.loc	1 109 5
	ldaw r0, dp[sdcard_test.lfn]
	{
		nop
		stw r0, sp[7]
	}
	ldc r0, 256
	{
		nop
		stw r0, sp[8]
	}
	.loc	1 113 5
	ldaw r11, cp[.Lstr30]
	{
		mov r0, r11
		nop
	}
	bl puts
	.loc	1 114 10
	ldaw r11, cp[.L.str15]
.Ltmp54:
	{
		ldaw r0, sp[9]
		mov r1, r11
	}
.Ltmp55:
	bl f_opendir
.Ltmp56:
	bt r0, .LBB1_26
.Ltmp57:
	.loc	1 117 5
	ldaw r11, cp[.Lstr31]
	{
		mov r0, r11
		nop
	}
	bl puts
.Ltmp58:
	{
		ldaw r0, sp[9]
		ldaw r4, sp[1]
	}
.Ltmp59:
	.loc	1 120 14
	{
		mov r1, r4
		nop
	}
	bl f_readdir
	bt r0, .LBB1_20
.Ltmp60:
	.loc	1 121 12
	{
		add r5, r4, 9
		ldc r8, 8
	}
	{
		ldc r9, 16
		ldaw r6, sp[9]
	}
.Ltmp61:
.LBB1_15:
	{
		nop
		ld8u r0, r4[r7]
	}
	.loc	1 121 12
	bf r0, .LBB1_21
.Ltmp62:
	.loc	1 123 9
	ldaw r11, cp[.L.str17]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	{
		nop
		ld8u r0, r4[r8]
	}
	.loc	1 124 12
.Ltmp63:
	{
		and r0, r0, r9
		nop
	}
	.loc	1 124 12
	bf r0, .LBB1_18
.Ltmp64:
	.loc	1 124 34
	ldaw r11, cp[.L.str18]
	{
		mov r0, r11
		mov r1, r5
	}
	bl iprintf
	bu .LBB1_19
.Ltmp65:
.LBB1_18:
	{
		nop
		ldw r1, sp[1]
	}
	.loc	1 125 14
	ldaw r11, cp[.L.str19]
	{
		mov r0, r11
		mov r2, r5
	}
	bl iprintf
.Ltmp66:
.LBB1_19:
	.loc	1 120 14
	{
		mov r0, r6
		mov r1, r4
	}
	bl f_readdir
	bf r0, .LBB1_15
.Ltmp67:
.LBB1_20:
	.loc	1 127 12
	bl die
.Ltmp68:
.LBB1_21:
	.loc	1 131 5
	ldaw r11, cp[.Lstr32]
	{
		mov r0, r11
		nop
	}
	bl puts
	{
		ldc r0, 0
		ldw r8, sp[26]
	}
	{
		nop
		ldw r9, sp[27]
	}
	{
		nop
		ldw r6, sp[24]
	}
	{
		nop
		ldw r7, sp[25]
	}
	.loc	1 133 1
	ldd r5, r4, sp[11]
	{
		nop
		retsp 28
	}
	# RETURN_REG_HOLDER
.LBB1_22:
.Ltmp69:
	.loc	1 69 12
	bl die
.Ltmp70:
.LBB1_23:
	.loc	1 76 12
	{
		mov r0, r5
		nop
	}
.Ltmp71:
.LBB1_24:
	.loc	1 88 12
	bl die
.Ltmp72:
.LBB1_25:
	.loc	1 95 12
	{
		mov r0, r5
		nop
	}
.Ltmp73:
.LBB1_26:
	.loc	1 115 12
	bl die
.Ltmp74:
	.cc_bottom sdcard_test.function
	.set	sdcard_test.nstackwords,((f_mount.nstackwords $M f_getfree.nstackwords $M f_unlink.nstackwords $M f_write.nstackwords $M f_open.nstackwords $M f_read.nstackwords $M get_time.nstackwords $M f_close.nstackwords $M f_opendir.nstackwords $M puts.nstackwords $M f_readdir.nstackwords $M iprintf.nstackwords $M die.nstackwords) + 28)
	.globl	sdcard_test.nstackwords
	.set	sdcard_test.maxcores,die.maxcores $M f_close.maxcores $M f_getfree.maxcores $M f_mount.maxcores $M f_open.maxcores $M f_opendir.maxcores $M f_read.maxcores $M f_readdir.maxcores $M f_unlink.maxcores $M f_write.maxcores $M get_time.maxcores $M iprintf.maxcores $M puts.maxcores $M 1
	.globl	sdcard_test.maxcores
	.set	sdcard_test.maxtimers,die.maxtimers $M f_close.maxtimers $M f_getfree.maxtimers $M f_mount.maxtimers $M f_open.maxtimers $M f_opendir.maxtimers $M f_read.maxtimers $M f_readdir.maxtimers $M f_unlink.maxtimers $M f_write.maxtimers $M get_time.maxtimers $M iprintf.maxtimers $M puts.maxtimers $M 0
	.globl	sdcard_test.maxtimers
	.set	sdcard_test.maxchanends,die.maxchanends $M f_close.maxchanends $M f_getfree.maxchanends $M f_mount.maxchanends $M f_open.maxchanends $M f_opendir.maxchanends $M f_read.maxchanends $M f_readdir.maxchanends $M f_unlink.maxchanends $M f_write.maxchanends $M get_time.maxchanends $M iprintf.maxchanends $M puts.maxchanends $M 0
	.globl	sdcard_test.maxchanends
.Ltmp75:
	.size	sdcard_test, .Ltmp75-sdcard_test
.Lfunc_end1:
	.cfi_endproc

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI2_0.data,.LCPI2_0
	.align	4
	.type	.LCPI2_0,@object
	.size	.LCPI2_0, 4
.LCPI2_0:
	.long	2048000000
	.cc_bottom .LCPI2_0.data
	.text
	.globl	raw_access_test
	.align	4
	.type	raw_access_test,@function
	.cc_top raw_access_test.function,raw_access_test
raw_access_test:
.Lfunc_begin2:
	.loc	1 140 0
	.cfi_startproc
	.issue_mode dual
	{
		nop
		dualentsp 10
	}
.Ltmp76:
	.cfi_def_cfa_offset 40
.Ltmp77:
	.cfi_offset 15, 0
	std r5, r4, sp[1]
.Ltmp78:
	.cfi_offset 4, -32
.Ltmp79:
	.cfi_offset 5, -28
	std r7, r6, sp[2]
.Ltmp80:
	.cfi_offset 6, -24
.Ltmp81:
	.cfi_offset 7, -20
	std r9, r8, sp[3]
.Ltmp82:
	.cfi_offset 8, -16
.Ltmp83:
	.cfi_offset 9, -12
	{
		nop
		stw r10, sp[8]
	}
.Ltmp84:
	.cfi_offset 10, -8
.Ltmp85:
	.loc	1 147 9 prologue_end
	ldaw r4, dp[Buff2]
	{
		ldc r6, 0
		nop
	}
	ldc r7, 20480
	{
		mov r0, r4
		mov r1, r6
	}
	{
		mov r2, r7
		nop
	}
	bl memset
	ldaw r5, dp[Buff]
.LBB2_1:
	.loc	1 146 9
	st8 r6, r5[r6]
.Ltmp86:
	.loc	1 144 35
	{
		add r6, r6, 1
		nop
	}
.Ltmp87:
.xtaloop 20480
	# LOOPMARKER 0
	.loc	1 144 5
	{
		eq r0, r6, r7
		nop
	}
	bf r0, .LBB2_1
.Ltmp88:
	{
		ldc r6, 0
		nop
	}
	.loc	1 150 10
	{
		mov r0, r6
		nop
	}
	bl disk_initialize
	bf r0, .LBB2_4
	.loc	1 151 22
.Ltmp89:
	ldaw r11, cp[.L.str21]
	{
		mov r0, r11
		nop
	}
	bl iprintf
.Ltmp90:
.LBB2_4:
	.loc	1 154 9
	bl get_time
.Ltmp91:
	{
		mov r9, r0
		ldc r2, 10
	}
.Ltmp92:
	{
		ldc r3, 40
		mov r0, r6
	}
	.loc	1 155 5
	{
		mov r1, r5
		mov r8, r2
	}
	bl disk_write
	.loc	1 156 9
	bl get_time
	.loc	1 156 9
	{
		sub r0, r0, r9
		nop
	}
.Ltmp93:
	ldw r9, cp[.LCPI2_0]
	.loc	1 157 5
	divu r2, r9, r0
	.loc	1 157 5
	ldaw r11, cp[.L.str22]
	ldc r1, 20480
	{
		mov r0, r11
		mov r7, r1
	}
.Ltmp94:
	bl iprintf
	.loc	1 160 9
	bl get_time
.Ltmp95:
	{
		mov r10, r0
		mov r0, r6
	}
.Ltmp96:
	.loc	1 161 5
	{
		mov r1, r4
		mov r2, r8
	}
	{
		ldc r3, 40
		nop
	}
	bl disk_read
	.loc	1 162 9
	bl get_time
	.loc	1 162 9
	{
		sub r0, r0, r10
		nop
	}
.Ltmp97:
	.loc	1 163 5
	divu r2, r9, r0
	.loc	1 163 5
	ldaw r11, cp[.L.str23]
	{
		mov r0, r11
		mov r1, r7
	}
.Ltmp98:
	bl iprintf
.Ltmp99:
	{
		ldc r7, 16
		nop
	}
.LBB2_5:
	{
		nop
		ld8u r2, r5[r6]
	}
	{
		nop
		ld8u r3, r4[r6]
	}
	.loc	1 167 13
.Ltmp100:
	{
		eq r0, r2, r3
		nop
	}
	bt r0, .LBB2_7
	.loc	1 168 13
.Ltmp101:
	ldaw r11, cp[.L.str24]
	{
		mov r0, r11
		mov r1, r6
	}
	bl iprintf
.Ltmp102:
.LBB2_7:
	.loc	1 165 43
	{
		add r6, r6, 1
		nop
	}
.Ltmp103:
.xtaloop 16
	# LOOPMARKER 1
	.loc	1 165 5
	{
		eq r0, r6, r7
		nop
	}
	bf r0, .LBB2_5
.Ltmp104:
	.loc	1 171 5
	ldaw r11, cp[.L.str25]
	{
		mov r0, r11
		nop
	}
	bl iprintf
	{
		ldc r0, 0
		ldw r10, sp[8]
	}
	.loc	1 172 5
	ldd r9, r8, sp[3]
	ldd r7, r6, sp[2]
	ldd r5, r4, sp[1]
	{
		nop
		retsp 10
	}
	# RETURN_REG_HOLDER
.Ltmp105:
	.cc_bottom raw_access_test.function
	.set	raw_access_test.nstackwords,((memset.nstackwords $M disk_initialize.nstackwords $M disk_write.nstackwords $M disk_read.nstackwords $M get_time.nstackwords $M iprintf.nstackwords) + 10)
	.globl	raw_access_test.nstackwords
	.set	raw_access_test.maxcores,disk_initialize.maxcores $M disk_read.maxcores $M disk_write.maxcores $M get_time.maxcores $M iprintf.maxcores $M 1
	.globl	raw_access_test.maxcores
	.set	raw_access_test.maxtimers,disk_initialize.maxtimers $M disk_read.maxtimers $M disk_write.maxtimers $M get_time.maxtimers $M iprintf.maxtimers $M 0
	.globl	raw_access_test.maxtimers
	.set	raw_access_test.maxchanends,disk_initialize.maxchanends $M disk_read.maxchanends $M disk_write.maxchanends $M get_time.maxchanends $M iprintf.maxchanends $M 0
	.globl	raw_access_test.maxchanends
.Ltmp106:
	.size	raw_access_test, .Ltmp106-raw_access_test
.Lfunc_end2:
	.cfi_endproc

	.section	.cp.rodata.string,"aMSc",@progbits
	.cc_top .L.str.data,.L.str
	.align	4
	.type	.L.str,@object
	.size	.L.str, 21
.L.str:
.asciiz"\nFailed with rc=%u.\n"
	.cc_bottom .L.str.data
	.section	.dp.bss,"awd",@nobits
	.cc_top Buff.data,Buff
	.globl	Buff.globound
Buff.globound = 20480
	.globl	Buff
	.align	8
	.type	Buff,@object
	.size	Buff, 20480
Buff:
	.space	20480
	.cc_bottom Buff.data
	.section	.cp.rodata.string,"aMSc",@progbits
	.cc_top .L.str1.data,.L.str1
	.align	4
	.type	.L.str1,@object
	.size	.L.str1, 3
.L.str1:
.asciiz"0:"
	.space	1
	.cc_bottom .L.str1.data
	.cc_top .L.str2.data,.L.str2
	.align	4
	.type	.L.str2,@object
	.size	.L.str2, 45
.L.str2:
.asciiz"%lu KB total drive space.\n%lu KB available.\n"
	.cc_bottom .L.str2.data
	.cc_top .L.str3.data,.L.str3
	.align	4
	.type	.L.str3,@object
	.size	.L.str3, 39
.L.str3:
.asciiz"\nDeleting file Data.bin if existing..."
	.cc_bottom .L.str3.data
	.cc_top .L.str4.data,.L.str4
	.align	4
	.type	.L.str4,@object
	.size	.L.str4, 9
.L.str4:
.asciiz"Data.bin"
	.cc_bottom .L.str4.data
	.cc_top .L.str7.data,.L.str7
	.align	4
	.type	.L.str7,@object
	.size	.L.str7, 33
.L.str7:
.asciiz"\nCreating a new file Data.bin..."
	.cc_bottom .L.str7.data
	.section	.dp.bss,"awd",@nobits
	.cc_top Fil.data,Fil
	.globl	Fil
	.align	8
	.type	Fil,@object
	.size	Fil, 36
Fil:
	.space	36
	.cc_bottom Fil.data
	.section	.cp.rodata.string,"aMSc",@progbits
	.cc_top .L.str8.data,.L.str8
	.align	4
	.type	.L.str8,@object
	.size	.L.str8, 29
.L.str8:
.asciiz"\nWriting data to the file..."
	.cc_bottom .L.str8.data
	.cc_top .L.str9.data,.L.str9
	.align	4
	.type	.L.str9,@object
	.size	.L.str9, 44
.L.str9:
.asciiz"%d bytes written. Write rate: %dKBytes/Sec\n"
	.cc_bottom .L.str9.data
	.cc_top .L.str10.data,.L.str10
	.align	4
	.type	.L.str10,@object
	.size	.L.str10, 21
.L.str10:
.asciiz"\nClosing the file..."
	.cc_bottom .L.str10.data
	.cc_top .L.str11.data,.L.str11
	.align	4
	.type	.L.str11,@object
	.size	.L.str11, 39
.L.str11:
.asciiz"\nOpening an existing file: Data.bin..."
	.cc_bottom .L.str11.data
	.cc_top .L.str12.data,.L.str12
	.align	4
	.type	.L.str12,@object
	.size	.L.str12, 25
.L.str12:
.asciiz"\nReading file content..."
	.cc_bottom .L.str12.data
	.cc_top .L.str13.data,.L.str13
	.align	4
	.type	.L.str13,@object
	.size	.L.str13, 40
.L.str13:
.asciiz"%d bytes read. Read rate: %dKBytes/Sec\n"
	.cc_bottom .L.str13.data
	.section	.dp.bss.4,"awd",@nobits
	.cc_top sdcard_test.lfn.data,sdcard_test.lfn
	.align	4
	.type	sdcard_test.lfn,@object
	.size	sdcard_test.lfn, 256
sdcard_test.lfn:
	.space	256
	.cc_bottom sdcard_test.lfn.data
	.section	.cp.rodata.string,"aMSc",@progbits
	.cc_top .L.str15.data,.L.str15
	.align	4
	.type	.L.str15,@object
	.size	.L.str15, 2
.L.str15:
.asciiz"/"
	.space	2
	.cc_bottom .L.str15.data
	.cc_top .L.str17.data,.L.str17
	.align	4
	.type	.L.str17,@object
	.size	.L.str17, 19
.L.str17:
.asciiz"\nreaddir sucess..."
	.cc_bottom .L.str17.data
	.cc_top .L.str18.data,.L.str18
	.align	4
	.type	.L.str18,@object
	.size	.L.str18, 14
.L.str18:
.asciiz"   <dir>  %s\n"
	.cc_bottom .L.str18.data
	.cc_top .L.str19.data,.L.str19
	.align	4
	.type	.L.str19,@object
	.size	.L.str19, 9
.L.str19:
.asciiz"%8d  %s\n"
	.cc_bottom .L.str19.data
	.section	.dp.bss,"awd",@nobits
	.cc_top Buff2.data,Buff2
	.globl	Buff2.globound
Buff2.globound = 20480
	.globl	Buff2
	.align	8
	.type	Buff2,@object
	.size	Buff2, 20480
Buff2:
	.space	20480
	.cc_bottom Buff2.data
	.section	.cp.rodata.string,"aMSc",@progbits
	.cc_top .L.str21.data,.L.str21
	.align	4
	.type	.L.str21,@object
	.size	.L.str21, 13
.L.str21:
.asciiz"\nInit Failed"
	.cc_bottom .L.str21.data
	.cc_top .L.str22.data,.L.str22
	.align	4
	.type	.L.str22,@object
	.size	.L.str22, 44
.L.str22:
.asciiz"\n%d bytes written. Write rate: %dKBytes/Sec"
	.cc_bottom .L.str22.data
	.cc_top .L.str23.data,.L.str23
	.align	4
	.type	.L.str23,@object
	.size	.L.str23, 40
.L.str23:
.asciiz"\n%d bytes read. Read rate: %dKBytes/Sec"
	.cc_bottom .L.str23.data
	.cc_top .L.str24.data,.L.str24
	.align	4
	.type	.L.str24,@object
	.size	.L.str24, 50
.L.str24:
.asciiz"\nread data error position: %d, write: %x, read %x"
	.cc_bottom .L.str24.data
	.cc_top .L.str25.data,.L.str25
	.align	4
	.type	.L.str25,@object
	.size	.L.str25, 6
.L.str25:
.asciiz"\ndone"
	.cc_bottom .L.str25.data
	.cc_top .Lstr29.data,.Lstr29
	.align	4
	.type	.Lstr29,@object
	.size	.Lstr29, 6
.Lstr29:
.asciiz"done."
	.cc_bottom .Lstr29.data
	.cc_top .Lstr30.data,.Lstr30
	.align	4
	.type	.Lstr30,@object
	.size	.Lstr30, 22
.Lstr30:
.asciiz"\nOpen root directory."
	.cc_bottom .Lstr30.data
	.cc_top .Lstr31.data,.Lstr31
	.align	4
	.type	.Lstr31,@object
	.size	.Lstr31, 22
.Lstr31:
.asciiz"\nDirectory listing..."
	.cc_bottom .Lstr31.data
	.cc_top .Lstr32.data,.Lstr32
	.align	4
	.type	.Lstr32,@object
	.size	.Lstr32, 17
.Lstr32:
.asciiz"\nTest completed."
	.cc_bottom .Lstr32.data
	.cc_top .Lstr33.data,.Lstr33
	.align	4
	.type	.Lstr33,@object
	.size	.Lstr33, 9
.Lstr33:
.asciiz"deleted."
	.cc_bottom .Lstr33.data
	.section	.dp.bss.4,"awd",@nobits
.Ldebug_end0:
	.section	.dp.bss,"awd",@nobits
.Ldebug_end1:
	.text
.Ldebug_end2:
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciiz"XMOS-22296-Apr-19-2018 clang version 3.6.0  (based on LLVM 3.6.0svn)"
.Linfo_string1:
.asciiz".././src\\sdcard_test.c"
.Linfo_string2:
.asciiz"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
.Linfo_string3:
.asciiz"lfn"
.Linfo_string4:
.asciiz"char"
.Linfo_string5:
.asciiz"sizetype"
.Linfo_string6:
.asciiz"Fil"
.Linfo_string7:
.asciiz"fs"
.Linfo_string8:
.asciiz"fs_type"
.Linfo_string9:
.asciiz"unsigned char"
.Linfo_string10:
.asciiz"BYTE"
.Linfo_string11:
.asciiz"drv"
.Linfo_string12:
.asciiz"csize"
.Linfo_string13:
.asciiz"n_fats"
.Linfo_string14:
.asciiz"wflag"
.Linfo_string15:
.asciiz"fsi_flag"
.Linfo_string16:
.asciiz"id"
.Linfo_string17:
.asciiz"unsigned short"
.Linfo_string18:
.asciiz"WORD"
.Linfo_string19:
.asciiz"n_rootdir"
.Linfo_string20:
.asciiz"last_clust"
.Linfo_string21:
.asciiz"long unsigned int"
.Linfo_string22:
.asciiz"DWORD"
.Linfo_string23:
.asciiz"free_clust"
.Linfo_string24:
.asciiz"fsi_sector"
.Linfo_string25:
.asciiz"cdir"
.Linfo_string26:
.asciiz"n_fatent"
.Linfo_string27:
.asciiz"fsize"
.Linfo_string28:
.asciiz"fatbase"
.Linfo_string29:
.asciiz"dirbase"
.Linfo_string30:
.asciiz"database"
.Linfo_string31:
.asciiz"winsect"
.Linfo_string32:
.asciiz"win"
.Linfo_string33:
.asciiz"FATFS"
.Linfo_string34:
.asciiz"flag"
.Linfo_string35:
.asciiz"pad1"
.Linfo_string36:
.asciiz"fptr"
.Linfo_string37:
.asciiz"sclust"
.Linfo_string38:
.asciiz"clust"
.Linfo_string39:
.asciiz"dsect"
.Linfo_string40:
.asciiz"dir_sect"
.Linfo_string41:
.asciiz"dir_ptr"
.Linfo_string42:
.asciiz"FIL"
.Linfo_string43:
.asciiz"Buff"
.Linfo_string44:
.asciiz"Buff2"
.Linfo_string45:
.asciiz"FR_OK"
.Linfo_string46:
.asciiz"FR_DISK_ERR"
.Linfo_string47:
.asciiz"FR_INT_ERR"
.Linfo_string48:
.asciiz"FR_NOT_READY"
.Linfo_string49:
.asciiz"FR_NO_FILE"
.Linfo_string50:
.asciiz"FR_NO_PATH"
.Linfo_string51:
.asciiz"FR_INVALID_NAME"
.Linfo_string52:
.asciiz"FR_DENIED"
.Linfo_string53:
.asciiz"FR_EXIST"
.Linfo_string54:
.asciiz"FR_INVALID_OBJECT"
.Linfo_string55:
.asciiz"FR_WRITE_PROTECTED"
.Linfo_string56:
.asciiz"FR_INVALID_DRIVE"
.Linfo_string57:
.asciiz"FR_NOT_ENABLED"
.Linfo_string58:
.asciiz"FR_NO_FILESYSTEM"
.Linfo_string59:
.asciiz"FR_MKFS_ABORTED"
.Linfo_string60:
.asciiz"FR_TIMEOUT"
.Linfo_string61:
.asciiz"FR_LOCKED"
.Linfo_string62:
.asciiz"FR_NOT_ENOUGH_CORE"
.Linfo_string63:
.asciiz"FR_TOO_MANY_OPEN_FILES"
.Linfo_string64:
.asciiz"FR_INVALID_PARAMETER"
.Linfo_string65:
.asciiz"RES_OK"
.Linfo_string66:
.asciiz"RES_ERROR"
.Linfo_string67:
.asciiz"RES_WRPRT"
.Linfo_string68:
.asciiz"RES_NOTRDY"
.Linfo_string69:
.asciiz"RES_PARERR"
.Linfo_string70:
.asciiz"die"
.Linfo_string71:
.asciiz"sdcard_test"
.Linfo_string72:
.asciiz"int"
.Linfo_string73:
.asciiz"raw_access_test"
.Linfo_string74:
.asciiz"rc"
.Linfo_string75:
.asciiz"FRESULT"
.Linfo_string76:
.asciiz"i"
.Linfo_string77:
.asciiz"unsigned int"
.Linfo_string78:
.asciiz"UINT"
.Linfo_string79:
.asciiz"fre_clust"
.Linfo_string80:
.asciiz"Fatfs"
.Linfo_string81:
.asciiz"tot_sect"
.Linfo_string82:
.asciiz"fre_sect"
.Linfo_string83:
.asciiz"T"
.Linfo_string84:
.asciiz"bw"
.Linfo_string85:
.asciiz"br"
.Linfo_string86:
.asciiz"dir"
.Linfo_string87:
.asciiz"index"
.Linfo_string88:
.asciiz"sect"
.Linfo_string89:
.asciiz"fn"
.Linfo_string90:
.asciiz"WCHAR"
.Linfo_string91:
.asciiz"lfn_idx"
.Linfo_string92:
.asciiz"DIR"
.Linfo_string93:
.asciiz"fno"
.Linfo_string94:
.asciiz"fdate"
.Linfo_string95:
.asciiz"ftime"
.Linfo_string96:
.asciiz"fattrib"
.Linfo_string97:
.asciiz"fname"
.Linfo_string98:
.asciiz"TCHAR"
.Linfo_string99:
.asciiz"lfname"
.Linfo_string100:
.asciiz"lfsize"
.Linfo_string101:
.asciiz"FILINFO"
.Linfo_string102:
.asciiz"R1"
.Linfo_string103:
.asciiz"DRESULT"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	1381
	.short	3
	.long	.Lsection_abbrev
	.byte	4
	.byte	1
	.long	.Linfo_string0
	.short	12
	.long	.Linfo_string1
	.long	.Lline_table_start0
	.long	.Linfo_string2
	.byte	1
	.byte	2
	.long	.Ldebug_ranges1
	.byte	1
	.byte	94
	.byte	1
	.long	.Linfo_string71
	.byte	1
	.byte	30
	.byte	1
	.long	1057
	.byte	1
	.byte	3
	.long	.Linfo_string3
	.long	240
	.byte	1
	.byte	108
	.byte	5
	.byte	3
	.long	sdcard_test.lfn
	.byte	4
	.long	.Ldebug_loc1
	.long	.Linfo_string76
	.byte	1
	.byte	33
	.long	1075
	.byte	4
	.long	.Ldebug_loc3
	.long	.Linfo_string80
	.byte	1
	.byte	38
	.long	432
	.byte	4
	.long	.Ldebug_loc4
	.long	.Linfo_string74
	.byte	1
	.byte	32
	.long	1064
	.byte	4
	.long	.Ldebug_loc7
	.long	.Linfo_string83
	.byte	1
	.byte	34
	.long	1086
	.byte	4
	.long	.Ldebug_loc8
	.long	.Linfo_string84
	.byte	1
	.byte	33
	.long	1075
	.byte	4
	.long	.Ldebug_loc9
	.long	.Linfo_string85
	.byte	1
	.byte	33
	.long	1075
	.byte	4
	.long	.Ldebug_loc10
	.long	.Linfo_string86
	.byte	1
	.byte	105
	.long	1093
	.byte	4
	.long	.Ldebug_loc11
	.long	.Linfo_string93
	.byte	1
	.byte	106
	.long	1245
	.byte	5
	.long	.Ldebug_ranges2
	.byte	4
	.long	.Ldebug_loc2
	.long	.Linfo_string79
	.byte	1
	.byte	41
	.long	718
	.byte	4
	.long	.Ldebug_loc5
	.long	.Linfo_string81
	.byte	1
	.byte	41
	.long	718
	.byte	4
	.long	.Ldebug_loc6
	.long	.Linfo_string82
	.byte	1
	.byte	41
	.long	718
	.byte	0
	.byte	0
	.byte	6
	.long	252
	.byte	7
	.long	259
	.byte	255
	.byte	0
	.byte	8
	.long	.Linfo_string4
	.byte	8
	.byte	1
	.byte	9
	.long	.Linfo_string5
	.byte	8
	.byte	7
	.byte	10
	.long	.Linfo_string6
	.long	284
	.byte	1
	.byte	1
	.byte	18
	.byte	5
	.byte	3
	.long	Fil
	.byte	11
	.long	295
	.long	.Linfo_string42
	.byte	3
	.byte	136
	.byte	12
	.byte	36
	.byte	3
	.byte	113
	.byte	13
	.long	.Linfo_string7
	.long	432
	.byte	3
	.byte	114
	.byte	0
	.byte	13
	.long	.Linfo_string16
	.long	700
	.byte	3
	.byte	115
	.byte	4
	.byte	13
	.long	.Linfo_string34
	.long	682
	.byte	3
	.byte	116
	.byte	6
	.byte	13
	.long	.Linfo_string35
	.long	682
	.byte	3
	.byte	117
	.byte	7
	.byte	13
	.long	.Linfo_string36
	.long	718
	.byte	3
	.byte	118
	.byte	8
	.byte	13
	.long	.Linfo_string27
	.long	718
	.byte	3
	.byte	119
	.byte	12
	.byte	13
	.long	.Linfo_string37
	.long	718
	.byte	3
	.byte	120
	.byte	16
	.byte	13
	.long	.Linfo_string38
	.long	718
	.byte	3
	.byte	121
	.byte	20
	.byte	13
	.long	.Linfo_string39
	.long	718
	.byte	3
	.byte	122
	.byte	24
	.byte	13
	.long	.Linfo_string40
	.long	718
	.byte	3
	.byte	124
	.byte	28
	.byte	13
	.long	.Linfo_string41
	.long	749
	.byte	3
	.byte	125
	.byte	32
	.byte	0
	.byte	14
	.long	437
	.byte	11
	.long	448
	.long	.Linfo_string33
	.byte	3
	.byte	107
	.byte	15
	.short	564
	.byte	3
	.byte	77
	.byte	13
	.long	.Linfo_string8
	.long	682
	.byte	3
	.byte	78
	.byte	0
	.byte	13
	.long	.Linfo_string11
	.long	682
	.byte	3
	.byte	79
	.byte	1
	.byte	13
	.long	.Linfo_string12
	.long	682
	.byte	3
	.byte	80
	.byte	2
	.byte	13
	.long	.Linfo_string13
	.long	682
	.byte	3
	.byte	81
	.byte	3
	.byte	13
	.long	.Linfo_string14
	.long	682
	.byte	3
	.byte	82
	.byte	4
	.byte	13
	.long	.Linfo_string15
	.long	682
	.byte	3
	.byte	83
	.byte	5
	.byte	13
	.long	.Linfo_string16
	.long	700
	.byte	3
	.byte	84
	.byte	6
	.byte	13
	.long	.Linfo_string19
	.long	700
	.byte	3
	.byte	85
	.byte	8
	.byte	13
	.long	.Linfo_string20
	.long	718
	.byte	3
	.byte	93
	.byte	12
	.byte	13
	.long	.Linfo_string23
	.long	718
	.byte	3
	.byte	94
	.byte	16
	.byte	13
	.long	.Linfo_string24
	.long	718
	.byte	3
	.byte	95
	.byte	20
	.byte	13
	.long	.Linfo_string25
	.long	718
	.byte	3
	.byte	98
	.byte	24
	.byte	13
	.long	.Linfo_string26
	.long	718
	.byte	3
	.byte	100
	.byte	28
	.byte	13
	.long	.Linfo_string27
	.long	718
	.byte	3
	.byte	101
	.byte	32
	.byte	13
	.long	.Linfo_string28
	.long	718
	.byte	3
	.byte	102
	.byte	36
	.byte	13
	.long	.Linfo_string29
	.long	718
	.byte	3
	.byte	103
	.byte	40
	.byte	13
	.long	.Linfo_string30
	.long	718
	.byte	3
	.byte	104
	.byte	44
	.byte	13
	.long	.Linfo_string31
	.long	718
	.byte	3
	.byte	105
	.byte	48
	.byte	13
	.long	.Linfo_string32
	.long	736
	.byte	3
	.byte	106
	.byte	52
	.byte	0
	.byte	11
	.long	693
	.long	.Linfo_string10
	.byte	2
	.byte	22
	.byte	8
	.long	.Linfo_string9
	.byte	8
	.byte	1
	.byte	11
	.long	711
	.long	.Linfo_string18
	.byte	2
	.byte	27
	.byte	8
	.long	.Linfo_string17
	.byte	7
	.byte	2
	.byte	11
	.long	729
	.long	.Linfo_string22
	.byte	2
	.byte	33
	.byte	8
	.long	.Linfo_string21
	.byte	7
	.byte	4
	.byte	6
	.long	682
	.byte	16
	.long	259
	.short	511
	.byte	0
	.byte	14
	.long	682
	.byte	10
	.long	.Linfo_string43
	.long	772
	.byte	1
	.byte	1
	.byte	21
	.byte	5
	.byte	3
	.long	Buff
	.byte	6
	.long	682
	.byte	16
	.long	259
	.short	20479
	.byte	0
	.byte	10
	.long	.Linfo_string44
	.long	772
	.byte	1
	.byte	1
	.byte	22
	.byte	5
	.byte	3
	.long	Buff2
	.byte	17
	.byte	4
	.byte	3
	.byte	177
	.byte	18
	.long	.Linfo_string45
	.byte	0
	.byte	18
	.long	.Linfo_string46
	.byte	1
	.byte	18
	.long	.Linfo_string47
	.byte	2
	.byte	18
	.long	.Linfo_string48
	.byte	3
	.byte	18
	.long	.Linfo_string49
	.byte	4
	.byte	18
	.long	.Linfo_string50
	.byte	5
	.byte	18
	.long	.Linfo_string51
	.byte	6
	.byte	18
	.long	.Linfo_string52
	.byte	7
	.byte	18
	.long	.Linfo_string53
	.byte	8
	.byte	18
	.long	.Linfo_string54
	.byte	9
	.byte	18
	.long	.Linfo_string55
	.byte	10
	.byte	18
	.long	.Linfo_string56
	.byte	11
	.byte	18
	.long	.Linfo_string57
	.byte	12
	.byte	18
	.long	.Linfo_string58
	.byte	13
	.byte	18
	.long	.Linfo_string59
	.byte	14
	.byte	18
	.long	.Linfo_string60
	.byte	15
	.byte	18
	.long	.Linfo_string61
	.byte	16
	.byte	18
	.long	.Linfo_string62
	.byte	17
	.byte	18
	.long	.Linfo_string63
	.byte	18
	.byte	18
	.long	.Linfo_string64
	.byte	19
	.byte	0
	.byte	17
	.byte	4
	.byte	4
	.byte	19
	.byte	18
	.long	.Linfo_string65
	.byte	0
	.byte	18
	.long	.Linfo_string66
	.byte	1
	.byte	18
	.long	.Linfo_string67
	.byte	2
	.byte	18
	.long	.Linfo_string68
	.byte	3
	.byte	18
	.long	.Linfo_string69
	.byte	4
	.byte	0
	.byte	19
	.long	.Ldebug_ranges0
	.byte	1
	.byte	94
	.byte	1
	.long	.Linfo_string70
	.byte	1
	.byte	24
	.byte	1
	.byte	1
	.byte	20
	.long	.Ldebug_loc0
	.long	.Linfo_string74
	.byte	1
	.byte	24
	.long	1064
	.byte	0
	.byte	2
	.long	.Ldebug_ranges3
	.byte	1
	.byte	94
	.byte	1
	.long	.Linfo_string73
	.byte	1
	.byte	139
	.byte	1
	.long	1057
	.byte	1
	.byte	4
	.long	.Ldebug_loc12
	.long	.Linfo_string76
	.byte	1
	.byte	141
	.long	1086
	.byte	4
	.long	.Ldebug_loc13
	.long	.Linfo_string83
	.byte	1
	.byte	141
	.long	1086
	.byte	21
	.long	.Linfo_string102
	.byte	1
	.byte	142
	.long	1373
	.byte	0
	.byte	8
	.long	.Linfo_string72
	.byte	5
	.byte	4
	.byte	11
	.long	803
	.long	.Linfo_string75
	.byte	3
	.byte	198
	.byte	11
	.long	1086
	.long	.Linfo_string78
	.byte	2
	.byte	17
	.byte	8
	.long	.Linfo_string77
	.byte	7
	.byte	4
	.byte	11
	.long	1104
	.long	.Linfo_string92
	.byte	3
	.byte	155
	.byte	12
	.byte	36
	.byte	3
	.byte	142
	.byte	13
	.long	.Linfo_string7
	.long	432
	.byte	3
	.byte	143
	.byte	0
	.byte	13
	.long	.Linfo_string16
	.long	700
	.byte	3
	.byte	144
	.byte	4
	.byte	13
	.long	.Linfo_string87
	.long	700
	.byte	3
	.byte	145
	.byte	6
	.byte	13
	.long	.Linfo_string37
	.long	718
	.byte	3
	.byte	146
	.byte	8
	.byte	13
	.long	.Linfo_string38
	.long	718
	.byte	3
	.byte	147
	.byte	12
	.byte	13
	.long	.Linfo_string88
	.long	718
	.byte	3
	.byte	148
	.byte	16
	.byte	13
	.long	.Linfo_string86
	.long	749
	.byte	3
	.byte	149
	.byte	20
	.byte	13
	.long	.Linfo_string89
	.long	749
	.byte	3
	.byte	150
	.byte	24
	.byte	13
	.long	.Linfo_string3
	.long	1229
	.byte	3
	.byte	152
	.byte	28
	.byte	13
	.long	.Linfo_string91
	.long	700
	.byte	3
	.byte	153
	.byte	32
	.byte	0
	.byte	14
	.long	1234
	.byte	11
	.long	711
	.long	.Linfo_string90
	.byte	2
	.byte	28
	.byte	11
	.long	1256
	.long	.Linfo_string101
	.byte	3
	.byte	171
	.byte	12
	.byte	32
	.byte	3
	.byte	161
	.byte	13
	.long	.Linfo_string27
	.long	718
	.byte	3
	.byte	162
	.byte	0
	.byte	13
	.long	.Linfo_string94
	.long	700
	.byte	3
	.byte	163
	.byte	4
	.byte	13
	.long	.Linfo_string95
	.long	700
	.byte	3
	.byte	164
	.byte	6
	.byte	13
	.long	.Linfo_string96
	.long	682
	.byte	3
	.byte	165
	.byte	8
	.byte	13
	.long	.Linfo_string97
	.long	1345
	.byte	3
	.byte	166
	.byte	9
	.byte	13
	.long	.Linfo_string99
	.long	1368
	.byte	3
	.byte	168
	.byte	24
	.byte	13
	.long	.Linfo_string100
	.long	1075
	.byte	3
	.byte	169
	.byte	28
	.byte	0
	.byte	6
	.long	1357
	.byte	7
	.long	259
	.byte	12
	.byte	0
	.byte	11
	.long	252
	.long	.Linfo_string98
	.byte	3
	.byte	66
	.byte	14
	.long	1357
	.byte	11
	.long	928
	.long	.Linfo_string103
	.byte	4
	.byte	25
	.byte	0
.L.debug_info_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1
	.byte	17
	.byte	1
	.byte	37
	.byte	14
	.byte	19
	.byte	5
	.byte	3
	.byte	14
	.byte	16
	.byte	6
	.byte	27
	.byte	14
	.ascii	"\341\177"
	.byte	12
	.byte	0
	.byte	0
	.byte	2
	.byte	46
	.byte	1
	.byte	85
	.byte	6
	.byte	64
	.byte	10
	.ascii	"\347\177"
	.byte	12
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	12
	.byte	73
	.byte	19
	.byte	63
	.byte	12
	.byte	0
	.byte	0
	.byte	3
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	4
	.byte	52
	.byte	0
	.byte	2
	.byte	6
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	5
	.byte	11
	.byte	1
	.byte	85
	.byte	6
	.byte	0
	.byte	0
	.byte	6
	.byte	1
	.byte	1
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	7
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	11
	.byte	0
	.byte	0
	.byte	8
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	62
	.byte	11
	.byte	11
	.byte	11
	.byte	0
	.byte	0
	.byte	9
	.byte	36
	.byte	0
	.byte	3
	.byte	14
	.byte	11
	.byte	11
	.byte	62
	.byte	11
	.byte	0
	.byte	0
	.byte	10
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	63
	.byte	12
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	2
	.byte	10
	.byte	0
	.byte	0
	.byte	11
	.byte	22
	.byte	0
	.byte	73
	.byte	19
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	12
	.byte	19
	.byte	1
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	13
	.byte	13
	.byte	0
	.byte	3
	.byte	14
	.byte	73
	.byte	19
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	56
	.byte	11
	.byte	0
	.byte	0
	.byte	14
	.byte	15
	.byte	0
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	15
	.byte	19
	.byte	1
	.byte	11
	.byte	5
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	16
	.byte	33
	.byte	0
	.byte	73
	.byte	19
	.byte	47
	.byte	5
	.byte	0
	.byte	0
	.byte	17
	.byte	4
	.byte	1
	.byte	11
	.byte	11
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	0
	.byte	0
	.byte	18
	.byte	40
	.byte	0
	.byte	3
	.byte	14
	.byte	28
	.byte	13
	.byte	0
	.byte	0
	.byte	19
	.byte	46
	.byte	1
	.byte	85
	.byte	6
	.byte	64
	.byte	10
	.ascii	"\347\177"
	.byte	12
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	39
	.byte	12
	.byte	63
	.byte	12
	.byte	0
	.byte	0
	.byte	20
	.byte	5
	.byte	0
	.byte	2
	.byte	6
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	21
	.byte	52
	.byte	0
	.byte	3
	.byte	14
	.byte	58
	.byte	11
	.byte	59
	.byte	11
	.byte	73
	.byte	19
	.byte	0
	.byte	0
	.byte	0
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp19
	.long	.Ltmp28
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	0
	.long	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp2
.Lset0 = .Ltmp108-.Ltmp107
	.short	.Lset0
.Ltmp107:
	.byte	80
.Ltmp108:
	.long	.Ltmp2
	.long	.Ltmp3
.Lset1 = .Ltmp110-.Ltmp109
	.short	.Lset1
.Ltmp109:
	.byte	81
.Ltmp110:
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Ltmp15
	.long	.Ltmp17
.Lset2 = .Ltmp112-.Ltmp111
	.short	.Lset2
.Ltmp111:
	.byte	16
	.byte	0
.Ltmp112:
	.long	.Ltmp17
	.long	.Ltmp18
.Lset3 = .Ltmp114-.Ltmp113
	.short	.Lset3
.Ltmp113:
	.byte	80
.Ltmp114:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp20
	.long	.Ltmp21
.Lset4 = .Ltmp116-.Ltmp115
	.short	.Lset4
.Ltmp115:
	.byte	113
	.byte	0
.Ltmp116:
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Ltmp20
	.long	.Ltmp21
.Lset5 = .Ltmp118-.Ltmp117
	.short	.Lset5
.Ltmp117:
	.byte	114
	.byte	0
.Ltmp118:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Ltmp22
	.long	.Ltmp23
.Lset6 = .Ltmp120-.Ltmp119
	.short	.Lset6
.Ltmp119:
	.byte	80
.Ltmp120:
	.long	.Ltmp29
	.long	.Ltmp30
.Lset7 = .Ltmp122-.Ltmp121
	.short	.Lset7
.Ltmp121:
	.byte	80
.Ltmp122:
	.long	.Ltmp32
	.long	.Ltmp33
.Lset8 = .Ltmp124-.Ltmp123
	.short	.Lset8
.Ltmp123:
	.byte	80
.Ltmp124:
	.long	.Ltmp37
	.long	.Ltmp39
.Lset9 = .Ltmp126-.Ltmp125
	.short	.Lset9
.Ltmp125:
	.byte	85
.Ltmp126:
	.long	.Ltmp41
	.long	.Ltmp42
.Lset10 = .Ltmp128-.Ltmp127
	.short	.Lset10
.Ltmp127:
	.byte	80
.Ltmp128:
	.long	.Ltmp43
	.long	.Ltmp44
.Lset11 = .Ltmp130-.Ltmp129
	.short	.Lset11
.Ltmp129:
	.byte	80
.Ltmp130:
	.long	.Ltmp48
	.long	.Ltmp50
.Lset12 = .Ltmp132-.Ltmp131
	.short	.Lset12
.Ltmp131:
	.byte	85
.Ltmp132:
	.long	.Ltmp52
	.long	.Ltmp53
.Lset13 = .Ltmp134-.Ltmp133
	.short	.Lset13
.Ltmp133:
	.byte	80
.Ltmp134:
	.long	.Ltmp56
	.long	.Ltmp57
.Lset14 = .Ltmp136-.Ltmp135
	.short	.Lset14
.Ltmp135:
	.byte	80
.Ltmp136:
	.long	.Ltmp67
	.long	.Ltmp68
.Lset15 = .Ltmp138-.Ltmp137
	.short	.Lset15
.Ltmp137:
	.byte	80
.Ltmp138:
	.long	.Ltmp69
	.long	.Ltmp70
.Lset16 = .Ltmp140-.Ltmp139
	.short	.Lset16
.Ltmp139:
	.byte	80
.Ltmp140:
	.long	.Ltmp70
	.long	.Ltmp71
.Lset17 = .Ltmp142-.Ltmp141
	.short	.Lset17
.Ltmp141:
	.byte	85
.Ltmp142:
	.long	.Ltmp71
	.long	.Ltmp72
.Lset18 = .Ltmp144-.Ltmp143
	.short	.Lset18
.Ltmp143:
	.byte	80
.Ltmp144:
	.long	.Ltmp72
	.long	.Ltmp73
.Lset19 = .Ltmp146-.Ltmp145
	.short	.Lset19
.Ltmp145:
	.byte	85
.Ltmp146:
	.long	.Ltmp73
	.long	.Ltmp74
.Lset20 = .Ltmp148-.Ltmp147
	.short	.Lset20
.Ltmp147:
	.byte	80
.Ltmp148:
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Ltmp24
	.long	.Ltmp26
.Lset21 = .Ltmp150-.Ltmp149
	.short	.Lset21
.Ltmp149:
	.byte	82
.Ltmp150:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Ltmp25
	.long	.Ltmp27
.Lset22 = .Ltmp152-.Ltmp151
	.short	.Lset22
.Ltmp151:
	.byte	80
.Ltmp152:
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Ltmp34
	.long	.Ltmp39
.Lset23 = .Ltmp154-.Ltmp153
	.short	.Lset23
.Ltmp153:
	.byte	84
.Ltmp154:
	.long	.Ltmp39
	.long	.Ltmp40
.Lset24 = .Ltmp156-.Ltmp155
	.short	.Lset24
.Ltmp155:
	.byte	80
.Ltmp156:
	.long	.Ltmp45
	.long	.Ltmp50
.Lset25 = .Ltmp158-.Ltmp157
	.short	.Lset25
.Ltmp157:
	.byte	84
.Ltmp158:
	.long	.Ltmp50
	.long	.Ltmp51
.Lset26 = .Ltmp160-.Ltmp159
	.short	.Lset26
.Ltmp159:
	.byte	80
.Ltmp160:
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Ltmp35
	.long	.Ltmp36
.Lset27 = .Ltmp162-.Ltmp161
	.short	.Lset27
.Ltmp161:
	.byte	115
	.byte	0
.Ltmp162:
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Ltmp46
	.long	.Ltmp47
.Lset28 = .Ltmp164-.Ltmp163
	.short	.Lset28
.Ltmp163:
	.byte	115
	.byte	0
.Ltmp164:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Ltmp54
	.long	.Ltmp55
.Lset29 = .Ltmp166-.Ltmp165
	.short	.Lset29
.Ltmp165:
	.byte	112
	.byte	0
.Ltmp166:
	.long	.Ltmp58
	.long	.Ltmp59
.Lset30 = .Ltmp168-.Ltmp167
	.short	.Lset30
.Ltmp167:
	.byte	112
	.byte	0
.Ltmp168:
	.long	.Ltmp66
	.long	.Ltmp67
.Lset31 = .Ltmp170-.Ltmp169
	.short	.Lset31
.Ltmp169:
	.byte	118
	.byte	0
.Ltmp170:
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Ltmp58
	.long	.Ltmp59
.Lset32 = .Ltmp172-.Ltmp171
	.short	.Lset32
.Ltmp171:
	.byte	116
	.byte	0
.Ltmp172:
	.long	.Ltmp60
	.long	.Ltmp67
.Lset33 = .Ltmp174-.Ltmp173
	.short	.Lset33
.Ltmp173:
	.byte	116
	.byte	0
.Ltmp174:
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Ltmp85
	.long	.Ltmp87
.Lset34 = .Ltmp176-.Ltmp175
	.short	.Lset34
.Ltmp175:
	.byte	16
	.byte	0
.Ltmp176:
	.long	.Ltmp87
	.long	.Ltmp88
.Lset35 = .Ltmp178-.Ltmp177
	.short	.Lset35
.Ltmp177:
	.byte	86
.Ltmp178:
	.long	.Ltmp99
	.long	.Ltmp103
.Lset36 = .Ltmp180-.Ltmp179
	.short	.Lset36
.Ltmp179:
	.byte	16
	.byte	0
.Ltmp180:
	.long	.Ltmp103
	.long	.Ltmp104
.Lset37 = .Ltmp182-.Ltmp181
	.short	.Lset37
.Ltmp181:
	.byte	86
.Ltmp182:
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Ltmp91
	.long	.Ltmp92
.Lset38 = .Ltmp184-.Ltmp183
	.short	.Lset38
.Ltmp183:
	.byte	89
.Ltmp184:
	.long	.Ltmp93
	.long	.Ltmp94
.Lset39 = .Ltmp186-.Ltmp185
	.short	.Lset39
.Ltmp185:
	.byte	80
.Ltmp186:
	.long	.Ltmp95
	.long	.Ltmp96
.Lset40 = .Ltmp188-.Ltmp187
	.short	.Lset40
.Ltmp187:
	.byte	90
.Ltmp188:
	.long	.Ltmp97
	.long	.Ltmp98
.Lset41 = .Ltmp190-.Ltmp189
	.short	.Lset41
.Ltmp189:
	.byte	80
.Ltmp190:
	.long	0
	.long	0
	.section	.debug_pubnames,"",@progbits
.Lset42 = .LpubNames_end0-.LpubNames_begin0
	.long	.Lset42
.LpubNames_begin0:
	.short	2
	.long	.L.debug_info_begin0
.Lset43 = .L.debug_info_end0-.L.debug_info_begin0
	.long	.Lset43
	.long	51
.asciiz"lfn"
	.long	31
.asciiz"sdcard_test"
	.long	963
.asciiz"die"
	.long	754
.asciiz"Buff"
	.long	785
.asciiz"Buff2"
	.long	995
.asciiz"raw_access_test"
	.long	266
.asciiz"Fil"
	.long	0
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
.Lset44 = .LpubTypes_end0-.LpubTypes_begin0
	.long	.Lset44
.LpubTypes_begin0:
	.short	2
	.long	.L.debug_info_begin0
.Lset45 = .L.debug_info_end0-.L.debug_info_begin0
	.long	.Lset45
	.long	718
.asciiz"DWORD"
	.long	1075
.asciiz"UINT"
	.long	1373
.asciiz"DRESULT"
	.long	1064
.asciiz"FRESULT"
	.long	1245
.asciiz"FILINFO"
	.long	1086
.asciiz"unsigned int"
	.long	1057
.asciiz"int"
	.long	711
.asciiz"unsigned short"
	.long	1357
.asciiz"TCHAR"
	.long	437
.asciiz"FATFS"
	.long	682
.asciiz"BYTE"
	.long	1234
.asciiz"WCHAR"
	.long	729
.asciiz"long unsigned int"
	.long	284
.asciiz"FIL"
	.long	693
.asciiz"unsigned char"
	.long	700
.asciiz"WORD"
	.long	252
.asciiz"char"
	.long	1093
.asciiz"DIR"
	.long	0
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.ident	"XMOS-22296-Apr-19-2018 clang version 3.6.0  (based on LLVM 3.6.0svn)"
	.typestring die, "f{0}(e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}})"
	.typestring sdcard_test, "f{si}(0)"
	.typestring f_mount, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(uc,p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}}))"
	.typestring f_getfree, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(p(c:uc),p(ul),p(p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}})))"
	.typestring f_unlink, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(p(c:uc))"
	.typestring f_open, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(p(s(){m(fs){p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}})},m(id){us},m(flag){uc},m(pad1){uc},m(fptr){ul},m(fsize){ul},m(sclust){ul},m(clust){ul},m(dsect){ul},m(dir_sect){ul},m(dir_ptr){p(uc)}}),p(c:uc),uc)"
	.typestring get_time, "f{ui}(0)"
	.typestring f_write, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(p(s(){m(fs){p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}})},m(id){us},m(flag){uc},m(pad1){uc},m(fptr){ul},m(fsize){ul},m(sclust){ul},m(clust){ul},m(dsect){ul},m(dir_sect){ul},m(dir_ptr){p(uc)}}),p(c:0),ui,p(ui))"
	.typestring f_close, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(p(s(){m(fs){p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}})},m(id){us},m(flag){uc},m(pad1){uc},m(fptr){ul},m(fsize){ul},m(sclust){ul},m(clust){ul},m(dsect){ul},m(dir_sect){ul},m(dir_ptr){p(uc)}}))"
	.typestring f_read, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(p(s(){m(fs){p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}})},m(id){us},m(flag){uc},m(pad1){uc},m(fptr){ul},m(fsize){ul},m(sclust){ul},m(clust){ul},m(dsect){ul},m(dir_sect){ul},m(dir_ptr){p(uc)}}),p(0),ui,p(ui))"
	.typestring f_opendir, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(p(s(){m(fs){p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}})},m(id){us},m(index){us},m(sclust){ul},m(clust){ul},m(sect){ul},m(dir){p(uc)},m(fn){p(uc)},m(lfn){p(us)},m(lfn_idx){us}}),p(c:uc))"
	.typestring f_readdir, "f{e(){m(FR_DENIED){7},m(FR_DISK_ERR){1},m(FR_EXIST){8},m(FR_INT_ERR){2},m(FR_INVALID_DRIVE){11},m(FR_INVALID_NAME){6},m(FR_INVALID_OBJECT){9},m(FR_INVALID_PARAMETER){19},m(FR_LOCKED){16},m(FR_MKFS_ABORTED){14},m(FR_NOT_ENABLED){12},m(FR_NOT_ENOUGH_CORE){17},m(FR_NOT_READY){3},m(FR_NO_FILE){4},m(FR_NO_FILESYSTEM){13},m(FR_NO_PATH){5},m(FR_OK){0},m(FR_TIMEOUT){15},m(FR_TOO_MANY_OPEN_FILES){18},m(FR_WRITE_PROTECTED){10}}}(p(s(){m(fs){p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}})},m(id){us},m(index){us},m(sclust){ul},m(clust){ul},m(sect){ul},m(dir){p(uc)},m(fn){p(uc)},m(lfn){p(us)},m(lfn_idx){us}}),p(s(){m(fsize){ul},m(fdate){us},m(ftime){us},m(fattrib){uc},m(fname){a(13:uc)},m(lfname){p(uc)},m(lfsize){ui}}))"
	.typestring raw_access_test, "f{si}(0)"
	.typestring disk_initialize, "f{uc}(uc)"
	.typestring disk_write, "f{e(){m(RES_ERROR){1},m(RES_NOTRDY){3},m(RES_OK){0},m(RES_PARERR){4},m(RES_WRPRT){2}}}(uc,p(c:uc),ul,uc)"
	.typestring disk_read, "f{e(){m(RES_ERROR){1},m(RES_NOTRDY){3},m(RES_OK){0},m(RES_PARERR){4},m(RES_WRPRT){2}}}(uc,p(uc),ul,uc)"
	.typestring Buff, "a(20480:uc)"
	.typestring Fil, "s(){m(fs){p(s(){m(fs_type){uc},m(drv){uc},m(csize){uc},m(n_fats){uc},m(wflag){uc},m(fsi_flag){uc},m(id){us},m(n_rootdir){us},m(last_clust){ul},m(free_clust){ul},m(fsi_sector){ul},m(cdir){ul},m(n_fatent){ul},m(fsize){ul},m(fatbase){ul},m(dirbase){ul},m(database){ul},m(winsect){ul},m(win){a(512:uc)}})},m(id){us},m(flag){uc},m(pad1){uc},m(fptr){ul},m(fsize){ul},m(sclust){ul},m(clust){ul},m(dsect){ul},m(dir_sect){ul},m(dir_ptr){p(uc)}}"
	.typestring Buff2, "a(20480:uc)"
	.section	.trap_info,"",@progbits
.Ltrap_info_entries_start0:
	.long	.Ltrap_info_entries_end0-.Ltrap_info_entries_start0
	.long	1
.Ltrap_info_entries_end0:
	.section	.debug_line,"",@progbits
.Lline_table_start0:
