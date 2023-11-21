	.text
	.file	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
                                        # Start of file scope inline assembly
	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.globalresource 0x10000,"SDif[0].Clk","tile[1]"
	.globalresource 0x10200,"SDif[0].Cmd","tile[1]"
	.globalresource 0x40400,"SDif[0].Dat","tile[1]"
	.pushsection .netinfo, "", @netinfo
	.int      0x1eaba15c
.locl __xcc1_internal_1.info, "o:p"
__xcc1_internal_1.info:
	.int 0x00010000
	.long tile + 4
.sameresource __xcc1_internal_1, SDif, 0
.locl __xcc1_internal_2.info, "p"
__xcc1_internal_2.info:
	.int 0x00010200
	.long tile + 4
.sameresource __xcc1_internal_2, SDif, 4
.locl __xcc1_internal_3.info, "p"
__xcc1_internal_3.info:
	.int 0x00040400
	.long tile + 4
.sameresource __xcc1_internal_3, SDif, 8
	.popsection
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.set usage.anon.3,0
	.set usage.anon.4,0
	.globread disk_ioctl,usage.anon.4,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:554:21: note: object used here\n        RetVal[i] = (SDif[IfNum].BlockNr, BYTE[])[i];\n                    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	.globread disk_status,usage.anon.4,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:536:7: note: object used here\n  if(!SDif[IfNum].Rca) return STA_NOINIT;\n      ^~~~~~~~~~~~~~~"
	.globread disk_write,usage.anon.4,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:521:27: note: object used here\n    if(SendCmd(IfNum, 25, SDif[IfNum].Ccs ? sector : 512 * sector, R1, -count, (buff, BYTE[]), Resp)) return RES_ERROR; // multiblock write\n                          ^~~~~~~~~~~~~~~"
	.globread disk_read,usage.anon.4,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:503:27: note: object used here\n    if(SendCmd(IfNum, 18, SDif[IfNum].Ccs ? sector : 512 * sector, R1, count, buff, Resp)) return RES_ERROR; // multiblock read\n                          ^~~~~~~~~~~~~~~"
	.globread usage.anon.3,Is_XS1_G_Core,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:121:6: note: object used here\n  if(Is_XS1_G_Core) // check if an XS1-G can enable internal pull-up\n     ^~~~~~~~~~~~~"
	.globwrite disk_initialize,Is_XS1_G_Core,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:439:3: note: object used here\n  Is_XS1_G_Core = ((i & 0xFFFF) == 0x0200) ? 1 : 0; // get core type\n  ^~~~~~~~~~~~~"
	.globwrite disk_initialize,usage.anon.4,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:442:3: note: object used here\n  SDif[IfNum].Cmd <: 1;\n  ^~~~~~~~~~~~~~~"
	.globwrite usage.anon.3,usage.anon.4,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:85:18: note: object used here\n  set_port_drive(SDif[IfNum].Cmd);\n                 ^~~~~~~~~~~~~~~\nC:\\Program Files (x86)\\XMOS\\xTIMEcomposer\\Community_14.3.3\\target/include\\xs1.h:647:67: note: expanded from macro \'set_port_drive\'\n#define set_port_drive(p)                 __builtin_set_port_drv (p, XS1_SETC_DRIVE_DRIVE)\n                                                                  ^"
	.call disk_ioctl,disk_status
	.call disk_status,usage.anon.3
	.call disk_write,usage.anon.3
	.call disk_read,usage.anon.3
	.call disk_initialize,usage.anon.3
	.call disk_initialize,read_sswitch_reg
	.call disk_initialize,get_local_tile_id
	.call usage.anon.3,set_port_pull_up
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.set usage.anon.3.locnoside, 0
	.set disk_initialize.locnoside, 0
	.set disk_read.locnoside, 0
	.set disk_write.locnoside, 0
	.set disk_ioctl.locnoside, 0
	.set usage.anon.3.locnoglobalaccess, 0
	.set disk_initialize.locnoglobalaccess, 0
	.set disk_read.locnoglobalaccess, 0
	.set disk_write.locnoglobalaccess, 0
	.set disk_status.locnoglobalaccess, 0
	.set disk_ioctl.locnoglobalaccess, 0
	.globpassesref set_port_pull_up, usage.anon.4,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:366:9: error: call to `set_port_pull_up\' in `SendCmd\' makes alias of global \'SDif\'\n        set_port_pull_up(SDif[IfNum].Dat); // otherwise need an external pull-up resistor D0 (Dat3) pin\n        ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"
	.globpassesref set_port_pull_up, usage.anon.4,"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:122:5: error: call to `set_port_pull_up\' in `SendCmd\' makes alias of global \'SDif\'\n    set_port_pull_up(SDif[IfNum].Cmd); // otherwise need an external pull-up resistor for Cmd pin\n    ^~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

                                        # End of file scope inline assembly
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
	.file	1 "C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src\\SDCardHost4Bit.xc"
	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI0_0.data,.LCPI0_0
	.align	4
	.type	.LCPI0_0,@object
	.size	.LCPI0_0, 4
.LCPI0_0:
	.long	4294967222              # 0xffffffb6
	.cc_bottom .LCPI0_0.data
	.cc_top .LCPI0_1.data,.LCPI0_1
	.align	4
	.type	.LCPI0_1,@object
	.size	.LCPI0_1, 4
.LCPI0_1:
	.long	1358921728              # 0x50ff8000
	.cc_bottom .LCPI0_1.data
	.cc_top .LCPI0_2.data,.LCPI0_2
	.align	4
	.type	.LCPI0_2,@object
	.size	.LCPI0_2, 4
.LCPI0_2:
	.long	16744448                # 0xff8000
	.cc_bottom .LCPI0_2.data
	.cc_top .LCPI0_3.data,.LCPI0_3
	.align	4
	.type	.LCPI0_3,@object
	.size	.LCPI0_3, 4
.LCPI0_3:
	.long	4294949796              # 0xffffbba4
	.cc_bottom .LCPI0_3.data
	.cc_top .LCPI0_4.data,.LCPI0_4
	.align	4
	.type	.LCPI0_4,@object
	.size	.LCPI0_4, 4
.LCPI0_4:
	.long	4294901760              # 0xffff0000
	.cc_bottom .LCPI0_4.data
	.text
	.globl	disk_initialize
	.align	4
	.type	disk_initialize,@function
	.cc_top disk_initialize.function,disk_initialize
disk_initialize:                        # @disk_initialize
.Lfunc_begin0:
	.loc	1 431 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:431:0
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
.Lxtalabel0:
	{
		nop
		dualentsp 22
	}
.Ltmp0:
	.cfi_def_cfa_offset 88
.Ltmp1:
	.cfi_offset 15, 0
	std r5, r4, sp[7]               # 4-byte Folded Spill
.Ltmp2:
	.cfi_offset 4, -32
.Ltmp3:
	.cfi_offset 5, -28
	std r7, r6, sp[8]               # 4-byte Folded Spill
.Ltmp4:
	.cfi_offset 6, -24
.Ltmp5:
	.cfi_offset 7, -20
	std r9, r8, sp[9]               # 4-byte Folded Spill
.Ltmp6:
	.cfi_offset 8, -16
.Ltmp7:
	.cfi_offset 9, -12
.Ltmp8:
	.cfi_offset 10, -8
	#DEBUG_VALUE: disk_initialize:IfNum <- R0
.Ltmp9:
	#DEBUG_VALUE: disk_initialize:IfNum <- R5
	{
		mov r5, r0
		stw r10, sp[20]
	}
.Ltmp10:
	.loc	1 436 3 prologue_end    # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:436:3
	bf r5, .LBB0_2
# BB#1:
	{
		ldc r5, 4
		nop
	}
	bu .LBB0_22
.LBB0_2:                                # %afterboundcheck
.Lxtalabel1:
.Ltmp11:
	#DEBUG_VALUE: disk_initialize:IfNum <- R5
	.loc	1 438 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:438:0
.Lxta.call_labels0:
	bl get_local_tile_id
.Ltmp12:
	#DEBUG_VALUE: i <- [R6+0]
	.loc	1 439 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:439:0
	{
		ldc r4, 0
		ldaw r6, sp[13]
	}
.Ltmp13:
	.loc	1 438 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:438:0
	{
		mov r1, r4
		mov r2, r6
	}
.Lxta.call_labels1:
	bl read_sswitch_reg
	{
		nop
		ld16s r0, r6[r4]
	}
	.loc	1 439 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:439:0
	{
		zext r0, 16
		nop
	}
	ldc r1, 512
	.loc	1 439 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:439:0
	{
		eq r0, r0, r1
		nop
	}
	.loc	1 439 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:439:0
	stw r0, dp[Is_XS1_G_Core]
	{
		ldc r0, 24
		nop
	}
	.loc	1 442 23                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:442:23
	mul r0, r5, r0
	ldaw r1, dp[SDif]
	{
		add r7, r1, r0
		nop
	}
	.loc	1 442 23                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:442:23
	{
		mkmsk r5, 1
		ldw r0, r7[1]
	}
.Ltmp14:
	.loc	1 442 23                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:442:23
.Lxta.endpoint_labels0:
	{
		out res[r0], r5
		ldw r0, r7[2]
	}
	{
		mkmsk r1, 4
		nop
	}
	.loc	1 443 25                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:443:25
.Lxta.endpoint_labels1:
	{
		out res[r0], r1
		ldw r0, r7[0]
	}
	.loc	1 444 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:444:27
.Lxta.endpoint_labels2:
	{
		out res[r0], r5
		nop
	}
	.loc	1 444 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:444:27
	{
		syncr res[r0]
		nop
	}
	.loc	1 444 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:444:27
	{
		getts r6, res[r0]
		nop
	}
.Ltmp15:
	#DEBUG_VALUE: i <- R6
	{
		nop
		stw r6, sp[13]
	}
	ldc r1, 250
.Ltmp16:
	#DEBUG_VALUE: BlockLen <- 74
	.loc	1 445 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:445:0
	{
		add r2, r6, r1
		nop
	}
	ldc r3, 125
	.loc	1 445 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:445:0
	{
		add r3, r6, r3
		nop
	}
	ldw r11, cp[.LCPI0_0]
.Ltmp17:
.LBB0_3:                                # %afterboundcheck29
                                        # =>This Inner Loop Header: Depth=1
.Lxtalabel2:
	#DEBUG_VALUE: i <- R6
	#DEBUG_VALUE: BlockLen <- 74
	.loc	1 448 29                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:448:29
	{
		setpt res[r0], r3
		nop
	}
	.loc	1 448 29                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:448:29
.Lxta.endpoint_labels3:
	{
		out res[r0], r4
		nop
	}
	.loc	1 450 29                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:450:29
	{
		setpt res[r0], r2
		nop
	}
	.loc	1 450 29                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:450:29
.Lxta.endpoint_labels4:
	{
		out res[r0], r5
		add r2, r2, r1
	}
	.loc	1 445 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:445:0
	{
		add r3, r3, r1
		add r11, r11, 1
	}
.xtaloop 74
	# LOOPMARKER 1
.Lxta.loop_labels0:
	# LOOPMARKER 0
	.loc	1 445 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:445:0
	bt r11, .LBB0_3
.Ltmp18:
# BB#4:                                 # %afterboundcheck52
.Lxtalabel3:
	#DEBUG_VALUE: i <- R6
	#DEBUG_VALUE: BlockLen <- 74
	ldc r0, 18500
	.loc	1 445 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:445:0
	{
		add r0, r6, r0
		nop
	}
.Ltmp19:
	#DEBUG_VALUE: i <- R0
	{
		nop
		stw r0, sp[13]
	}
	.loc	1 454 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:454:0
	{
		ldaw r8, sp[8]
		stw r4, r7[3]
	}
	{
		ldaw r10, sp[7]
		nop
	}
	.loc	1 455 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:455:3
	std r8, r10, sp[1]
	{
		mov r0, r4
		stw r4, sp[1]
	}
.Ltmp20:
	{
		mov r1, r4
		mov r2, r4
	}
	{
		mov r3, r4
		nop
	}
.Lxta.call_labels2:
	bl SendCmd
	bt r0, .LBB0_22
# BB#5:                                 # %ifdone58
.Lxtalabel4:
	#DEBUG_VALUE: BlockLen <- 74
	.loc	1 456 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:456:0
	std r8, r10, sp[1]
	{
		ldc r1, 8
		stw r4, sp[1]
	}
	ldc r2, 426
	{
		ldc r3, 6
		mov r0, r4
	}
.Lxta.call_labels3:
	bl SendCmd
	.loc	1 456 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:456:0
	bt r0, .LBB0_6
# BB#7:                                 # %ifdone58
.Lxtalabel5:
	ldw r9, cp[.LCPI0_1]
	bu .LBB0_8
.LBB0_6:
	ldw r9, cp[.LCPI0_2]
.LBB0_8:                                # %ifdone58
.Lxtalabel6:
	#DEBUG_VALUE: BlockLen <- 74
	.loc	1 454 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:454:0
	ldaw r0, r7[3]
.Ltmp21:
	#DEBUG_VALUE: BlockLen <- R9
	{
		nop
		stw r0, sp[5]
	}
	{
		nop
		stw r7, sp[6]
	}
	ldc r0, 18501
	.loc	1 463 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:463:3
	{
		add r8, r6, r0
		nop
	}
	ldw r0, cp[.LCPI0_3]
	.loc	1 463 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:463:3
	{
		sub r7, r0, r6
		mkmsk r5, 1
	}
	{
		ldaw r3, sp[8]
		nop
	}
.Ltmp22:
.LBB0_9:                                # %LoopBody73
                                        # =>This Inner Loop Header: Depth=1
.Lxtalabel7:
	#DEBUG_VALUE: BlockLen <- R9
	.loc	1 459 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:459:5
	std r3, r10, sp[1]
	{
		mov r0, r4
		stw r4, sp[1]
	}
	{
		ldc r1, 55
		mov r2, r4
	}
	{
		mov r6, r3
		mov r3, r5
	}
.Lxta.call_labels4:
	bl SendCmd
	bt r0, .LBB0_22
.Ltmp23:
# BB#10:                                # %ifdone76
                                        #   in Loop: Header=BB0_9 Depth=1
.Lxtalabel8:
	#DEBUG_VALUE: BlockLen <- R9
	.loc	1 460 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:460:5
	std r6, r10, sp[1]
	{
		mov r0, r4
		stw r4, sp[1]
	}
	{
		ldc r1, 41
		mov r2, r9
	}
	{
		ldc r3, 4
		nop
	}
.Lxta.call_labels5:
	bl SendCmd
	bt r0, .LBB0_22
.Ltmp24:
# BB#11:                                # %ifdone83
                                        #   in Loop: Header=BB0_9 Depth=1
.Lxtalabel9:
	#DEBUG_VALUE: BlockLen <- R9
	{
		nop
		stw r8, sp[13]
	}
	bf r7, .LBB0_22
.Ltmp25:
# BB#12:                                # %LoopTest72
                                        #   in Loop: Header=BB0_9 Depth=1
.Lxtalabel10:
	#DEBUG_VALUE: BlockLen <- R9
	{
		mov r3, r6
		nop
	}
	.loc	1 463 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:463:3
	{
		or r0, r3, r5
		nop
	}
	{
		nop
		ld8u r0, r0[r4]
	}
	.loc	1 463 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:463:3
	{
		mov r1, r0
		nop
	}
	{
		zext r1, 1
		add r8, r8, 1
	}
	.loc	1 463 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:463:3
	{
		sub r7, r7, 1
		nop
	}
.Lxta.loop_labels1:
	# LOOPMARKER 2
	bf r1, .LBB0_9
.Ltmp26:
# BB#13:                                # %afterboundcheck105
.Lxtalabel11:
	.loc	1 464 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:464:0
	{
		shr r0, r0, 1
		nop
	}
	.loc	1 464 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:464:0
	{
		zext r0, 1
		ldc r1, 16
	}
	{
		nop
		ldw r7, sp[6]
	}
	.loc	1 464 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:464:0
	st8 r0, r7[r1]
	.loc	1 465 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:465:3
	std r3, r10, sp[1]
	{
		ldc r9, 2
		stw r4, sp[1]
	}
	{
		mov r8, r3
		mkmsk r3, 2
	}
	{
		mov r0, r4
		mov r1, r9
	}
	{
		mov r2, r4
		nop
	}
.Lxta.call_labels6:
	bl SendCmd
	bt r0, .LBB0_22
# BB#14:                                # %ifdone120
.Lxtalabel12:
	.loc	1 466 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:466:3
	std r8, r10, sp[1]
	{
		mkmsk r6, 2
		stw r4, sp[1]
	}
	{
		ldc r3, 5
		mov r0, r4
	}
	{
		mov r1, r6
		mov r2, r4
	}
.Lxta.call_labels7:
	bl SendCmd
	bt r0, .LBB0_22
# BB#15:                                # %afterboundcheck135
.Lxtalabel13:
	{
		mkmsk r5, 1
		nop
	}
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		or r0, r8, r5
		or r1, r8, r9
	}
	{
		nop
		ld8u r1, r1[r4]
	}
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		shl r1, r1, 8
		ld8u r0, r0[r4]
	}
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		or r0, r1, r0
		or r1, r8, r6
	}
	{
		nop
		ld8u r1, r1[r4]
	}
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		shl r1, r1, 16
		nop
	}
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		or r0, r0, r1
		ldc r1, 4
	}
	{
		nop
		ld8u r1, r8[r1]
	}
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		shl r1, r1, 24
		nop
	}
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		or r0, r0, r1
		nop
	}
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		bitrev r0, r0
		nop
	}
	ldw r1, cp[.LCPI0_4]
	.loc	1 467 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:467:0
	{
		and r2, r0, r1
		ldw r0, sp[5]
	}
	{
		nop
		stw r2, r0[0]
	}
	.loc	1 468 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:468:3
	std r8, r10, sp[1]
	{
		ldc r9, 9
		stw r4, sp[1]
	}
	{
		mov r0, r4
		mov r1, r9
	}
	{
		mov r3, r6
		nop
	}
.Lxta.call_labels8:
	bl SendCmd
	bt r0, .LBB0_22
# BB#16:                                # %ifdone157
.Lxtalabel14:
	{
		mkmsk r5, 1
		nop
	}
	.loc	1 469 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:469:3
	{
		or r0, r8, r5
		nop
	}
	{
		nop
		ld8u r0, r0[r4]
	}
	.loc	1 469 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:469:3
	{
		zext r0, 2
		nop
	}
	.loc	1 469 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:469:3
	bf r0, .LBB0_17
# BB#18:                                # %afterboundcheck287
.Lxtalabel15:
	{
		ldc r0, 10
		nop
	}
	{
		nop
		ld8u r1, r8[r0]
	}
	.loc	1 482 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:482:0
	{
		bitrev r1, r1
		nop
	}
	.loc	1 482 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:482:0
	{
		shr r1, r1, 24
		ld8u r2, r8[r9]
	}
	.loc	1 482 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:482:0
	{
		bitrev r2, r2
		nop
	}
	.loc	1 482 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:482:0
	{
		shr r2, r2, 16
		nop
	}
	.loc	1 482 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:482:0
	{
		or r1, r2, r1
		ldc r2, 8
	}
	{
		nop
		ld8u r2, r8[r2]
	}
	.loc	1 482 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:482:0
	{
		bitrev r2, r2
		nop
	}
	.loc	1 482 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:482:0
	{
		shr r2, r2, 8
		nop
	}
	.loc	1 482 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:482:0
	{
		or r1, r1, r2
		nop
	}
	.loc	1 483 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:483:0
	{
		shl r0, r1, r0
		nop
	}
	ldc r1, 1024
	.loc	1 483 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:483:0
	{
		add r0, r0, r1
		nop
	}
	bu .LBB0_19
.LBB0_17:                               # %afterboundcheck199
.Lxtalabel16:
	{
		ldc r0, 6
		nop
	}
	{
		nop
		ld8u r0, r8[r0]
	}
	.loc	1 471 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:471:0
	{
		shl r0, r0, 24
		nop
	}
	.loc	1 471 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:471:0
	{
		bitrev r0, r0
		nop
	}
.Ltmp27:
	#DEBUG_VALUE: BlockLen <- R0
	.loc	1 471 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:471:0
	{
		zext r0, 4
		mkmsk r1, 1
	}
.Ltmp28:
	.loc	1 472 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:472:0
	{
		shl r0, r1, r0
		mkmsk r1, 3
	}
	{
		nop
		ld8u r1, r8[r1]
	}
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		bitrev r1, r1
		ldc r2, 14
	}
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		shr r1, r1, r2
		ldc r2, 8
	}
	{
		nop
		ld8u r2, r8[r2]
	}
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		bitrev r2, r2
		ldc r3, 22
	}
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		shr r2, r2, r3
		ld8u r3, r8[r9]
	}
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		bitrev r3, r3
		ldc r11, 30
	}
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		shr r3, r3, r11
		nop
	}
	ldc r11, 4095
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		and r1, r1, r11
		nop
	}
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		or r1, r2, r1
		nop
	}
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		or r1, r1, r3
		nop
	}
.Ltmp29:
	#DEBUG_VALUE: i <- R1
	.loc	1 473 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:473:0
	{
		ldc r2, 10
		stw r1, sp[13]
	}
	{
		nop
		ld8u r2, r8[r2]
	}
	.loc	1 474 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:474:0
	{
		bitrev r2, r2
		ldc r3, 23
	}
	.loc	1 474 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:474:0
	{
		shr r2, r2, r3
		ldc r11, 11
	}
	{
		nop
		ld8u r11, r8[r11]
	}
	.loc	1 474 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:474:0
	{
		bitrev r11, r11
		mkmsk r6, 5
	}
	.loc	1 474 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:474:0
	{
		shr r11, r11, r6
		zext r2, 3
	}
	.loc	1 474 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:474:0
	{
		or r2, r11, r2
		ldc r11, 4
	}
	.loc	1 475 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:475:0
	{
		shl r2, r11, r2
		add r1, r1, 1
	}
.Ltmp30:
	.loc	1 476 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:476:0
	mul r1, r2, r1
	.loc	1 477 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:477:0
	#APP
	lmul r0, r1, r1, r0, r4, r4
	#NO_APP
	.loc	1 478 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:478:0
	{
		shl r0, r0, r3
		shr r1, r1, r9
	}
	.loc	1 478 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:478:0
	{
		or r0, r0, r1
		nop
	}
.LBB0_19:                               # %afterboundcheck327
.Lxtalabel17:
	{
		nop
		stw r0, r7[5]
	}
	{
		nop
		ldw r0, sp[5]
	}
	{
		nop
		ldw r2, r0[0]
	}
	.loc	1 485 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:485:3
	std r8, r10, sp[1]
	{
		mkmsk r1, 3
		stw r4, sp[1]
	}
	{
		ldc r3, 2
		mov r0, r4
	}
.Lxta.call_labels9:
	bl SendCmd
	bt r0, .LBB0_22
# BB#20:                                # %afterboundcheck342
.Lxtalabel18:
	{
		nop
		ldw r0, sp[5]
	}
	{
		nop
		ldw r2, r0[0]
	}
	.loc	1 486 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:486:3
	std r8, r10, sp[1]
	{
		ldc r1, 55
		stw r4, sp[1]
	}
	{
		mkmsk r5, 1
		mov r0, r4
	}
	{
		mov r3, r5
		nop
	}
.Lxta.call_labels10:
	bl SendCmd
	bt r0, .LBB0_22
# BB#21:                                # %ifdone338
.Lxtalabel19:
	.loc	1 487 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:487:3
	std r8, r10, sp[1]
	{
		ldc r1, 6
		stw r4, sp[1]
	}
	{
		ldc r2, 2
		mkmsk r3, 1
	}
	{
		mov r0, r4
		nop
	}
.Lxta.call_labels11:
	bl SendCmd
	.loc	1 490 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:490:3
	{
		eq r0, r0, 0
		nop
	}
	{
		eq r5, r0, 0
		nop
	}
.Ltmp31:
.LBB0_22:                               # %return
	{
		zext r5, 8
		nop
	}
	{
		mov r0, r5
		ldw r10, sp[20]
	}
	ldd r9, r8, sp[9]               # 4-byte Folded Reload
	ldd r7, r6, sp[8]               # 4-byte Folded Reload
	ldd r5, r4, sp[7]               # 4-byte Folded Reload
	{
		nop
		retsp 22
	}
	# RETURN_REG_HOLDER
	.cc_bottom disk_initialize.function
	.set	disk_initialize.nstackwords,((get_local_tile_id.nstackwords $M read_sswitch_reg.nstackwords $M SendCmd.nstackwords) + 22)
	.globl	disk_initialize.nstackwords
	.set	disk_initialize.maxcores,SendCmd.maxcores $M get_local_tile_id.maxcores $M read_sswitch_reg.maxcores $M 1
	.globl	disk_initialize.maxcores
	.set	disk_initialize.maxtimers,SendCmd.maxtimers $M get_local_tile_id.maxtimers $M read_sswitch_reg.maxtimers $M 0
	.globl	disk_initialize.maxtimers
	.set	disk_initialize.maxchanends,SendCmd.maxchanends $M get_local_tile_id.maxchanends $M read_sswitch_reg.maxchanends $M 0
	.globl	disk_initialize.maxchanends
.Ltmp32:
	.size	disk_initialize, .Ltmp32-disk_initialize
.Lfunc_end0:
	.cfi_endproc

	.globl	disk_status
	.align	4
	.type	disk_status,@function
	.cc_top disk_status.function,disk_status
disk_status:                            # @disk_status
.Lfunc_begin1:
	.loc	1 530 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:530:0
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
.Lxtalabel20:
.Ltmp33:
	.cfi_def_cfa_offset 40
.Ltmp34:
	.cfi_offset 15, 0
	#DEBUG_VALUE: disk_status:IfNum <- R0
.Ltmp35:
	#DEBUG_VALUE: disk_status:IfNum <- R1
	{
		mov r1, r0
		dualentsp 10
	}
.Ltmp36:
	{
		mkmsk r0, 1
		nop
	}
	bt r1, .LBB1_3
# BB#1:                                 # %afterboundcheck
.Lxtalabel21:
	.loc	1 536 3 prologue_end    # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:536:3
.Ltmp37:
	ldw r2, dp[SDif+12]
	bf r2, .LBB1_3
# BB#2:                                 # %afterboundcheck16
.Lxtalabel22:
	{
		ldaw r0, sp[4]
		ldaw r1, sp[9]
	}
	.loc	1 537 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:537:3
	std r0, r1, sp[1]
	{
		ldc r0, 0
		nop
	}
	{
		ldc r1, 13
		stw r0, sp[1]
	}
	{
		mkmsk r3, 1
		nop
	}
.Lxta.call_labels12:
	bl SendCmd
	.loc	1 537 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:537:3
	{
		eq r0, r0, 0
		nop
	}
	{
		eq r0, r0, 0
		nop
	}
.Ltmp38:
.LBB1_3:                                # %return
	{
		nop
		retsp 10
	}
	# RETURN_REG_HOLDER
	.cc_bottom disk_status.function
	.set	disk_status.nstackwords,(SendCmd.nstackwords + 10)
	.globl	disk_status.nstackwords
	.set	disk_status.maxcores,SendCmd.maxcores $M 1
	.globl	disk_status.maxcores
	.set	disk_status.maxtimers,SendCmd.maxtimers $M 0
	.globl	disk_status.maxtimers
	.set	disk_status.maxchanends,SendCmd.maxchanends $M 0
	.globl	disk_status.maxchanends
.Ltmp39:
	.size	disk_status, .Ltmp39-disk_status
.Lfunc_end1:
	.cfi_endproc

	.globl	disk_read
	.align	4
	.type	disk_read,@function
	.cc_top disk_read.function,disk_read
disk_read:                              # @disk_read
.Lfunc_begin2:
	.loc	1 495 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:495:0
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
.Lxtalabel23:
	{
		nop
		dualentsp 14
	}
.Ltmp40:
	.cfi_def_cfa_offset 56
.Ltmp41:
	.cfi_offset 15, 0
	std r5, r4, sp[5]               # 4-byte Folded Spill
.Ltmp42:
	.cfi_offset 4, -16
.Ltmp43:
	.cfi_offset 5, -12
	{
		nop
		stw r6, sp[12]
	}
.Ltmp44:
	.cfi_offset 6, -8
	#DEBUG_VALUE: disk_read:IfNum <- R0
	#DEBUG_VALUE: disk_read:buff <- R1
	#DEBUG_VALUE: disk_read:sector <- R2
	#DEBUG_VALUE: disk_read:count <- R3
	.loc	1 499 3 prologue_end    # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:499:3
.Ltmp45:
	bf r0, .LBB2_3
.Ltmp46:
# BB#1:
	{
		ldc r5, 4
		nop
	}
.LBB2_2:                                # %return
	{
		mov r0, r5
		nop
	}
	bu .LBB2_10
.LBB2_3:                                # %ifdone
.Lxtalabel24:
.Ltmp47:
	#DEBUG_VALUE: disk_read:buff <- R1
	#DEBUG_VALUE: disk_read:sector <- R2
	#DEBUG_VALUE: disk_read:count <- R3
	.loc	1 503 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:503:5
	{
		ldc r0, 0
		nop
	}
	ldaw r11, dp[SDif+16]
	{
		nop
		ld8u r0, r11[r0]
	}
	bt r0, .LBB2_5
.Ltmp48:
# BB#4:                                 # %ifdone
.Lxtalabel25:
	#DEBUG_VALUE: disk_read:buff <- R1
	#DEBUG_VALUE: disk_read:sector <- R2
	#DEBUG_VALUE: disk_read:count <- R3
	{
		ldc r0, 9
		nop
	}
	.loc	1 503 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:503:5
	{
		shl r2, r2, r0
		nop
	}
.Ltmp49:
.LBB2_5:                                # %ifdone
.Lxtalabel26:
	#DEBUG_VALUE: disk_read:buff <- R1
	#DEBUG_VALUE: disk_read:count <- R3
	{
		ldc r0, 2
		nop
	}
	.loc	1 500 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:500:3
	{
		lsu r0, r3, r0
		nop
	}
	bt r0, .LBB2_8
.Ltmp50:
# BB#6:                                 # %iftrue2
.Lxtalabel27:
	#DEBUG_VALUE: disk_read:buff <- R1
	#DEBUG_VALUE: disk_read:count <- R3
	{
		ldaw r6, sp[5]
		nop
	}
	.loc	1 503 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:503:5
	std r6, r1, sp[1]
	{
		ldc r4, 0
		stw r3, sp[1]
	}
	{
		ldc r1, 18
		mkmsk r5, 1
	}
.Ltmp51:
	{
		mov r0, r4
		mov r3, r5
	}
.Ltmp52:
.Lxta.call_labels13:
	bl SendCmd
	bt r0, .LBB2_2
# BB#7:                                 # %ifdone9
.Lxtalabel28:
	{
		ldaw r0, sp[4]
		nop
	}
	.loc	1 504 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:504:5
	std r6, r0, sp[1]
	{
		ldc r1, 12
		stw r4, sp[1]
	}
	{
		mkmsk r3, 1
		mov r0, r4
	}
	{
		mov r2, r4
		nop
	}
	bu .LBB2_9
.LBB2_8:                                # %iffalse
.Lxtalabel29:
.Ltmp53:
	#DEBUG_VALUE: disk_read:buff <- R1
	{
		ldaw r0, sp[5]
		nop
	}
	.loc	1 507 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:507:5
	std r0, r1, sp[1]
	{
		mkmsk r3, 1
		nop
	}
	{
		ldc r0, 0
		stw r3, sp[1]
	}
	{
		ldc r1, 17
		nop
	}
.Ltmp54:
.LBB2_9:                                # %iffalse
.Lxtalabel30:
.Lxta.call_labels14:
	bl SendCmd
	.loc	1 507 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:507:5
	{
		eq r0, r0, 0
		nop
	}
	{
		eq r0, r0, 0
		nop
	}
.Ltmp55:
.LBB2_10:                               # %return
	{
		nop
		ldw r6, sp[12]
	}
	ldd r5, r4, sp[5]               # 4-byte Folded Reload
	{
		nop
		retsp 14
	}
	# RETURN_REG_HOLDER
	.cc_bottom disk_read.function
	.set	disk_read.nstackwords,(SendCmd.nstackwords + 14)
	.globl	disk_read.nstackwords
	.set	disk_read.maxcores,SendCmd.maxcores $M 1
	.globl	disk_read.maxcores
	.set	disk_read.maxtimers,SendCmd.maxtimers $M 0
	.globl	disk_read.maxtimers
	.set	disk_read.maxchanends,SendCmd.maxchanends $M 0
	.globl	disk_read.maxchanends
.Ltmp56:
	.size	disk_read, .Ltmp56-disk_read
.Lfunc_end2:
	.cfi_endproc

	.globl	disk_write
	.align	4
	.type	disk_write,@function
	.cc_top disk_write.function,disk_write
disk_write:                             # @disk_write
.Lfunc_begin3:
	.loc	1 513 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:513:0
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
.Lxtalabel31:
	{
		nop
		dualentsp 14
	}
.Ltmp57:
	.cfi_def_cfa_offset 56
.Ltmp58:
	.cfi_offset 15, 0
	std r5, r4, sp[5]               # 4-byte Folded Spill
.Ltmp59:
	.cfi_offset 4, -16
.Ltmp60:
	.cfi_offset 5, -12
	{
		nop
		stw r6, sp[12]
	}
.Ltmp61:
	.cfi_offset 6, -8
	#DEBUG_VALUE: disk_write:IfNum <- R0
	#DEBUG_VALUE: disk_write:buff <- R1
	#DEBUG_VALUE: disk_write:sector <- R2
	#DEBUG_VALUE: disk_write:count <- R3
.Ltmp62:
	#DEBUG_VALUE: disk_write:count <- undef
	.loc	1 517 3 prologue_end    # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:517:3
	bf r0, .LBB3_3
.Ltmp63:
# BB#1:
	#DEBUG_VALUE: disk_write:count <- undef
	{
		ldc r5, 4
		nop
	}
.LBB3_2:                                # %return
	#DEBUG_VALUE: disk_write:count <- undef
	{
		mov r0, r5
		nop
	}
	bu .LBB3_10
.LBB3_3:                                # %ifdone
.Lxtalabel32:
.Ltmp64:
	#DEBUG_VALUE: disk_write:buff <- R1
	#DEBUG_VALUE: disk_write:sector <- R2
	#DEBUG_VALUE: disk_write:count <- undef
	.loc	1 521 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:521:5
	{
		ldc r0, 0
		nop
	}
	ldaw r11, dp[SDif+16]
	{
		nop
		ld8u r0, r11[r0]
	}
	bt r0, .LBB3_5
.Ltmp65:
# BB#4:                                 # %ifdone
.Lxtalabel33:
	#DEBUG_VALUE: disk_write:buff <- R1
	#DEBUG_VALUE: disk_write:sector <- R2
	#DEBUG_VALUE: disk_write:count <- undef
	{
		ldc r0, 9
		nop
	}
	.loc	1 521 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:521:5
	{
		shl r2, r2, r0
		nop
	}
.Ltmp66:
.LBB3_5:                                # %ifdone
.Lxtalabel34:
	#DEBUG_VALUE: disk_write:buff <- R1
	#DEBUG_VALUE: disk_write:count <- undef
	{
		ldc r0, 2
		nop
	}
	.loc	1 518 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:518:3
	{
		lsu r0, r3, r0
		nop
	}
	bt r0, .LBB3_8
.Ltmp67:
# BB#6:                                 # %iftrue2
.Lxtalabel35:
	#DEBUG_VALUE: disk_write:buff <- R1
	#DEBUG_VALUE: disk_write:count <- undef
	.loc	1 521 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:521:5
	{
		neg r0, r3
		ldaw r6, sp[5]
	}
	.loc	1 521 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:521:5
	std r6, r1, sp[1]
	{
		ldc r4, 0
		stw r0, sp[1]
	}
	{
		ldc r1, 25
		mkmsk r5, 1
	}
.Ltmp68:
	{
		mov r0, r4
		mov r3, r5
	}
.Lxta.call_labels15:
	bl SendCmd
	bt r0, .LBB3_2
# BB#7:                                 # %ifdone9
.Lxtalabel36:
	#DEBUG_VALUE: disk_write:count <- undef
	{
		ldaw r0, sp[4]
		nop
	}
	.loc	1 522 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:522:5
	std r6, r0, sp[1]
	{
		ldc r1, 12
		stw r4, sp[1]
	}
	{
		ldc r3, 2
		mov r0, r4
	}
	{
		mov r2, r4
		nop
	}
	bu .LBB3_9
.LBB3_8:                                # %iffalse
.Lxtalabel37:
.Ltmp69:
	#DEBUG_VALUE: disk_write:buff <- R1
	#DEBUG_VALUE: disk_write:count <- undef
	{
		ldaw r0, sp[5]
		nop
	}
	.loc	1 525 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:525:5
	std r0, r1, sp[1]
	{
		mkmsk r0, 32
		nop
	}
	{
		ldc r0, 0
		stw r0, sp[1]
	}
	{
		ldc r1, 24
		mkmsk r3, 1
	}
.Ltmp70:
.LBB3_9:                                # %iffalse
.Lxtalabel38:
.Lxta.call_labels16:
	bl SendCmd
	.loc	1 525 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:525:5
	{
		eq r0, r0, 0
		nop
	}
	{
		eq r0, r0, 0
		nop
	}
.Ltmp71:
.LBB3_10:                               # %return
	{
		nop
		ldw r6, sp[12]
	}
	ldd r5, r4, sp[5]               # 4-byte Folded Reload
	{
		nop
		retsp 14
	}
	# RETURN_REG_HOLDER
	.cc_bottom disk_write.function
	.set	disk_write.nstackwords,(SendCmd.nstackwords + 14)
	.globl	disk_write.nstackwords
	.set	disk_write.maxcores,SendCmd.maxcores $M 1
	.globl	disk_write.maxcores
	.set	disk_write.maxtimers,SendCmd.maxtimers $M 0
	.globl	disk_write.maxtimers
	.set	disk_write.maxchanends,SendCmd.maxchanends $M 0
	.globl	disk_write.maxchanends
.Ltmp72:
	.size	disk_write, .Ltmp72-disk_write
.Lfunc_end3:
	.cfi_endproc

	.globl	disk_ioctl
	.align	4
	.type	disk_ioctl,@function
	.cc_top disk_ioctl.function,disk_ioctl
disk_ioctl:                             # @disk_ioctl
.Lfunc_begin4:
	.loc	1 543 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:543:0
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
.Lxtalabel39:
	{
		nop
		dualentsp 6
	}
.Ltmp73:
	.cfi_def_cfa_offset 24
.Ltmp74:
	.cfi_offset 15, 0
	std r5, r4, sp[1]               # 4-byte Folded Spill
.Ltmp75:
	.cfi_offset 4, -16
.Ltmp76:
	.cfi_offset 5, -12
	std r7, r6, sp[2]               # 4-byte Folded Spill
.Ltmp77:
	.cfi_offset 6, -8
.Ltmp78:
	.cfi_offset 7, -4
	#DEBUG_VALUE: disk_ioctl:IfNum <- R0
	#DEBUG_VALUE: disk_ioctl:ctrl <- R1
	#DEBUG_VALUE: disk_ioctl:RetVal <- R2
.Ltmp79:
	#DEBUG_VALUE: disk_ioctl:RetVal <- R6
	#DEBUG_VALUE: disk_ioctl:ctrl <- R7
	{
		mov r6, r2
		mov r7, r1
	}
.Ltmp80:
	{
		ldc r4, 4
		nop
	}
	bt r0, .LBB4_10
.Ltmp81:
# BB#1:                                 # %ifdone
.Lxtalabel40:
	#DEBUG_VALUE: disk_ioctl:ctrl <- R7
	#DEBUG_VALUE: disk_ioctl:RetVal <- R6
	{
		ldc r5, 0
		nop
	}
	.loc	1 547 3 prologue_end    # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:547:3
.Ltmp82:
	{
		mov r0, r5
		nop
	}
.Lxta.call_labels17:
	bl disk_status
	.loc	1 547 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:547:3
	{
		zext r0, 1
		nop
	}
	.loc	1 547 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:547:3
	bf r0, .LBB4_3
.Ltmp83:
# BB#2:
	{
		mkmsk r4, 2
		nop
	}
	bu .LBB4_10
.LBB4_3:                                # %ifdone3
.Lxtalabel41:
.Ltmp84:
	#DEBUG_VALUE: disk_ioctl:ctrl <- R7
	#DEBUG_VALUE: disk_ioctl:RetVal <- R6
	bf r7, .LBB4_9
.Ltmp85:
# BB#4:                                 # %ifdone3
.Lxtalabel42:
	#DEBUG_VALUE: disk_ioctl:ctrl <- R7
	#DEBUG_VALUE: disk_ioctl:RetVal <- R6
	{
		eq r0, r7, 3
		nop
	}
	bf r0, .LBB4_5
.Ltmp86:
# BB#7:                                 # %switchcase11
.Lxtalabel43:
	#DEBUG_VALUE: disk_ioctl:RetVal <- R6
	#DEBUG_VALUE: Val <- 128
	#DEBUG_VALUE: i <- 0
	ldc r1, 128
	bu .LBB4_8
.Ltmp87:
.LBB4_5:                                # %ifdone3
.Lxtalabel44:
	#DEBUG_VALUE: disk_ioctl:ctrl <- R7
	#DEBUG_VALUE: disk_ioctl:RetVal <- R6
	{
		eq r0, r7, 1
		nop
	}
	bf r0, .LBB4_10
.Ltmp88:
# BB#6:                                 # %LoopBody.preheader
	#DEBUG_VALUE: disk_ioctl:RetVal <- R6
	.loc	1 554 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:554:0
	ldw r1, dp[SDif+20]
.Ltmp89:
.LBB4_8:                                # %return
	.loc	1 558 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:558:0
	{
		mov r0, r6
		nop
	}
	bl __misaligned_store
.Ltmp90:
.LBB4_9:                                # %return
	{
		mov r4, r5
		nop
	}
.LBB4_10:                               # %return
	{
		mov r0, r4
		nop
	}
	ldd r7, r6, sp[2]               # 4-byte Folded Reload
	ldd r5, r4, sp[1]               # 4-byte Folded Reload
	{
		nop
		retsp 6
	}
	# RETURN_REG_HOLDER
	.cc_bottom disk_ioctl.function
	.set	disk_ioctl.nstackwords,((disk_status.nstackwords $M __misaligned_store.nstackwords) + 6)
	.globl	disk_ioctl.nstackwords
	.set	disk_ioctl.maxcores,disk_status.maxcores $M 1
	.globl	disk_ioctl.maxcores
	.set	disk_ioctl.maxtimers,disk_status.maxtimers $M 0
	.globl	disk_ioctl.maxtimers
	.set	disk_ioctl.maxchanends,disk_status.maxchanends $M 0
	.globl	disk_ioctl.maxchanends
.Ltmp91:
	.size	disk_ioctl, .Ltmp91-disk_ioctl
.Lfunc_end4:
	.cfi_endproc

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI5_0.data,.LCPI5_0
	.align	4
	.type	.LCPI5_0,@object
	.size	.LCPI5_0, 4
.LCPI5_0:
	.long	4294967264              # 0xffffffe0
	.cc_bottom .LCPI5_0.data
	.cc_top .LCPI5_1.data,.LCPI5_1
	.align	4
	.type	.LCPI5_1,@object
	.size	.LCPI5_1, 4
.LCPI5_1:
	.long	4000000                 # 0x3d0900
	.cc_bottom .LCPI5_1.data
	.cc_top .LCPI5_2.data,.LCPI5_2
	.align	4
	.type	.LCPI5_2,@object
	.size	.LCPI5_2, 4
.LCPI5_2:
	.long	268435455               # 0xfffffff
	.cc_bottom .LCPI5_2.data
	.cc_top .LCPI5_3.data,.LCPI5_3
	.align	4
	.type	.LCPI5_3,@object
	.size	.LCPI5_3, 4
.LCPI5_3:
	.long	400000                  # 0x61a80
	.cc_bottom .LCPI5_3.data
	.cc_top .LCPI5_4.data,.LCPI5_4
	.align	4
	.type	.LCPI5_4,@object
	.size	.LCPI5_4, 4
.LCPI5_4:
	.long	4294967288              # 0xfffffff8
	.cc_bottom .LCPI5_4.data
	.cc_top .LCPI5_5.data,.LCPI5_5
	.align	4
	.type	.LCPI5_5,@object
	.size	.LCPI5_5, 4
.LCPI5_5:
	.long	286331153               # 0x11111111
	.cc_bottom .LCPI5_5.data
	.cc_top .LCPI5_6.data,.LCPI5_6
	.align	4
	.type	.LCPI5_6,@object
	.size	.LCPI5_6, 4
.LCPI5_6:
	.long	50529027                # 0x3030303
	.cc_bottom .LCPI5_6.data
	.cc_top .LCPI5_7.data,.LCPI5_7
	.align	4
	.type	.LCPI5_7,@object
	.size	.LCPI5_7, 4
.LCPI5_7:
	.long	4294967280              # 0xfffffff0
	.cc_bottom .LCPI5_7.data
	.cc_top .LCPI5_8.data,.LCPI5_8
	.align	4
	.type	.LCPI5_8,@object
	.size	.LCPI5_8, 4
.LCPI5_8:
	.long	4290967295              # 0xffc2f6ff
	.cc_bottom .LCPI5_8.data
	.text
	.align	4
	.type	SendCmd,@function
	.cc_top SendCmd.function,SendCmd
SendCmd:                                # @SendCmd
.Lfunc_begin5:
	.loc	1 75 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:75:0
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
.Lxtalabel45:
	{
		nop
		dualentsp 28
	}
.Ltmp92:
	.cfi_def_cfa_offset 112
.Ltmp93:
	.cfi_offset 15, 0
	std r5, r4, sp[10]              # 4-byte Folded Spill
.Ltmp94:
	.cfi_offset 4, -32
.Ltmp95:
	.cfi_offset 5, -28
	std r7, r6, sp[11]              # 4-byte Folded Spill
.Ltmp96:
	.cfi_offset 6, -24
.Ltmp97:
	.cfi_offset 7, -20
	{
		nop
		stw r8, sp[24]
	}
	{
		nop
		stw r9, sp[25]
	}
.Ltmp98:
	.cfi_offset 8, -16
.Ltmp99:
	.cfi_offset 9, -12
	{
		nop
		stw r10, sp[26]
	}
.Ltmp100:
	.cfi_offset 10, -8
	{
		mov r11, r1
		stw r3, sp[12]
	}
	{
		nop
		stw r11, sp[6]
	}
.Ltmp101:
	#DEBUG_VALUE: Crc0 <- 0
	{
		nop
		ldw r1, sp[30]
	}
	{
		nop
		ldw r3, sp[31]
	}
	{
		nop
		stw r3, sp[9]
	}
	{
		ldc r1, 24
		stw r1, sp[15]
	}
	.loc	1 85 0 prologue_end     # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:85:0
.Ltmp102:
	mul r0, r0, r1
	ldaw r1, dp[SDif]
	{
		add r10, r1, r0
		nop
	}
	{
		add r0, r10, 4
		nop
	}
	{
		nop
		stw r0, sp[19]
	}
	{
		nop
		ldw r1, r10[1]
	}
	.loc	1 85 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:85:0
	{
		setc res[r1], 3
		nop
	}
	ldc r0, 64
	.loc	1 86 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:86:0
	{
		or r0, r11, r0
		nop
	}
	.loc	1 86 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:86:0
	{
		bitrev r0, r0
		nop
	}
	.loc	1 86 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:86:0
	{
		shr r5, r0, 24
		nop
	}
.Ltmp103:
	#DEBUG_VALUE: i <- R5
	ldc r3, 72
	{
		ldc r0, 0
		nop
	}
	.loc	1 87 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:87:0
	{
		mov r9, r0
		nop
	}
	crc8 r9, r3, r5, r3
	{
		nop
		ldw r6, r10[0]
	}
.Ltmp104:
	#DEBUG_VALUE: time <- R7
	.loc	1 89 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:3
.Lxta.endpoint_labels5:
	{
		out res[r6], r0
		gettime r7
	}
.Ltmp105:
	#DEBUG_VALUE: time <- R8
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	{
		add r8, r7, 10
		get r11, id
	}
.Ltmp106:
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	ldaw r3, dp[__timers]
	{
		nop
		ldw r3, r3[r11]
	}
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	{
		setd res[r3], r8
		nop
	}
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	{
		setc res[r3], 9
		nop
	}
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
.Ltmp107:
	{
		in r11, res[r3]
		nop
	}
	.loc	1 89 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:3
	{
		outshr res[r1], r5
		mkmsk r8, 1
	}
.Ltmp108:
	.loc	1 89 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:3
	{
		out res[r6], r8
		nop
	}
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	ldaw r11, r7[5]
.Ltmp109:
	#DEBUG_VALUE: time <- R11
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	{
		setd res[r3], r11
		nop
	}
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
.Ltmp110:
	{
		in r11, res[r3]
		nop
	}
.Ltmp111:
	#DEBUG_VALUE: SendCmd:Arg <- R11
	.loc	1 90 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:90:0
.Lxta.endpoint_labels6:
	{
		out res[r6], r0
		bitrev r11, r2
	}
.Ltmp112:
	.loc	1 91 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:0
	{
		gettime r2
		nop
	}
.Ltmp113:
	#DEBUG_VALUE: time <- R2
	.loc	1 91 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:0
	{
		add r7, r2, 10
		nop
	}
.Ltmp114:
	#DEBUG_VALUE: time <- R7
	.loc	1 91 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:0
	{
		setd res[r3], r7
		nop
	}
	.loc	1 91 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:0
.Ltmp115:
	{
		in r7, res[r3]
		nop
	}
.Ltmp116:
	.loc	1 91 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:3
	{
		outshr res[r1], r5
		nop
	}
	.loc	1 91 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:3
	{
		out res[r6], r8
		nop
	}
	.loc	1 91 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:0
	ldaw r2, r2[5]
.Ltmp117:
	#DEBUG_VALUE: time <- R2
	.loc	1 91 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:0
	{
		setd res[r3], r2
		nop
	}
	.loc	1 91 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:91:0
.Ltmp118:
	{
		in r2, res[r3]
		nop
	}
.Ltmp119:
	#DEBUG_VALUE: time <- R2
	.loc	1 93 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:3
.Lxta.endpoint_labels7:
	{
		out res[r6], r0
		gettime r2
	}
.Ltmp120:
	.loc	1 93 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:0
	{
		add r7, r2, 10
		nop
	}
.Ltmp121:
	#DEBUG_VALUE: time <- R7
	.loc	1 93 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:0
	{
		setd res[r3], r7
		nop
	}
	.loc	1 93 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:0
.Ltmp122:
	{
		in r7, res[r3]
		nop
	}
.Ltmp123:
	.loc	1 93 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:3
	{
		outshr res[r1], r5
		nop
	}
	.loc	1 93 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:3
	{
		out res[r6], r8
		nop
	}
	.loc	1 93 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:0
	ldaw r2, r2[5]
.Ltmp124:
	#DEBUG_VALUE: time <- R2
	.loc	1 93 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:0
	{
		setd res[r3], r2
		nop
	}
	.loc	1 93 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:93:0
.Ltmp125:
	{
		in r2, res[r3]
		nop
	}
.Ltmp126:
	#DEBUG_VALUE: time <- R2
	.loc	1 95 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:3
.Lxta.endpoint_labels8:
	{
		out res[r6], r0
		gettime r2
	}
.Ltmp127:
	.loc	1 95 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:0
	{
		add r7, r2, 10
		nop
	}
.Ltmp128:
	#DEBUG_VALUE: time <- R7
	.loc	1 95 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:0
	{
		setd res[r3], r7
		nop
	}
	.loc	1 95 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:0
.Ltmp129:
	{
		in r7, res[r3]
		nop
	}
.Ltmp130:
	.loc	1 95 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:3
	{
		outshr res[r1], r5
		nop
	}
	.loc	1 95 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:3
	{
		out res[r6], r8
		nop
	}
	.loc	1 95 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:0
	ldaw r2, r2[5]
.Ltmp131:
	#DEBUG_VALUE: time <- R2
	.loc	1 95 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:0
	{
		setd res[r3], r2
		nop
	}
	.loc	1 95 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:95:0
.Ltmp132:
	{
		in r2, res[r3]
		nop
	}
.Ltmp133:
	#DEBUG_VALUE: time <- R2
	.loc	1 97 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:3
.Lxta.endpoint_labels9:
	{
		out res[r6], r0
		gettime r2
	}
.Ltmp134:
	.loc	1 97 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:0
	{
		add r7, r2, 10
		nop
	}
.Ltmp135:
	#DEBUG_VALUE: time <- R7
	.loc	1 97 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:0
	{
		setd res[r3], r7
		nop
	}
	.loc	1 97 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:0
.Ltmp136:
	{
		in r7, res[r3]
		nop
	}
.Ltmp137:
	.loc	1 97 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:3
	{
		outshr res[r1], r5
		nop
	}
	.loc	1 97 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:3
	{
		out res[r6], r8
		nop
	}
	.loc	1 97 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:0
	ldaw r2, r2[5]
.Ltmp138:
	#DEBUG_VALUE: time <- R2
	.loc	1 97 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:0
	{
		setd res[r3], r2
		nop
	}
	.loc	1 97 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:97:0
.Ltmp139:
	{
		in r2, res[r3]
		nop
	}
.Ltmp140:
	#DEBUG_VALUE: time <- R2
	.loc	1 99 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:3
.Lxta.endpoint_labels10:
	{
		out res[r6], r0
		gettime r2
	}
.Ltmp141:
	.loc	1 99 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:0
	{
		add r7, r2, 10
		nop
	}
.Ltmp142:
	#DEBUG_VALUE: time <- R7
	.loc	1 99 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:0
	{
		setd res[r3], r7
		nop
	}
	.loc	1 99 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:0
.Ltmp143:
	{
		in r7, res[r3]
		nop
	}
.Ltmp144:
	.loc	1 99 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:3
	{
		outshr res[r1], r5
		nop
	}
	.loc	1 99 3                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:3
	{
		out res[r6], r8
		nop
	}
	.loc	1 99 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:0
	ldaw r2, r2[5]
.Ltmp145:
	#DEBUG_VALUE: time <- R2
	.loc	1 99 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:0
	{
		setd res[r3], r2
		nop
	}
	.loc	1 99 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:99:0
.Ltmp146:
	{
		in r2, res[r3]
		nop
	}
.Ltmp147:
	#DEBUG_VALUE: time <- R2
	.loc	1 101 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:3
.Lxta.endpoint_labels11:
	{
		out res[r6], r0
		gettime r2
	}
.Ltmp148:
	.loc	1 101 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:0
	{
		add r7, r2, 10
		nop
	}
.Ltmp149:
	#DEBUG_VALUE: time <- R7
	.loc	1 101 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:0
	{
		setd res[r3], r7
		nop
	}
	.loc	1 101 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:0
.Ltmp150:
	{
		in r7, res[r3]
		nop
	}
.Ltmp151:
	.loc	1 101 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:3
	{
		outshr res[r1], r5
		nop
	}
	.loc	1 101 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:3
	{
		out res[r6], r8
		nop
	}
	.loc	1 101 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:0
	ldaw r1, r2[5]
.Ltmp152:
	#DEBUG_VALUE: time <- R1
	.loc	1 101 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:0
	{
		setd res[r3], r1
		nop
	}
	.loc	1 101 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:101:0
.Ltmp153:
	{
		in r1, res[r3]
		nop
	}
.Ltmp154:
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: time <- R2
	.loc	1 103 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:3
.Lxta.endpoint_labels12:
	{
		out res[r6], r0
		gettime r2
	}
.Ltmp155:
	.loc	1 103 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:0
	{
		add r1, r2, 10
		nop
	}
.Ltmp156:
	#DEBUG_VALUE: time <- R1
	.loc	1 103 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:0
	{
		setd res[r3], r1
		nop
	}
	.loc	1 103 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:0
.Ltmp157:
	{
		in r1, res[r3]
		nop
	}
.Ltmp158:
	{
		nop
		ldw r1, r10[1]
	}
	.loc	1 103 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:3
	{
		outshr res[r1], r5
		nop
	}
	.loc	1 103 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:3
	{
		out res[r6], r8
		nop
	}
	.loc	1 103 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:0
	ldaw r2, r2[5]
.Ltmp159:
	#DEBUG_VALUE: time <- R2
	.loc	1 103 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:0
	{
		setd res[r3], r2
		nop
	}
	.loc	1 103 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:103:0
.Ltmp160:
	{
		in r2, res[r3]
		nop
	}
.Ltmp161:
	#DEBUG_VALUE: i <- 32
	{
		nop
		ldw r2, r10[0]
	}
	ldw r5, cp[.LCPI5_0]
	{
		mov r6, r11
		nop
	}
.LBB5_1:                                # %LoopBody
                                        # =>This Inner Loop Header: Depth=1
	#DEBUG_VALUE: Crc0 <- 0
	#DEBUG_VALUE: i <- 32
.Ltmp162:
	#DEBUG_VALUE: SendCmd:Arg <- R11
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: time <- R7
	.loc	1 104 25                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:25
.Lxta.endpoint_labels13:
	{
		out res[r2], r0
		gettime r7
	}
.Ltmp163:
	#DEBUG_VALUE: time <- R8
	{
		mov r4, r8
		add r8, r7, 10
	}
.Ltmp164:
	.loc	1 104 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:0
	{
		setd res[r3], r8
		nop
	}
	.loc	1 104 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:0
.Ltmp165:
	{
		in r8, res[r3]
		nop
	}
.Ltmp166:
	#DEBUG_VALUE: SendCmd:Arg <- R6
	{
		outshr res[r1], r6
		mov r8, r4
	}
.Ltmp167:
	.loc	1 104 25                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:25
	{
		out res[r2], r8
		nop
	}
	.loc	1 104 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:0
	ldaw r7, r7[5]
.Ltmp168:
	#DEBUG_VALUE: time <- R7
	.loc	1 104 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:0
	{
		setd res[r3], r7
		nop
	}
	.loc	1 104 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:0
	{
		setc res[r3], 9
		nop
	}
	.loc	1 104 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:0
.Ltmp169:
	{
		in r7, res[r3]
		add r5, r5, 1
	}
.Ltmp170:
.xtaloop 32
	# LOOPMARKER 0
	.loc	1 104 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:104:0
	bt r5, .LBB5_1
.Ltmp171:
# BB#2:                                 # %ifdone
.Lxtalabel46:
	#DEBUG_VALUE: Crc0 <- 0
	#DEBUG_VALUE: i <- 32
	#DEBUG_VALUE: RespBitCount <- 0
	{
		nop
		ldw r3, sp[12]
	}
	{
		eq r4, r3, 3
		eq r5, r3, 0
	}
	{
		mov r5, r3
		stw r5, sp[18]
	}
	ldc r3, 72
	.loc	1 92 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:92:0
	crc32 r9, r11, r3
.Ltmp172:
	#DEBUG_VALUE: Crc0 <- R9
	.loc	1 94 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:94:0
	crc32 r9, r0, r3
.Ltmp173:
	ldc r3, 128
.Ltmp174:
	#DEBUG_VALUE: Crc0 <- R3
	.loc	1 96 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:96:0
	{
		or r3, r9, r3
		mov r11, r0
	}
.Ltmp175:
	{
		nop
		stw r4, sp[5]
	}
	.loc	1 100 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:100:0
.Ltmp176:
	bt r4, .LBB5_3
# BB#4:                                 # %ifdone
.Lxtalabel47:
	{
		ldc r0, 48
		nop
	}
	bu .LBB5_5
.LBB5_3:
	ldc r0, 136
.LBB5_5:                                # %ifdone
.Lxtalabel48:
.Ltmp177:
	#DEBUG_VALUE: Crc0 <- R3
	#DEBUG_VALUE: i <- 32
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespBitLen <- [SP+28]
.Lxta.endpoint_labels14:
	{
		out res[r2], r11
		stw r0, sp[7]
	}
.Ltmp178:
	#DEBUG_VALUE: time <- R0
	.loc	1 105 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:0
	{
		gettime r0
		mov r4, r11
	}
.Ltmp179:
	#DEBUG_VALUE: time <- R6
	.loc	1 105 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:0
	{
		add r6, r0, 10
		get r11, id
	}
.Ltmp180:
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	ldaw r7, dp[__timers]
	{
		nop
		ldw r11, r7[r11]
	}
	.loc	1 105 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:0
.Ltmp181:
	{
		setd res[r11], r6
		nop
	}
	.loc	1 105 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:0
	{
		setc res[r11], 9
		nop
	}
	.loc	1 105 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:0
.Ltmp182:
	{
		in r6, res[r11]
		nop
	}
	.loc	1 105 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:3
	{
		outshr res[r1], r3
		nop
	}
.Ltmp183:
	.loc	1 105 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:3
	{
		out res[r2], r8
		nop
	}
	.loc	1 105 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:0
	ldaw r0, r0[5]
.Ltmp184:
	#DEBUG_VALUE: time <- R0
	.loc	1 105 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:0
	{
		setd res[r11], r0
		nop
	}
	.loc	1 105 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:105:0
.Ltmp185:
	{
		in r0, res[r11]
		nop
	}
.Ltmp186:
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: time <- R0
	.loc	1 107 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:3
.Lxta.endpoint_labels15:
	{
		out res[r2], r4
		gettime r0
	}
.Ltmp187:
	.loc	1 107 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:0
	{
		add r6, r0, 10
		nop
	}
.Ltmp188:
	#DEBUG_VALUE: time <- R6
	.loc	1 107 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:0
	{
		setd res[r11], r6
		nop
	}
	.loc	1 107 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:0
.Ltmp189:
	{
		in r6, res[r11]
		nop
	}
.Ltmp190:
	.loc	1 107 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:3
	{
		outshr res[r1], r3
		nop
	}
	.loc	1 107 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:3
	{
		out res[r2], r8
		nop
	}
	.loc	1 107 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:0
	ldaw r0, r0[5]
.Ltmp191:
	#DEBUG_VALUE: time <- R0
	.loc	1 107 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:0
	{
		setd res[r11], r0
		nop
	}
	.loc	1 107 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:107:0
.Ltmp192:
	{
		in r0, res[r11]
		nop
	}
.Ltmp193:
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: time <- R0
	.loc	1 109 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:3
.Lxta.endpoint_labels16:
	{
		out res[r2], r4
		gettime r0
	}
.Ltmp194:
	.loc	1 109 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:0
	{
		add r6, r0, 10
		nop
	}
.Ltmp195:
	#DEBUG_VALUE: time <- R6
	.loc	1 109 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:0
	{
		setd res[r11], r6
		nop
	}
	.loc	1 109 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:0
.Ltmp196:
	{
		in r6, res[r11]
		nop
	}
.Ltmp197:
	.loc	1 109 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:3
	{
		outshr res[r1], r3
		nop
	}
	.loc	1 109 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:3
	{
		out res[r2], r8
		nop
	}
	.loc	1 109 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:0
	ldaw r0, r0[5]
.Ltmp198:
	#DEBUG_VALUE: time <- R0
	.loc	1 109 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:0
	{
		setd res[r11], r0
		nop
	}
	.loc	1 109 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:109:0
.Ltmp199:
	{
		in r0, res[r11]
		nop
	}
.Ltmp200:
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: time <- R0
	.loc	1 111 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:3
.Lxta.endpoint_labels17:
	{
		out res[r2], r4
		gettime r0
	}
.Ltmp201:
	.loc	1 111 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:0
	{
		add r6, r0, 10
		nop
	}
.Ltmp202:
	#DEBUG_VALUE: time <- R6
	.loc	1 111 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:0
	{
		setd res[r11], r6
		nop
	}
	.loc	1 111 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:0
.Ltmp203:
	{
		in r6, res[r11]
		nop
	}
.Ltmp204:
	.loc	1 111 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:3
	{
		outshr res[r1], r3
		nop
	}
	.loc	1 111 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:3
	{
		out res[r2], r8
		nop
	}
	.loc	1 111 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:0
	ldaw r0, r0[5]
.Ltmp205:
	#DEBUG_VALUE: time <- R0
	.loc	1 111 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:0
	{
		setd res[r11], r0
		nop
	}
	.loc	1 111 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:111:0
.Ltmp206:
	{
		in r0, res[r11]
		nop
	}
.Ltmp207:
	#DEBUG_VALUE: time <- R0
	.loc	1 113 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:3
.Lxta.endpoint_labels18:
	{
		out res[r2], r4
		gettime r0
	}
.Ltmp208:
	.loc	1 113 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:0
	{
		add r6, r0, 10
		nop
	}
.Ltmp209:
	#DEBUG_VALUE: time <- R6
	.loc	1 113 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:0
	{
		setd res[r11], r6
		nop
	}
	.loc	1 113 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:0
.Ltmp210:
	{
		in r6, res[r11]
		nop
	}
.Ltmp211:
	.loc	1 113 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:3
	{
		outshr res[r1], r3
		nop
	}
	.loc	1 113 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:3
	{
		out res[r2], r8
		nop
	}
	.loc	1 113 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:0
	ldaw r0, r0[5]
.Ltmp212:
	#DEBUG_VALUE: time <- R0
	.loc	1 113 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:0
	{
		setd res[r11], r0
		nop
	}
	.loc	1 113 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:113:0
.Ltmp213:
	{
		in r0, res[r11]
		nop
	}
.Ltmp214:
	#DEBUG_VALUE: time <- R0
	.loc	1 115 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:3
.Lxta.endpoint_labels19:
	{
		out res[r2], r4
		gettime r0
	}
.Ltmp215:
	.loc	1 115 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:0
	{
		add r6, r0, 10
		nop
	}
.Ltmp216:
	#DEBUG_VALUE: time <- R6
	.loc	1 115 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:0
	{
		setd res[r11], r6
		nop
	}
	.loc	1 115 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:0
.Ltmp217:
	{
		in r6, res[r11]
		nop
	}
.Ltmp218:
	.loc	1 115 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:3
	{
		outshr res[r1], r3
		nop
	}
	.loc	1 115 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:3
	{
		out res[r2], r8
		nop
	}
	.loc	1 115 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:0
	ldaw r0, r0[5]
.Ltmp219:
	#DEBUG_VALUE: time <- R0
	.loc	1 115 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:0
	{
		setd res[r11], r0
		nop
	}
	.loc	1 115 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:115:0
.Ltmp220:
	{
		in r0, res[r11]
		nop
	}
.Ltmp221:
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: time <- R0
	.loc	1 117 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:3
.Lxta.endpoint_labels20:
	{
		out res[r2], r4
		gettime r0
	}
.Ltmp222:
	.loc	1 117 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:0
	{
		add r6, r0, 10
		nop
	}
.Ltmp223:
	#DEBUG_VALUE: time <- R6
	.loc	1 117 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:0
	{
		setd res[r11], r6
		nop
	}
	.loc	1 117 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:0
.Ltmp224:
	{
		in r6, res[r11]
		nop
	}
.Ltmp225:
	.loc	1 117 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:3
	{
		outshr res[r1], r3
		nop
	}
	.loc	1 117 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:3
	{
		out res[r2], r8
		nop
	}
	.loc	1 117 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:0
	ldaw r0, r0[5]
.Ltmp226:
	#DEBUG_VALUE: time <- R0
	.loc	1 117 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:0
	{
		setd res[r11], r0
		nop
	}
	.loc	1 117 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:117:0
.Ltmp227:
	{
		in r0, res[r11]
		nop
	}
.Ltmp228:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: time <- R1
	.loc	1 119 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:3
.Lxta.endpoint_labels21:
	{
		out res[r2], r4
		gettime r1
	}
.Ltmp229:
	.loc	1 119 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:0
	{
		add r0, r1, 10
		nop
	}
.Ltmp230:
	#DEBUG_VALUE: time <- R0
	.loc	1 119 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:0
	{
		setd res[r11], r0
		nop
	}
	.loc	1 119 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:0
.Ltmp231:
	{
		in r0, res[r11]
		ldw r7, sp[19]
	}
.Ltmp232:
	{
		nop
		ldw r6, r7[0]
	}
	.loc	1 119 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:3
	{
		outshr res[r6], r3
		ldw r2, r10[0]
	}
	.loc	1 119 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:3
	{
		out res[r2], r8
		nop
	}
	.loc	1 119 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:0
	ldaw r1, r1[5]
.Ltmp233:
	#DEBUG_VALUE: time <- R1
	.loc	1 119 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:0
	{
		setd res[r11], r1
		nop
	}
	.loc	1 119 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:119:0
.Ltmp234:
	{
		in r1, res[r11]
		nop
	}
.Ltmp235:
	.loc	1 121 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:121:3
	ldw r1, dp[Is_XS1_G_Core]
	bf r1, .LBB5_7
.Ltmp236:
# BB#6:                                 # %iftrue484
.Lxtalabel49:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespBitLen <- [SP+28]
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	.loc	1 122 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:122:0
	{
		mov r0, r6
		nop
	}
.Lxta.call_labels18:
	bl set_port_pull_up
	{
		nop
		ldw r6, r7[0]
	}
.Ltmp237:
.LBB5_7:                                # %ifdone485
.Lxtalabel50:
	{
		nop
		ldw r0, sp[29]
	}
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
.Ltmp238:
	#DEBUG_VALUE: RespBitLen <- [SP+28]
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	{
		setc res[r6], 1
		stw r4, sp[13]
	}
	.loc	1 123 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:123:0
.Ltmp239:
.Lxta.endpoint_labels22:
	{
		in r1, res[r6]
		nop
	}
	bt r5, .LBB5_16
.Ltmp240:
# BB#8:                                 # %ifdone485
.Lxtalabel51:
	{
		lss r1, r0, r8
		nop
	}
	bf r1, .LBB5_16
# BB#9:
	{
		nop
		stw r10, sp[8]
	}
	bu .LBB5_10
.LBB5_16:                               # %LoopBody505.preheader
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
.Ltmp241:
	#DEBUG_VALUE: RespBitLen <- [SP+28]
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	{
		ldc r1, 9
		ldw r2, sp[18]
	}
	{
		eq r4, r2, 0
		ldc r2, 0
	}
.Ltmp242:
	#DEBUG_VALUE: DatBytesLen <- [SP+16]
	.loc	1 112 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:112:0
	{
		lss r9, r2, r0
		shl r0, r0, r1
	}
	{
		nop
		stw r0, sp[4]
	}
	.loc	1 126 25                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:126:25
.Ltmp243:
	{
		get r11, id
		ldw r2, r10[0]
	}
.Ltmp244:
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	ldaw r0, dp[__timers]
	.loc	1 129 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:129:0
.Ltmp245:
	{
		add r0, r10, 8
		ldw r3, r0[r11]
	}
	{
		nop
		stw r0, sp[17]
	}
	{
		ldc r0, 0
		stw r10, sp[8]
	}
	{
		mkmsk r5, 32
		mkmsk r1, 8
	}
	{
		mkmsk r7, 1
		mov r11, r1
	}
	{
		nop
		stw r0, sp[13]
	}
	{
		nop
		stw r0, sp[10]
	}
	{
		nop
		stw r0, sp[18]
	}
                                        # implicit-def: R1
	{
		nop
		stw r1, sp[16]
	}
	{
		mov r8, r6
		stw r0, sp[19]
	}
	{
		nop
		stw r8, sp[14]
	}
.Ltmp246:
.LBB5_17:                               # %LoopBody505
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_47 Depth 2
.Lxtalabel52:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespBitLen <- [SP+28]
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: DatBytesLen <- [SP+16]
	#DEBUG_VALUE: time <- R6
	.loc	1 126 25                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:126:25
.Lxta.endpoint_labels23:
	{
		out res[r2], r0
		gettime r6
	}
.Ltmp247:
	.loc	1 128 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:128:0
	{
		add r10, r6, 10
		nop
	}
.Ltmp248:
	#DEBUG_VALUE: time <- R10
	.loc	1 129 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:129:0
	{
		setd res[r3], r10
		nop
	}
	.loc	1 129 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:129:0
	{
		setc res[r3], 9
		nop
	}
	.loc	1 129 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:129:0
.Ltmp249:
.Lxta.endpoint_labels24:
	{
		in r10, res[r3]
		nop
	}
.Ltmp250:
	.loc	1 130 25                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:130:25
.Lxta.endpoint_labels25:
	{
		out res[r2], r7
		nop
	}
	.loc	1 131 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:131:0
	ldaw r6, r6[5]
.Ltmp251:
	#DEBUG_VALUE: time <- R6
	.loc	1 132 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:132:0
	{
		setd res[r3], r6
		nop
	}
	.loc	1 132 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:132:0
.Ltmp252:
.Lxta.endpoint_labels26:
	{
		in r6, res[r3]
		ldw r10, sp[19]
	}
.Ltmp253:
	#DEBUG_VALUE: i <- R10
	.loc	1 134 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:134:0
	{
		add r10, r10, 1
		eq r6, r4, 1
	}
.Ltmp254:
	{
		nop
		ldw r1, sp[15]
	}
	.loc	1 135 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:135:0
	bf r6, .LBB5_18
.Ltmp255:
# BB#22:                                # %switchcase
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel53:
	#DEBUG_VALUE: i <- R10
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespBitLen <- [SP+28]
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: DatBytesLen <- [SP+16]
	.loc	1 138 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:138:0
	{
		setc res[r8], 1
		shl r4, r11, 24
	}
	.loc	1 138 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:138:0
.Lxta.endpoint_labels27:
	{
		inshr r4, res[r8]
		nop
	}
	.loc	1 138 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:138:0
	{
		shr r11, r4, 24
		mkmsk r4, 8
	}
	.loc	1 139 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:139:9
	{
		eq r4, r11, r4
		nop
	}
	.loc	1 139 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:139:9
	bf r4, .LBB5_23
.Ltmp256:
# BB#26:                                # %iftrue538
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel54:
	#DEBUG_VALUE: i <- R10
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespBitLen <- [SP+28]
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: DatBytesLen <- [SP+16]
	ldw r4, cp[.LCPI5_1]
	.loc	1 141 11                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:141:11
	{
		eq r4, r10, r4
		nop
	}
	.loc	1 141 11                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:141:11
	bt r4, .LBB5_27
.Ltmp257:
# BB#28:                                #   in Loop: Header=BB5_17 Depth=1
	{
		mov r4, r7
		stw r10, sp[19]
	}
	bu .LBB5_20
.LBB5_18:                               # %LoopBody505
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel55:
	{
		eq r6, r4, 2
		nop
	}
	bf r6, .LBB5_19
# BB#24:                                # %switchcase531
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel56:
	.loc	1 148 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:148:0
	{
		setc res[r8], 1
		shl r4, r11, 24
	}
	.loc	1 148 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:148:0
.Lxta.endpoint_labels28:
	{
		inshr r4, res[r8]
		nop
	}
	.loc	1 148 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:148:0
	{
		shr r11, r4, 24
		ldw r6, sp[18]
	}
	.loc	1 150 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:150:9
	{
		add r6, r6, 1
		nop
	}
.Ltmp258:
	#DEBUG_VALUE: RespBitCount <- R6
	.loc	1 150 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:150:9
	{
		mov r4, r6
		nop
	}
	{
		zext r4, 3
		nop
	}
	.loc	1 150 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:150:9
	bf r4, .LBB5_29
.Ltmp259:
# BB#25:                                #   in Loop: Header=BB5_17 Depth=1
	{
		nop
		stw r10, sp[19]
	}
	{
		ldc r4, 2
		stw r6, sp[18]
	}
	bu .LBB5_20
.LBB5_23:                               #   in Loop: Header=BB5_17 Depth=1
	{
		nop
		stw r10, sp[19]
	}
	{
		ldc r4, 2
		stw r7, sp[18]
	}
	bu .LBB5_20
.LBB5_19:                               #   in Loop: Header=BB5_17 Depth=1
	{
		nop
		stw r10, sp[19]
	}
	bu .LBB5_20
.LBB5_29:                               # %ifdone560
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel57:
.Ltmp260:
	#DEBUG_VALUE: RespBitCount <- R6
	{
		nop
		stw r10, sp[19]
	}
	{
		nop
		ldw r4, sp[7]
	}
.Ltmp261:
	#DEBUG_VALUE: RespStat <- 0
	#DEBUG_VALUE: RespBitCount <- [SP+72]
	.loc	1 151 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:151:9
	{
		eq r6, r6, r4
		stw r6, sp[18]
	}
	.loc	1 151 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:151:9
	{
		mov r4, r0
		nop
	}
	bt r6, .LBB5_31
.Ltmp262:
# BB#30:                                # %ifdone560
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel58:
	#DEBUG_VALUE: RespBitCount <- [SP+72]
	#DEBUG_VALUE: RespStat <- 0
	{
		ldc r4, 2
		nop
	}
.Ltmp263:
.LBB5_31:                               # %ifdone560
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel59:
	#DEBUG_VALUE: RespBitCount <- [SP+72]
	#DEBUG_VALUE: RespStat <- 0
	{
		nop
		ldw r10, sp[10]
	}
.Ltmp264:
	#DEBUG_VALUE: RespByteCount <- R6
	.loc	1 153 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:153:0
	{
		add r6, r10, 1
		ldw r8, sp[9]
	}
.Ltmp265:
	.loc	1 153 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:153:0
	st8 r11, r8[r10]
	{
		nop
		stw r6, sp[10]
	}
.Ltmp266:
	#DEBUG_VALUE: RespByteCount <- [SP+40]
	{
		nop
		ldw r8, sp[14]
	}
.Ltmp267:
.LBB5_20:                               # %switchdone
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel60:
	#DEBUG_VALUE: i <- [SP+76]
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespBitLen <- [SP+28]
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: DatBytesLen <- [SP+16]
	.loc	1 157 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:157:0
	{
		sub r6, r9, 1
		mkmsk r10, 2
	}
	{
		lsu r10, r10, r6
		nop
	}
	bt r10, .LBB5_55
.Ltmp268:
# BB#21:                                # %switchdone
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel61:

	.xtabranch .Ljumptable0+4,.Ljumptable0+8,.Ljumptable0+12,.Ljumptable0+16
.Ljumptable0:
		
	{
		nop
		bru r6
	}
	.jmptable32 .LBB5_32,.LBB5_34,.LBB5_39,.LBB5_37
.LBB5_32:                               # %switchcase578
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel62:
	{
		nop
		ldw r1, sp[17]
	}
	{
		nop
		ldw r6, r1[0]
	}
	.loc	1 160 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:160:0
	{
		setc res[r6], 1
		nop
	}
	.loc	1 160 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:160:0
.Lxta.endpoint_labels29:
	{
		inshr r5, res[r6]
		nop
	}
.Ltmp269:
	#DEBUG_VALUE: Dat <- R5
	ldw r1, cp[.LCPI5_2]
	.loc	1 161 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:161:9
	{
		eq r6, r5, r1
		nop
	}
	.loc	1 161 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:161:9
	bf r6, .LBB5_35
.Ltmp270:
# BB#33:                                #   in Loop: Header=BB5_17 Depth=1
	{
		mov r5, r1
		ldc r9, 2
	}
	bu .LBB5_55
.LBB5_34:                               # %switchcase579
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel63:
	{
		nop
		ldw r1, sp[17]
	}
	{
		nop
		ldw r6, r1[0]
	}
	.loc	1 165 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:165:0
	{
		setc res[r6], 1
		nop
	}
.Ltmp271:
	#DEBUG_VALUE: DatStat <- 3
	#DEBUG_VALUE: Dat <- R5
	.loc	1 165 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:165:0
.Lxta.endpoint_labels30:
	{
		inshr r5, res[r6]
		mkmsk r9, 2
	}
.Ltmp272:
	bu .LBB5_55
.LBB5_39:                               # %switchcase598
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel64:
	{
		nop
		stw r11, sp[11]
	}
	{
		nop
		ldw r6, sp[17]
	}
	{
		nop
		ldw r9, r6[0]
	}
	.loc	1 169 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:169:0
	{
		setc res[r9], 1
		nop
	}
.Ltmp273:
	#DEBUG_VALUE: Dat <- R5
	.loc	1 169 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:169:0
.Lxta.endpoint_labels31:
	{
		inshr r5, res[r9]
		ldw r8, sp[13]
	}
.Ltmp274:
	#DEBUG_VALUE: DatByteCount <- R10
	.loc	1 170 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:170:0
	{
		add r10, r8, 1
		bitrev r6, r5
	}
.Ltmp275:
	.loc	1 170 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:170:0
	st8 r6, r1[r8]
	ldc r11, 511
	.loc	1 173 11                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:173:11
	{
		and r6, r10, r11
		nop
	}
	.loc	1 171 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:171:9
	bf r4, .LBB5_40
# BB#42:                                # %ifdone616
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel65:
.Ltmp276:
	#DEBUG_VALUE: Dat <- R5
	#DEBUG_VALUE: DatByteCount <- R10
	{
		ldc r9, 2
		ldw r8, sp[14]
	}
	{
		nop
		ldw r11, sp[11]
	}
	bt r6, .LBB5_44
.Ltmp277:
# BB#43:                                # %ifdone616
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel66:
	#DEBUG_VALUE: Dat <- R5
	#DEBUG_VALUE: DatByteCount <- R10
	{
		ldc r9, 4
		nop
	}
.Ltmp278:
.LBB5_44:                               # %ifdone616
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel67:
	#DEBUG_VALUE: Dat <- R5
	#DEBUG_VALUE: DatByteCount <- R10
	bt r6, .LBB5_46
.Ltmp279:
# BB#45:                                # %ifdone616
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel68:
	#DEBUG_VALUE: Dat <- R5
	#DEBUG_VALUE: DatByteCount <- R10
	{
		ldc r1, 17
		nop
	}
	{
		nop
		stw r1, sp[16]
	}
.Ltmp280:
.LBB5_46:                               # %ifdone616
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel69:
	#DEBUG_VALUE: Dat <- R5
	#DEBUG_VALUE: DatByteCount <- R10
	{
		nop
		stw r10, sp[13]
	}
.Ltmp281:
	#DEBUG_VALUE: DatByteCount <- [SP+52]
	bu .LBB5_55
.Ltmp282:
.LBB5_37:                               # %switchcase605
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel70:
	{
		nop
		ldw r1, sp[16]
	}
	.loc	1 206 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:206:9
.Ltmp283:
	{
		sub r1, r1, 1
		nop
	}
.Ltmp284:
	#DEBUG_VALUE: j <- R1
	.loc	1 206 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:206:9
	bf r1, .LBB5_50
.Ltmp285:
# BB#38:                                #   in Loop: Header=BB5_17 Depth=1
	{
		ldc r9, 4
		stw r1, sp[16]
	}
	bu .LBB5_55
.LBB5_35:                               # %iffalse
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel71:
.Ltmp286:
	#DEBUG_VALUE: Dat <- R5
	ldw r1, cp[.LCPI5_3]
	{
		nop
		ldw r6, sp[19]
	}
	.loc	1 162 14                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:162:14
	{
		eq r6, r6, r1
		mov r9, r7
	}
	bf r6, .LBB5_55
	bu .LBB5_36
.Ltmp287:
.LBB5_40:                               # %iftrue615
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel72:
	#DEBUG_VALUE: Dat <- R5
	#DEBUG_VALUE: DatByteCount <- R10
	{
		mov r8, r1
		nop
	}
	ldc r11, 511
	bf r6, .LBB5_41
.Ltmp288:
.LBB5_47:                               # %LoopBody627
                                        #   Parent Loop BB5_17 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Lxtalabel73:
	#DEBUG_VALUE: time <- R6
	.loc	1 177 35                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:177:35
.Lxta.endpoint_labels32:
	{
		out res[r2], r0
		gettime r6
	}
.Ltmp289:
	.loc	1 179 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:179:0
	{
		add r1, r6, 10
		nop
	}
.Ltmp290:
	#DEBUG_VALUE: time <- R1
	.loc	1 180 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:180:0
	{
		setd res[r3], r1
		nop
	}
	.loc	1 180 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:180:0
	{
		setc res[r3], 9
		nop
	}
	.loc	1 180 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:180:0
.Ltmp291:
.Lxta.endpoint_labels33:
	{
		in r1, res[r3]
		nop
	}
.Ltmp292:
	.loc	1 181 35                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:181:35
.Lxta.endpoint_labels34:
	{
		out res[r2], r7
		nop
	}
	.loc	1 182 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:182:0
	ldaw r1, r6[5]
.Ltmp293:
	#DEBUG_VALUE: time <- R1
	.loc	1 183 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:183:0
	{
		setd res[r3], r1
		nop
	}
	.loc	1 183 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:183:0
.Ltmp294:
.Lxta.endpoint_labels35:
	{
		in r1, res[r3]
		nop
	}
.Ltmp295:
	.loc	1 185 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:185:0
	{
		setc res[r9], 1
		nop
	}
	.loc	1 185 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:185:0
.Lxta.endpoint_labels36:
	{
		inshr r5, res[r9]
		nop
	}
.Ltmp296:
	#DEBUG_VALUE: Dat <- R5
	#DEBUG_VALUE: time <- R1
	.loc	1 187 35                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:187:35
.Lxta.endpoint_labels37:
	{
		out res[r2], r0
		gettime r1
	}
.Ltmp297:
	.loc	1 189 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:189:0
	{
		add r6, r1, 10
		nop
	}
.Ltmp298:
	#DEBUG_VALUE: time <- R6
	.loc	1 190 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:190:0
	{
		setd res[r3], r6
		nop
	}
	.loc	1 190 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:190:0
	{
		setc res[r3], 9
		nop
	}
	.loc	1 190 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:190:0
.Ltmp299:
.Lxta.endpoint_labels38:
	{
		in r6, res[r3]
		nop
	}
.Ltmp300:
	.loc	1 191 35                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:191:35
.Lxta.endpoint_labels39:
	{
		out res[r2], r7
		nop
	}
	.loc	1 192 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:192:0
	ldaw r1, r1[5]
.Ltmp301:
	#DEBUG_VALUE: time <- R1
	.loc	1 193 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:193:0
	{
		setd res[r3], r1
		nop
	}
	.loc	1 193 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:193:0
.Ltmp302:
.Lxta.endpoint_labels40:
	{
		in r1, res[r3]
		nop
	}
.Ltmp303:
	.loc	1 195 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:195:0
	{
		setc res[r9], 1
		nop
	}
	.loc	1 195 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:195:0
.Lxta.endpoint_labels41:
	{
		inshr r5, res[r9]
		add r6, r10, 1
	}
.Ltmp304:
	.loc	1 196 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:196:0
	{
		bitrev r1, r5
		nop
	}
	.loc	1 196 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:196:0
	st8 r1, r8[r10]
	.loc	1 173 11                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:173:11
	{
		and r1, r6, r11
		nop
	}
.Lxta.loop_labels2:
	# LOOPMARKER 1
	{
		mov r10, r6
		nop
	}
	.loc	1 173 11                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:173:11
	bt r1, .LBB5_47
# BB#48:                                #   in Loop: Header=BB5_17 Depth=1
	{
		nop
		stw r6, sp[13]
	}
	bu .LBB5_49
.LBB5_50:                               # %ifdone701
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel74:
	{
		nop
		ldw r1, sp[13]
	}
	{
		nop
		ldw r6, sp[4]
	}
	.loc	1 207 9                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:207:9
	{
		lsu r9, r1, r6
		mkmsk r6, 32
	}
	bt r9, .LBB5_52
# BB#51:                                # %ifdone701
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel75:
	.loc	1 210 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:210:0
	{
		mov r6, r5
		nop
	}
.LBB5_52:                               # %ifdone701
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel76:
	.loc	1 210 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:210:0
	{
		mov r10, r0
		nop
	}
	bt r9, .LBB5_54
# BB#53:                                # %ifdone701
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel77:
	{
		nop
		ldw r10, sp[19]
	}
.LBB5_54:                               # %ifdone701
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel78:
	{
		mov r5, r6
		stw r0, sp[16]
	}
	{
		nop
		stw r10, sp[19]
	}
	bu .LBB5_55
.LBB5_41:                               #   in Loop: Header=BB5_17 Depth=1
	{
		nop
		stw r10, sp[13]
	}
.LBB5_49:                               # %LoopTest504
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel79:
	{
		ldc r9, 4
		ldc r1, 17
	}
	{
		nop
		stw r1, sp[16]
	}
	{
		nop
		ldw r8, sp[14]
	}
	{
		nop
		ldw r11, sp[11]
	}
.LBB5_55:                               # %LoopTest504
                                        #   in Loop: Header=BB5_17 Depth=1
.Lxtalabel80:
	#DEBUG_VALUE: RespBitCount <- 0
.Ltmp305:
	#DEBUG_VALUE: RespBitLen <- [SP+28]
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: DatBytesLen <- [SP+16]
	.loc	1 124 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:124:3
	{
		or r1, r9, r4
		nop
	}
.Lxta.loop_labels3:
	# LOOPMARKER 2
	bt r1, .LBB5_17
.Ltmp306:
.LBB5_10:                               # %ifdone497
.Lxtalabel81:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	{
		ldc r0, 6
		ldw r4, sp[12]
	}
	.loc	1 217 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:217:0
	{
		lsu r0, r0, r4
		ldw r10, sp[8]
	}
	{
		mkmsk r8, 1
		nop
	}
	bt r0, .LBB5_61
# BB#11:                                # %ifdone497
.Lxtalabel82:
	{
		shl r0, r8, r4
		nop
	}
	ldc r1, 102
	{
		and r0, r0, r1
		nop
	}
	bf r0, .LBB5_12
# BB#58:                                # %switchcase731
.Lxtalabel83:
.Ltmp307:
	#DEBUG_VALUE: Crc0 <- 0
	.loc	1 225 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:225:0
	{
		ldc r0, 0
		ldw r1, sp[9]
	}
	{
		nop
		ld8u r1, r1[r0]
	}
	.loc	1 226 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:226:0
	{
		bitrev r2, r1
		nop
	}
.Ltmp308:
	#DEBUG_VALUE: i <- R2
	.loc	1 226 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:226:0
	{
		shr r2, r2, 24
		ldw r3, sp[6]
	}
.Ltmp309:
	.loc	1 227 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:227:7
	{
		eq r2, r2, r3
		nop
	}
	bf r2, .LBB5_86
# BB#59:                                # %ifdone741
.Lxtalabel84:
	#DEBUG_VALUE: Crc0 <- 0
	.loc	1 225 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:225:0
	{
		mov r2, r0
		nop
	}
	ldc r3, 72
	{
		mov r5, r3
		nop
	}
	crc8 r2, r1, r1, r5
	{
		ldc r1, 4
		ldw r11, sp[9]
	}
	{
		nop
		ld8u r1, r11[r1]
	}
	.loc	1 229 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:229:0
	{
		shl r1, r1, 24
		mkmsk r3, 2
	}
	{
		nop
		ld8u r3, r11[r3]
	}
	.loc	1 229 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:229:0
	{
		shl r3, r3, 16
		nop
	}
	.loc	1 229 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:229:0
	{
		or r1, r3, r1
		ldc r3, 2
	}
	{
		nop
		ld8u r3, r11[r3]
	}
	.loc	1 229 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:229:0
	{
		shl r3, r3, 8
		nop
	}
	.loc	1 229 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:229:0
	{
		or r1, r1, r3
		mkmsk r8, 1
	}
	{
		nop
		ld8u r3, r11[r8]
	}
	.loc	1 229 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:229:0
	{
		or r1, r1, r3
		nop
	}
.Ltmp310:
	#DEBUG_VALUE: SendCmd:Arg <- R1
	.loc	1 230 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:230:0
	crc32 r2, r1, r5
.Ltmp311:
	#DEBUG_VALUE: Crc0 <- R2
	.loc	1 232 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:232:0
	crc32 r2, r0, r5
.Ltmp312:
	{
		ldc r0, 5
		nop
	}
	{
		nop
		ld8u r0, r11[r0]
	}
	.loc	1 233 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:233:7
	{
		mov r1, r0
		nop
	}
.Ltmp313:
	{
		zext r1, 7
		nop
	}
	.loc	1 233 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:233:7
	{
		eq r1, r2, r1
		nop
	}
	bf r1, .LBB5_86
# BB#60:                                # %ifdone741
.Lxtalabel85:
	ldc r1, 128
	{
		and r0, r0, r1
		nop
	}
	bt r0, .LBB5_61
	bu .LBB5_86
.LBB5_12:                               # %ifdone497
.Lxtalabel86:
	{
		nop
		ldw r0, sp[5]
	}
	bf r0, .LBB5_13
# BB#56:                                # %switchcase732
.Lxtalabel87:
	.loc	1 239 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:239:7
	{
		ldc r0, 0
		ldw r2, sp[9]
	}
	{
		nop
		ld8u r0, r2[r0]
	}
	ldc r1, 252
	.loc	1 239 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:239:7
	{
		eq r0, r0, r1
		nop
	}
	bf r0, .LBB5_86
# BB#57:                                # %ifdone793
.Lxtalabel88:
	{
		ldc r0, 16
		nop
	}
	{
		nop
		ld8u r0, r2[r0]
	}
	.loc	1 241 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:241:7
	{
		sext r0, 8
		nop
	}
	.loc	1 241 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:241:7
	ashr r0, r0, 32
	bf r0, .LBB5_86
	bu .LBB5_61
.LBB5_27:
	{
		mov r8, r7
		nop
	}
	bu .LBB5_86
.LBB5_13:                               # %ifdone497
.Lxtalabel89:
	{
		eq r0, r4, 4
		nop
	}
	bf r0, .LBB5_61
# BB#14:                                # %switchcase791
.Lxtalabel90:
	.loc	1 245 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:245:7
	{
		ldc r0, 0
		ldw r2, sp[9]
	}
	{
		nop
		ld8u r0, r2[r0]
	}
	ldc r1, 252
	.loc	1 245 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:245:7
	{
		eq r0, r0, r1
		nop
	}
	bf r0, .LBB5_86
# BB#15:                                # %ifdone813
.Lxtalabel91:
	{
		ldc r0, 5
		nop
	}
	.loc	1 247 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:247:7
	{
		mkmsk r1, 8
		ld8u r0, r2[r0]
	}
	.loc	1 247 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:247:7
	{
		eq r0, r0, r1
		nop
	}
	bf r0, .LBB5_86
.LBB5_61:                               # %LoopBody836.preheader
.Ltmp314:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	.loc	1 254 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:254:27
	{
		get r11, id
		ldw r1, r10[0]
	}
.Ltmp315:
	.loc	1 89 0                  # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:89:0
	ldaw r0, dp[__timers]
	{
		nop
		ldw r6, r0[r11]
	}
	.loc	1 257 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:257:0
.Ltmp316:
	{
		setc res[r6], 9
		nop
	}
	ldw r0, cp[.LCPI5_4]
	{
		ldc r8, 0
		mkmsk r9, 1
	}
.Ltmp317:
.LBB5_62:                               # %LoopBody836
                                        # =>This Inner Loop Header: Depth=1
.Lxtalabel92:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: time <- R2
	.loc	1 254 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:254:27
.Lxta.endpoint_labels42:
	{
		out res[r1], r8
		gettime r2
	}
.Ltmp318:
	.loc	1 256 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:256:0
	{
		add r3, r2, 10
		nop
	}
.Ltmp319:
	#DEBUG_VALUE: time <- R3
	.loc	1 257 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:257:0
	{
		setd res[r6], r3
		nop
	}
	.loc	1 257 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:257:0
.Ltmp320:
.Lxta.endpoint_labels43:
	{
		in r3, res[r6]
		nop
	}
.Ltmp321:
	.loc	1 258 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:258:27
.Lxta.endpoint_labels44:
	{
		out res[r1], r9
		nop
	}
	.loc	1 259 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:259:0
	ldaw r2, r2[5]
.Ltmp322:
	#DEBUG_VALUE: time <- R2
	.loc	1 260 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:260:0
	{
		setd res[r6], r2
		nop
	}
	.loc	1 260 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:260:0
	{
		setc res[r6], 9
		nop
	}
	.loc	1 260 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:260:0
.Ltmp323:
.Lxta.endpoint_labels45:
	{
		in r2, res[r6]
		add r0, r0, 1
	}
.Ltmp324:
.xtaloop 8
	# LOOPMARKER 4
.Lxta.loop_labels4:
	# LOOPMARKER 3
	.loc	1 252 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:252:0
	bt r0, .LBB5_62
# BB#63:                                # %ifdone832
.Lxtalabel93:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	{
		nop
		ldw r2, sp[29]
	}
	.loc	1 263 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:263:3
	ashr r0, r2, 32
	bf r0, .LBB5_73
# BB#64:                                # %LoopBody872.preheader
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	.loc	1 267 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:267:0
	{
		add r0, r10, 8
		nop
	}
	{
		nop
		stw r0, sp[10]
	}
	.loc	1 267 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:267:0
	{
		ldc r7, 0
		ldw r0, r10[2]
	}
	{
		mkmsk r5, 1
		ldc r11, 30
	}
.LBB5_65:                               # %LoopBody872
                                        # =>This Loop Header: Depth=1
                                        #     Child Loop BB5_66 Depth 2
                                        #       Child Loop BB5_67 Depth 3
                                        #     Child Loop BB5_70 Depth 2
                                        #     Child Loop BB5_79 Depth 2
                                        #     Child Loop BB5_81 Depth 2
.Lxtalabel94:
.Ltmp325:
	#DEBUG_VALUE: Crc0 <- 0
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: Crc3 <- 0
	#DEBUG_VALUE: Crc2 <- 0
	#DEBUG_VALUE: Crc1 <- 0
	{
		setc res[r0], 3
		stw r2, sp[11]
	}
.Ltmp326:
	#DEBUG_VALUE: time <- R2
	.loc	1 275 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:275:27
.Lxta.endpoint_labels46:
	{
		out res[r1], r7
		gettime r2
	}
.Ltmp327:
	.loc	1 277 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:277:0
	{
		add r3, r2, 10
		nop
	}
.Ltmp328:
	#DEBUG_VALUE: time <- R3
	.loc	1 278 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:278:0
	{
		setd res[r6], r3
		nop
	}
	.loc	1 278 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:278:0
	{
		setc res[r6], 9
		nop
	}
	.loc	1 278 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:278:0
.Ltmp329:
.Lxta.endpoint_labels47:
	{
		in r3, res[r6]
		nop
	}
.Ltmp330:
	.loc	1 279 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:279:27
.Lxta.endpoint_labels48:
	{
		out res[r0], r7
		nop
	}
	.loc	1 280 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:280:0
	ldaw r3, r2[5]
.Ltmp331:
	#DEBUG_VALUE: time <- R3
	.loc	1 281 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:281:0
	{
		setd res[r6], r3
		nop
	}
	.loc	1 281 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:281:0
.Ltmp332:
.Lxta.endpoint_labels49:
	{
		in r3, res[r6]
		nop
	}
.Ltmp333:
	#DEBUG_VALUE: time <- R2
	.loc	1 282 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:282:27
.Lxta.endpoint_labels50:
	{
		out res[r1], r5
		add r2, r2, r11
	}
.Ltmp334:
	.loc	1 284 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:284:0
	{
		setd res[r6], r2
		nop
	}
.Ltmp335:
	#DEBUG_VALUE: j <- 128
	.loc	1 284 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:284:0
.Lxta.endpoint_labels51:
	{
		in r2, res[r6]
		ldw r8, sp[13]
	}
	{
		nop
		stw r7, sp[19]
	}
	{
		nop
		stw r7, sp[18]
	}
	{
		nop
		stw r7, sp[17]
	}
	{
		nop
		stw r7, sp[16]
	}
	ldc r4, 128
.LBB5_66:                               # %LoopBody915
                                        #   Parent Loop BB5_65 Depth=1
                                        # =>  This Loop Header: Depth=2
                                        #       Child Loop BB5_67 Depth 3
.Lxtalabel95:
	#DEBUG_VALUE: Crc0 <- 0
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: j <- 128
	#DEBUG_VALUE: Crc3 <- 0
	#DEBUG_VALUE: Crc2 <- 0
	#DEBUG_VALUE: Crc1 <- 0
	{
		nop
		stw r8, sp[14]
	}
	{
		nop
		ldw r2, sp[15]
	}
	{
		nop
		ldw r2, r2[r8]
	}
	.loc	1 288 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:288:0
	{
		bitrev r2, r2
		nop
	}
	.loc	1 288 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:288:0
	{
		byterev r9, r2
		nop
	}
.Ltmp336:
	#DEBUG_VALUE: Dat <- R9
	ldw r11, cp[.LCPI5_5]
	.loc	1 290 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:290:0
	{
		and r2, r9, r11
		nop
	}
.Ltmp337:
	#DEBUG_VALUE: D3 <- R2
	.loc	1 291 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:291:0
	{
		shr r3, r2, 3
		nop
	}
	.loc	1 291 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:291:0
	{
		or r2, r3, r2
		nop
	}
.Ltmp338:
	ldw r8, cp[.LCPI5_6]
	.loc	1 291 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:291:0
	{
		and r2, r2, r8
		nop
	}
	.loc	1 291 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:291:0
	{
		shr r3, r2, 6
		nop
	}
	.loc	1 291 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:291:0
	{
		or r2, r3, r2
		ldc r10, 12
	}
	.loc	1 291 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:291:0
	{
		shr r3, r2, r10
		nop
	}
	.loc	1 291 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:291:0
	{
		or r2, r3, r2
		nop
	}
	ldc r5, 33800
	{
		nop
		ldw r3, sp[19]
	}
	.loc	1 292 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:292:0
	crc8 r3, r2, r2, r5
	.loc	1 294 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:294:0
	{
		shr r2, r9, 1
		stw r3, sp[19]
	}
	.loc	1 294 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:294:0
	{
		and r2, r2, r11
		nop
	}
.Ltmp339:
	#DEBUG_VALUE: D2 <- R2
	.loc	1 295 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:295:0
	{
		shr r3, r2, 3
		nop
	}
	.loc	1 295 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:295:0
	{
		or r2, r3, r2
		nop
	}
.Ltmp340:
	.loc	1 295 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:295:0
	{
		and r2, r2, r8
		nop
	}
	.loc	1 295 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:295:0
	{
		shr r3, r2, 6
		nop
	}
	.loc	1 295 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:295:0
	{
		or r2, r3, r2
		nop
	}
	.loc	1 295 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:295:0
	{
		shr r3, r2, r10
		nop
	}
	.loc	1 295 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:295:0
	{
		or r2, r3, r2
		ldw r3, sp[18]
	}
	.loc	1 296 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:296:0
	crc8 r3, r2, r2, r5
	.loc	1 298 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:298:0
	{
		shr r2, r9, 2
		stw r3, sp[18]
	}
	.loc	1 298 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:298:0
	{
		and r2, r2, r11
		nop
	}
.Ltmp341:
	#DEBUG_VALUE: D1 <- R2
	.loc	1 299 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:299:0
	{
		shr r3, r2, 3
		nop
	}
	.loc	1 299 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:299:0
	{
		or r2, r3, r2
		nop
	}
.Ltmp342:
	.loc	1 299 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:299:0
	{
		and r2, r2, r8
		nop
	}
	.loc	1 299 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:299:0
	{
		shr r3, r2, 6
		nop
	}
	.loc	1 299 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:299:0
	{
		or r2, r3, r2
		nop
	}
	.loc	1 299 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:299:0
	{
		shr r3, r2, r10
		nop
	}
	.loc	1 299 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:299:0
	{
		or r2, r3, r2
		ldw r3, sp[17]
	}
	.loc	1 300 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:300:0
	crc8 r3, r2, r2, r5
	.loc	1 302 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:302:0
	{
		shr r2, r9, 3
		stw r3, sp[17]
	}
	.loc	1 302 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:302:0
	{
		and r2, r2, r11
		nop
	}
.Ltmp343:
	#DEBUG_VALUE: D0 <- R2
	.loc	1 303 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:303:0
	{
		shr r3, r2, 3
		nop
	}
	.loc	1 303 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:303:0
	{
		or r2, r3, r2
		nop
	}
.Ltmp344:
	.loc	1 303 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:303:0
	{
		and r2, r2, r8
		nop
	}
	.loc	1 303 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:303:0
	{
		shr r3, r2, 6
		nop
	}
	.loc	1 303 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:303:0
	{
		or r2, r3, r2
		nop
	}
	.loc	1 303 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:303:0
	{
		shr r3, r2, r10
		nop
	}
	.loc	1 303 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:303:0
	{
		or r2, r3, r2
		ldw r3, sp[16]
	}
	.loc	1 304 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:304:0
	crc8 r3, r2, r2, r5
.Ltmp345:
	#DEBUG_VALUE: i <- 8
	{
		mkmsk r5, 1
		stw r3, sp[16]
	}
	ldw r2, cp[.LCPI5_4]
.Ltmp346:
.LBB5_67:                               # %LoopBody994
                                        #   Parent Loop BB5_65 Depth=1
                                        #     Parent Loop BB5_66 Depth=2
                                        # =>    This Inner Loop Header: Depth=3
.Lxtalabel96:
	#DEBUG_VALUE: Crc0 <- 0
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: j <- 128
	#DEBUG_VALUE: Crc3 <- 0
	#DEBUG_VALUE: Crc2 <- 0
	#DEBUG_VALUE: Crc1 <- 0
	.loc	1 312 33                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:312:33
.Lxta.endpoint_labels52:
	{
		out res[r1], r7
		gettime r3
	}
	.loc	1 314 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:314:0
.Ltmp347:
	{
		add r11, r3, 10
		nop
	}
.Ltmp348:
	#DEBUG_VALUE: time <- R11
	.loc	1 315 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:315:0
	{
		setd res[r6], r11
		nop
	}
	.loc	1 315 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:315:0
.Ltmp349:
.Lxta.endpoint_labels53:
	{
		in r11, res[r6]
		nop
	}
.Ltmp350:
	.loc	1 316 38                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:316:38
.Lxta.endpoint_labels54:
	{
		outshr res[r0], r9
		nop
	}
.Ltmp351:
	#DEBUG_VALUE: Dat <- R9
	.loc	1 317 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:317:0
	ldaw r11, r3[5]
.Ltmp352:
	#DEBUG_VALUE: time <- R11
	.loc	1 318 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:318:0
	{
		setd res[r6], r11
		nop
	}
	.loc	1 318 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:318:0
	{
		setc res[r6], 9
		nop
	}
	.loc	1 318 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:318:0
.Ltmp353:
.Lxta.endpoint_labels55:
	{
		in r11, res[r6]
		nop
	}
.Ltmp354:
	.loc	1 319 33                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:319:33
.Lxta.endpoint_labels56:
	{
		out res[r1], r5
		add r2, r2, 1
	}
.xtaloop 8
	# LOOPMARKER 6
.Lxta.loop_labels5:
	# LOOPMARKER 5
	.loc	1 306 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:306:0
	bt r2, .LBB5_67
.Ltmp355:
# BB#68:                                # %ifdone990
                                        #   in Loop: Header=BB5_66 Depth=2
.Lxtalabel97:
	#DEBUG_VALUE: Crc0 <- 0
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: time <- R3
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: j <- 128
	#DEBUG_VALUE: Crc3 <- 0
	#DEBUG_VALUE: Crc2 <- 0
	#DEBUG_VALUE: Crc1 <- 0
	{
		nop
		ldw r8, sp[14]
	}
	.loc	1 288 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:288:0
	{
		add r8, r8, 1
		ldc r11, 30
	}
	.loc	1 320 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:320:0
.Ltmp356:
	{
		add r2, r3, r11
		nop
	}
.Ltmp357:
	#DEBUG_VALUE: time <- R2
	.loc	1 321 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:321:0
	{
		setd res[r6], r2
		nop
	}
	.loc	1 321 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:321:0
	{
		setc res[r6], 9
		nop
	}
.Ltmp358:
	#DEBUG_VALUE: j <- R4
	.loc	1 321 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:321:0
.Lxta.endpoint_labels57:
	{
		in r2, res[r6]
		sub r4, r4, 1
	}
.Ltmp359:
.xtaloop 128
	# LOOPMARKER 8
.Lxta.loop_labels6:
	# LOOPMARKER 7
	bt r4, .LBB5_66
# BB#69:                                # %ifdone911
                                        #   in Loop: Header=BB5_65 Depth=1
.Lxtalabel98:
.Ltmp360:
	#DEBUG_VALUE: Crc0 <- undef
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: Crc3 <- 0
	#DEBUG_VALUE: Crc2 <- 0
	#DEBUG_VALUE: Crc1 <- 0
	ldc r2, 33800
	{
		nop
		ldw r10, sp[16]
	}
	.loc	1 326 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:326:0
	crc32 r10, r7, r2
.Ltmp361:
	#DEBUG_VALUE: Crc0 <- R10
	{
		mov r4, r7
		ldw r7, sp[17]
	}
	.loc	1 327 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:327:0
	crc32 r7, r4, r2
.Ltmp362:
	#DEBUG_VALUE: Crc1 <- R7
	{
		nop
		ldw r9, sp[18]
	}
	.loc	1 328 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:328:0
	crc32 r9, r4, r2
.Ltmp363:
	#DEBUG_VALUE: Crc2 <- R9
	{
		nop
		ldw r3, sp[19]
	}
	.loc	1 329 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:329:0
	crc32 r3, r4, r2
.Ltmp364:
	#DEBUG_VALUE: Crc3 <- R3
	#DEBUG_VALUE: Crc3 <- R2
	#DEBUG_VALUE: Crc1 <- undef
	#DEBUG_VALUE: Crc2 <- undef
	#DEBUG_VALUE: Crc3 <- undef
	#DEBUG_VALUE: i <- 16
	{
		setc res[r6], 9
		mov r2, r3
	}
	ldw r4, cp[.LCPI5_7]
.Ltmp365:
	#DEBUG_VALUE: Crc0 <- R7
	{
		mov r8, r7
		mov r7, r10
	}
.Ltmp366:
.LBB5_70:                               # %LoopBody1043
                                        #   Parent Loop BB5_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Lxtalabel99:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	#DEBUG_VALUE: Crc3 <- undef
	#DEBUG_VALUE: Crc2 <- undef
	#DEBUG_VALUE: Crc1 <- undef
	{
		nop
		stw r2, sp[19]
	}
	{
		nop
		ldw r2, sp[19]
	}
	.loc	1 332 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:332:0
	{
		zext r2, 1
		shl r3, r9, 1
	}
	{
		ldc r10, 2
		nop
	}
	.loc	1 332 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:332:0
	{
		and r3, r3, r10
		nop
	}
	.loc	1 332 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:332:0
	{
		or r2, r3, r2
		shl r3, r8, 2
	}
	{
		ldc r10, 4
		nop
	}
	.loc	1 332 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:332:0
	{
		and r3, r3, r10
		nop
	}
	.loc	1 332 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:332:0
	{
		or r2, r2, r3
		shl r3, r7, 3
	}
	{
		ldc r10, 8
		nop
	}
	.loc	1 332 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:332:0
	{
		and r3, r3, r10
		nop
	}
.Ltmp367:
	#DEBUG_VALUE: Dat <- R10
	.loc	1 332 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:332:0
	{
		or r10, r2, r3
		ldc r2, 0
	}
.Ltmp368:
	#DEBUG_VALUE: time <- R3
	.loc	1 337 29                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:337:29
.Lxta.endpoint_labels58:
	{
		out res[r1], r2
		gettime r3
	}
.Ltmp369:
	{
		mov r2, r7
		mov r7, r8
	}
	{
		mov r8, r9
		mov r9, r11
	}
	.loc	1 339 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:339:0
.Ltmp370:
	{
		add r11, r3, 10
		nop
	}
.Ltmp371:
	#DEBUG_VALUE: time <- R11
	.loc	1 340 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:340:0
	{
		setd res[r6], r11
		nop
	}
	.loc	1 340 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:340:0
.Ltmp372:
.Lxta.endpoint_labels59:
	{
		in r11, res[r6]
		nop
	}
.Ltmp373:
	{
		mov r11, r9
		mov r9, r8
	}
	{
		mov r8, r7
		mov r7, r2
	}
	.loc	1 341 31                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:341:31
.Lxta.endpoint_labels60:
	{
		out res[r0], r10
		nop
	}
	.loc	1 342 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:342:0
	ldaw r2, r3[5]
.Ltmp374:
	#DEBUG_VALUE: time <- R2
	.loc	1 343 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:343:0
	{
		setd res[r6], r2
		nop
	}
	.loc	1 343 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:343:0
	{
		setc res[r6], 9
		nop
	}
	.loc	1 343 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:343:0
.Ltmp375:
.Lxta.endpoint_labels61:
	{
		in r2, res[r6]
		nop
	}
.Ltmp376:
	#DEBUG_VALUE: time <- R2
	.loc	1 344 29                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:344:29
.Lxta.endpoint_labels62:
	{
		out res[r1], r5
		add r2, r3, r11
	}
.Ltmp377:
	.loc	1 346 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:346:0
	{
		setd res[r6], r2
		nop
	}
	.loc	1 346 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:346:0
.Ltmp378:
.Lxta.endpoint_labels63:
	{
		in r2, res[r6]
		nop
	}
	{
		nop
		ldw r2, sp[19]
	}
.Ltmp379:
	#DEBUG_VALUE: Crc3 <- R2
	#DEBUG_VALUE: Crc2 <- R9
	.loc	1 348 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:348:0
	{
		shr r2, r2, 1
		shr r9, r9, 1
	}
.Ltmp380:
	#DEBUG_VALUE: Crc1 <- R8
	#DEBUG_VALUE: Crc0 <- R7
	.loc	1 348 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:348:0
	{
		shr r8, r8, 1
		shr r7, r7, 1
	}
.Ltmp381:
	.loc	1 330 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:330:0
	{
		add r4, r4, 1
		nop
	}
.xtaloop 16
	# LOOPMARKER 10
.Lxta.loop_labels7:
	# LOOPMARKER 9
	bt r4, .LBB5_70
# BB#71:                                # %ifdone1039
                                        #   in Loop: Header=BB5_65 Depth=1
.Lxtalabel100:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	{
		ldc r9, 8
		ldc r2, 0
	}
	{
		mov r4, r2
		nop
	}
.Ltmp382:
	#DEBUG_VALUE: time <- R2
	.loc	1 354 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:354:27
.Lxta.endpoint_labels64:
	{
		out res[r1], r4
		gettime r2
	}
.Ltmp383:
	.loc	1 356 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:356:0
	{
		add r3, r2, 10
		nop
	}
.Ltmp384:
	#DEBUG_VALUE: time <- R3
	.loc	1 357 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:357:0
	{
		setd res[r6], r3
		nop
	}
	.loc	1 357 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:357:0
	{
		setc res[r6], 9
		nop
	}
	.loc	1 357 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:357:0
.Ltmp385:
.Lxta.endpoint_labels65:
	{
		in r3, res[r6]
		nop
	}
.Ltmp386:
	{
		mkmsk r3, 4
		nop
	}
	.loc	1 358 29                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:358:29
.Lxta.endpoint_labels66:
	{
		out res[r0], r3
		nop
	}
	.loc	1 359 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:359:0
	ldaw r3, r2[5]
.Ltmp387:
	#DEBUG_VALUE: time <- R3
	.loc	1 360 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:360:0
	{
		setd res[r6], r3
		nop
	}
	.loc	1 360 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:360:0
.Ltmp388:
.Lxta.endpoint_labels67:
	{
		in r3, res[r6]
		nop
	}
.Ltmp389:
	#DEBUG_VALUE: time <- R2
	.loc	1 361 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:361:27
.Lxta.endpoint_labels68:
	{
		out res[r1], r5
		add r2, r2, r11
	}
.Ltmp390:
	.loc	1 363 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:363:0
	{
		setd res[r6], r2
		nop
	}
	.loc	1 363 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:363:0
.Ltmp391:
.Lxta.endpoint_labels69:
	{
		in r2, res[r6]
		nop
	}
	.loc	1 365 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:365:7
	ldw r2, dp[Is_XS1_G_Core]
	{
		mov r7, r4
		nop
	}
	bf r2, .LBB5_72
# BB#77:                                # %iftrue1134
                                        #   in Loop: Header=BB5_65 Depth=1
.Lxtalabel101:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	.loc	1 366 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:366:0
.Lxta.call_labels19:
	bl set_port_pull_up
	{
		nop
		ldw r0, sp[10]
	}
	{
		nop
		ldw r0, r0[0]
	}
	{
		nop
		ldw r10, sp[8]
	}
	{
		nop
		ldw r1, r10[0]
	}
	{
		ldc r8, 0
		ldw r4, sp[12]
	}
	bu .LBB5_78
.Ltmp392:
.LBB5_72:                               #   in Loop: Header=BB5_65 Depth=1
	{
		ldc r8, 0
		ldw r4, sp[12]
	}
	{
		nop
		ldw r10, sp[8]
	}
.LBB5_78:                               # %ifdone1135
                                        #   in Loop: Header=BB5_65 Depth=1
.Lxtalabel102:
	#DEBUG_VALUE: i <- 16
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	{
		nop
		ldw r2, sp[13]
	}
	ldc r3, 128
	.loc	1 286 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:286:0
	{
		add r2, r2, r3
		nop
	}
.Ltmp393:
	#DEBUG_VALUE: DatByteCount <- [SP+52]
	#DEBUG_VALUE: i <- 8
	.loc	1 367 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:367:0
	{
		setc res[r0], 1
		stw r2, sp[13]
	}
	.loc	1 367 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:367:0
.Ltmp394:
.Lxta.endpoint_labels70:
	{
		in r2, res[r0]
		nop
	}
	.loc	1 376 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:376:0
.Ltmp395:
	{
		setc res[r6], 9
		nop
	}
	ldw r2, cp[.LCPI5_4]
.Ltmp396:
.LBB5_79:                               # %LoopBody1152
                                        #   Parent Loop BB5_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Lxtalabel103:
	#DEBUG_VALUE: i <- 8
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- [SP+52]
	#DEBUG_VALUE: time <- R3
	.loc	1 373 31                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:373:31
.Lxta.endpoint_labels71:
	{
		out res[r1], r7
		gettime r3
	}
.Ltmp397:
	.loc	1 375 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:375:0
	{
		add r11, r3, 10
		nop
	}
.Ltmp398:
	#DEBUG_VALUE: time <- R11
	.loc	1 376 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:376:0
	{
		setd res[r6], r11
		nop
	}
	.loc	1 376 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:376:0
.Ltmp399:
.Lxta.endpoint_labels72:
	{
		in r11, res[r6]
		nop
	}
.Ltmp400:
	.loc	1 377 31                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:377:31
.Lxta.endpoint_labels73:
	{
		out res[r1], r5
		nop
	}
	.loc	1 378 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:378:0
	ldaw r3, r3[5]
.Ltmp401:
	#DEBUG_VALUE: time <- R3
	.loc	1 379 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:379:0
	{
		setd res[r6], r3
		nop
	}
	.loc	1 379 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:379:0
	{
		setc res[r6], 9
		nop
	}
	.loc	1 379 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:379:0
.Ltmp402:
.Lxta.endpoint_labels74:
	{
		in r3, res[r6]
		add r2, r2, 1
	}
.Ltmp403:
.xtaloop 8
	# LOOPMARKER 12
.Lxta.loop_labels8:
	# LOOPMARKER 11
	.loc	1 368 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:368:0
	bt r2, .LBB5_79
.Ltmp404:
# BB#80:                                #   in Loop: Header=BB5_65 Depth=1
	ldw r2, cp[.LCPI5_8]
.LBB5_81:                               # %LoopBody1182
                                        #   Parent Loop BB5_65 Depth=1
                                        # =>  This Inner Loop Header: Depth=2
.Lxtalabel104:
.Ltmp405:
	#DEBUG_VALUE: time <- R3
	.loc	1 388 31                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:388:31
.Lxta.endpoint_labels75:
	{
		out res[r1], r7
		gettime r3
	}
.Ltmp406:
	.loc	1 390 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:390:0
	{
		add r11, r3, 10
		nop
	}
.Ltmp407:
	#DEBUG_VALUE: time <- R11
	.loc	1 391 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:391:0
	{
		setd res[r6], r11
		nop
	}
	.loc	1 391 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:391:0
	{
		setc res[r6], 9
		nop
	}
	.loc	1 391 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:391:0
.Ltmp408:
.Lxta.endpoint_labels76:
	{
		in r11, res[r6]
		nop
	}
.Ltmp409:
	.loc	1 392 31                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:392:31
.Lxta.endpoint_labels77:
	{
		out res[r1], r5
		nop
	}
	.loc	1 393 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:393:0
	ldaw r3, r3[5]
.Ltmp410:
	#DEBUG_VALUE: time <- R3
	.loc	1 394 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:394:0
	{
		setd res[r6], r3
		nop
	}
	.loc	1 394 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:394:0
.Ltmp411:
.Lxta.endpoint_labels78:
	{
		in r3, res[r6]
		nop
	}
.Ltmp412:
	.loc	1 396 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:396:0
	{
		setc res[r0], 1
		nop
	}
.Ltmp413:
	#DEBUG_VALUE: Dat <- R3
	.loc	1 396 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:396:0
.Lxta.endpoint_labels79:
	{
		in r3, res[r0]
		add r2, r2, 1
	}
.Ltmp414:
	.loc	1 397 11                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:397:11
	bf r2, .LBB5_82
# BB#83:                                # %LoopTest1181
                                        #   in Loop: Header=BB5_81 Depth=2
.Lxtalabel105:
.Ltmp415:
	#DEBUG_VALUE: Dat <- R3
	.loc	1 399 7                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:399:7
	{
		and r3, r3, r9
		nop
	}
.Ltmp416:
.Lxta.loop_labels9:
	# LOOPMARKER 13
	bf r3, .LBB5_81
# BB#84:                                # %LoopTest871
                                        #   in Loop: Header=BB5_65 Depth=1
.Lxtalabel106:
	{
		nop
		ldw r2, sp[11]
	}
	.loc	1 401 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:401:5
	{
		add r2, r2, 1
		nop
	}
	#DEBUG_VALUE: SendCmd:DataBlocks <- R2
.Lxta.loop_labels10:
	# LOOPMARKER 14
	{
		ldc r11, 30
		mkmsk r9, 1
	}
	bt r2, .LBB5_65
.Ltmp417:
.LBB5_73:                               # %ifdone866
.Lxtalabel107:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	.loc	1 404 3                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:404:3
	{
		eq r0, r4, 2
		nop
	}
	bf r0, .LBB5_86
# BB#74:                                # %LoopBody1233.preheader
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	{
		nop
		ldw r0, r10[2]
	}
	ldw r2, cp[.LCPI5_8]
	{
		ldc r8, 0
		ldc r3, 8
	}
.LBB5_75:                               # %LoopBody1233
                                        # =>This Inner Loop Header: Depth=1
.Lxtalabel108:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
	#DEBUG_VALUE: Dat <- -1
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
.Ltmp418:
	#DEBUG_VALUE: time <- R11
	.loc	1 412 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:412:27
.Lxta.endpoint_labels80:
	{
		out res[r1], r8
		gettime r11
	}
.Ltmp419:
	.loc	1 414 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:414:0
	{
		add r4, r11, 10
		nop
	}
.Ltmp420:
	#DEBUG_VALUE: time <- R4
	.loc	1 415 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:415:0
	{
		setd res[r6], r4
		nop
	}
	.loc	1 415 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:415:0
	{
		setc res[r6], 9
		nop
	}
	.loc	1 415 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:415:0
.Ltmp421:
.Lxta.endpoint_labels81:
	{
		in r4, res[r6]
		nop
	}
.Ltmp422:
	.loc	1 416 27                # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:416:27
.Lxta.endpoint_labels82:
	{
		out res[r1], r9
		nop
	}
	.loc	1 417 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:417:0
	ldaw r11, r11[5]
.Ltmp423:
	#DEBUG_VALUE: time <- R11
	.loc	1 418 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:418:0
	{
		setd res[r6], r11
		nop
	}
	.loc	1 418 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:418:0
.Ltmp424:
.Lxta.endpoint_labels83:
	{
		in r11, res[r6]
		nop
	}
.Ltmp425:
	.loc	1 420 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:420:0
	{
		setc res[r0], 1
		nop
	}
.Ltmp426:
	#DEBUG_VALUE: Dat <- R11
	.loc	1 420 0                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:420:0
.Lxta.endpoint_labels84:
	{
		in r11, res[r0]
		add r2, r2, 1
	}
.Ltmp427:
	bf r2, .LBB5_76
# BB#85:                                # %LoopTest1232
                                        #   in Loop: Header=BB5_75 Depth=1
.Lxtalabel109:
	#DEBUG_VALUE: i <- 0
	#DEBUG_VALUE: RespBitCount <- 0
	#DEBUG_VALUE: RespByteCount <- 0
.Ltmp428:
	#DEBUG_VALUE: Dat <- R11
	#DEBUG_VALUE: R <- -1
	#DEBUG_VALUE: DatByteCount <- 0
	.loc	1 423 5                 # C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc:423:5
	{
		and r11, r11, r3
		nop
	}
.Ltmp429:
.Lxta.loop_labels11:
	# LOOPMARKER 15
	bf r11, .LBB5_75
	bu .LBB5_86
.Ltmp430:
.LBB5_82:
	{
		mov r8, r5
		nop
	}
	bu .LBB5_86
.LBB5_76:
	{
		mov r8, r9
		nop
	}
	bu .LBB5_86
.LBB5_36:
	{
		mov r8, r7
		nop
	}
.LBB5_86:                               # %return
	{
		mov r0, r8
		ldw r10, sp[26]
	}
	{
		nop
		ldw r8, sp[24]
	}
	{
		nop
		ldw r9, sp[25]
	}
	ldd r7, r6, sp[11]              # 4-byte Folded Reload
	ldd r5, r4, sp[10]              # 4-byte Folded Reload
	{
		nop
		retsp 28
	}
	# RETURN_REG_HOLDER
	.cc_bottom SendCmd.function
	.set	SendCmd.nstackwords,(set_port_pull_up.nstackwords + 28)
	.set	SendCmd.maxcores,set_port_pull_up.maxcores $M 1
	.set	SendCmd.maxtimers,set_port_pull_up.maxtimers $M 0
	.set	SendCmd.maxchanends,set_port_pull_up.maxchanends $M 0
.Ltmp431:
	.size	SendCmd, .Ltmp431-SendCmd
.Lfunc_end5:
	.cfi_endproc

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI6_0.data,.LCPI6_0
	.align	4
	.type	.LCPI6_0,@object
	.size	.LCPI6_0, 4
.LCPI6_0:
	.long	1008795648              # 0x3c210000
	.cc_bottom .LCPI6_0.data
	.text
	.globl	get_fattime
	.align	4
	.type	get_fattime,@function
	.cc_top get_fattime.function,get_fattime
get_fattime:                            # @get_fattime
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
.Lxtalabel110:
	{
		nop
		dualentsp 0
	}
	ldw r0, cp[.LCPI6_0]
	{
		nop
		retsp 0
	}
	# RETURN_REG_HOLDER
	.cc_bottom get_fattime.function
	.set	get_fattime.nstackwords,0
	.globl	get_fattime.nstackwords
	.set	get_fattime.maxcores,1
	.globl	get_fattime.maxcores
	.set	get_fattime.maxtimers,0
	.globl	get_fattime.maxtimers
	.set	get_fattime.maxchanends,0
	.globl	get_fattime.maxchanends
.Ltmp432:
	.size	get_fattime, .Ltmp432-get_fattime
	.cfi_endproc

	.section	.dp.data.4,"awd",@progbits
	.cc_top SDif.data,SDif
	.align	4
	.type	SDif,@object
	.size	SDif, 24
SDif:
	.long	65536
	.long	66048
	.long	263168
	.long	0                       # 0x0
	.byte	0                       # 0x0
	.space	3
	.long	0                       # 0x0
	.cc_bottom SDif.data
	.section	.dp.bss.4,"awd",@nobits
	.cc_top Is_XS1_G_Core.data,Is_XS1_G_Core
	.globl	Is_XS1_G_Core
	.align	4
	.type	Is_XS1_G_Core,@object
	.size	Is_XS1_G_Core, 4
Is_XS1_G_Core:
	.long	0                       # 0x0
	.cc_bottom Is_XS1_G_Core.data
	.section	.dp.data.4,"awd",@progbits
	.cc_top __xcc1_internal_1.data,__xcc1_internal_1
	.align	4
	.type	__xcc1_internal_1,@object
	.size	__xcc1_internal_1, 4
__xcc1_internal_1:
	.long	65536
	.cc_bottom __xcc1_internal_1.data
	.cc_top __xcc1_internal_2.data,__xcc1_internal_2
	.align	4
	.type	__xcc1_internal_2,@object
	.size	__xcc1_internal_2, 4
__xcc1_internal_2:
	.long	66048
	.cc_bottom __xcc1_internal_2.data
	.cc_top __xcc1_internal_3.data,__xcc1_internal_3
	.align	4
	.type	__xcc1_internal_3,@object
	.size	__xcc1_internal_3, 4
__xcc1_internal_3:
	.long	263168
	.cc_bottom __xcc1_internal_3.data
	.section	.dp.bss.4,"awd",@nobits
.Ldebug_end0:
	.section	.dp.data.4,"awd",@progbits
.Ldebug_end1:
	.text
.Ldebug_end2:
	.file	2 "C:\\Program Files (x86)\\XMOS\\xTIMEcomposer\\Community_14.3.3\\target/include\\timer.h"
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciiz"XMOS 32-bit XC Compiler Community_14.3.3 (build 22296, Apr-19-2018)"
.Linfo_string1:
.asciiz"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
.Linfo_string2:
.asciiz"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
.Linfo_string3:
.asciiz"SDif"
.Linfo_string4:
.asciiz"Clk"
.Linfo_string5:
.asciiz"port"
.Linfo_string6:
.asciiz"Cmd"
.Linfo_string7:
.asciiz"Dat"
.Linfo_string8:
.asciiz"Rca"
.Linfo_string9:
.asciiz"unsigned long"
.Linfo_string10:
.asciiz"Ccs"
.Linfo_string11:
.asciiz"unsigned char"
.Linfo_string12:
.asciiz"BlockNr"
.Linfo_string13:
.asciiz"SDHostInterface"
.Linfo_string14:
.asciiz"sizetype"
.Linfo_string15:
.asciiz"Is_XS1_G_Core"
.Linfo_string16:
.asciiz"int"
.Linfo_string17:
.asciiz"RES_OK"
.Linfo_string18:
.asciiz"RES_ERROR"
.Linfo_string19:
.asciiz"RES_WRPRT"
.Linfo_string20:
.asciiz"RES_NOTRDY"
.Linfo_string21:
.asciiz"RES_PARERR"
.Linfo_string22:
.asciiz"__TYPE_0"
.Linfo_string23:
.asciiz"R0"
.Linfo_string24:
.asciiz"R1"
.Linfo_string25:
.asciiz"R1B"
.Linfo_string26:
.asciiz"R2"
.Linfo_string27:
.asciiz"R3"
.Linfo_string28:
.asciiz"R6"
.Linfo_string29:
.asciiz"R7"
.Linfo_string30:
.asciiz"RespType"
.Linfo_string31:
.asciiz"delay_seconds"
.Linfo_string32:
.asciiz"delay_milliseconds"
.Linfo_string33:
.asciiz"delay_microseconds"
.Linfo_string34:
.asciiz"SendCmd"
.Linfo_string35:
.asciiz"disk_initialize"
.Linfo_string36:
.asciiz"disk_read"
.Linfo_string37:
.asciiz"disk_write"
.Linfo_string38:
.asciiz"disk_status"
.Linfo_string39:
.asciiz"disk_ioctl"
.Linfo_string40:
.asciiz"get_fattime"
.Linfo_string41:
.asciiz"Resp"
.Linfo_string42:
.asciiz"DummyData"
.Linfo_string43:
.asciiz"IfNum"
.Linfo_string44:
.asciiz"i"
.Linfo_string45:
.asciiz"unsigned int"
.Linfo_string46:
.asciiz"BlockLen"
.Linfo_string47:
.asciiz"s"
.Linfo_string48:
.asciiz"buff"
.Linfo_string49:
.asciiz"sector"
.Linfo_string50:
.asciiz"count"
.Linfo_string51:
.asciiz"ctrl"
.Linfo_string52:
.asciiz"RetVal"
.Linfo_string53:
.asciiz"Val"
.Linfo_string54:
.asciiz"Crc0"
.Linfo_string55:
.asciiz"time"
.Linfo_string56:
.asciiz"Arg"
.Linfo_string57:
.asciiz"RespBitCount"
.Linfo_string58:
.asciiz"RespBitLen"
.Linfo_string59:
.asciiz"RespByteCount"
.Linfo_string60:
.asciiz"R"
.Linfo_string61:
.asciiz"DatByteCount"
.Linfo_string62:
.asciiz"DatBytesLen"
.Linfo_string63:
.asciiz"RespStat"
.Linfo_string64:
.asciiz"DatStat"
.Linfo_string65:
.asciiz"j"
.Linfo_string66:
.asciiz"Crc3"
.Linfo_string67:
.asciiz"Crc2"
.Linfo_string68:
.asciiz"Crc1"
.Linfo_string69:
.asciiz"D3"
.Linfo_string70:
.asciiz"D2"
.Linfo_string71:
.asciiz"D1"
.Linfo_string72:
.asciiz"D0"
.Linfo_string73:
.asciiz"DataBlocks"
.Linfo_string74:
.asciiz"t"
.Linfo_string75:
.asciiz"timer"
.Linfo_string76:
.asciiz"delay"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	1689                    # Length of Unit
	.short	3                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	4                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0x692 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	49152                   # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	1                       # DW_AT_APPLE_optimized
	.byte	2                       # Abbrev [2] 0x1f:0x15 DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	52                      # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	5                       # DW_AT_location
	.byte	3
	.long	SDif
	.long	.Linfo_string3          # DW_AT_MIPS_linkage_name
	.byte	3                       # Abbrev [3] 0x34:0xd DW_TAG_array_type
	.long	65                      # DW_AT_type
	.byte	4                       # Abbrev [4] 0x39:0x7 DW_TAG_subrange_type
	.long	167                     # DW_AT_type
	.byte	0                       # DW_AT_lower_bound
	.byte	0                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	5                       # Abbrev [5] 0x41:0x51 DW_TAG_structure_type
	.long	.Linfo_string13         # DW_AT_name
	.byte	24                      # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	6                       # Abbrev [6] 0x49:0xc DW_TAG_member
	.long	.Linfo_string4          # DW_AT_name
	.long	146                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	0                       # DW_AT_data_member_location
	.byte	6                       # Abbrev [6] 0x55:0xc DW_TAG_member
	.long	.Linfo_string6          # DW_AT_name
	.long	146                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	4                       # DW_AT_data_member_location
	.byte	6                       # Abbrev [6] 0x61:0xc DW_TAG_member
	.long	.Linfo_string7          # DW_AT_name
	.long	146                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	8                       # DW_AT_data_member_location
	.byte	6                       # Abbrev [6] 0x6d:0xc DW_TAG_member
	.long	.Linfo_string8          # DW_AT_name
	.long	153                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	12                      # DW_AT_data_member_location
	.byte	6                       # Abbrev [6] 0x79:0xc DW_TAG_member
	.long	.Linfo_string10         # DW_AT_name
	.long	160                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	16                      # DW_AT_data_member_location
	.byte	6                       # Abbrev [6] 0x85:0xc DW_TAG_member
	.long	.Linfo_string12         # DW_AT_name
	.long	153                     # DW_AT_type
	.byte	1                       # DW_AT_decl_file
	.byte	40                      # DW_AT_decl_line
	.byte	20                      # DW_AT_data_member_location
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x92:0x7 DW_TAG_base_type
	.long	.Linfo_string5          # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0x99:0x7 DW_TAG_base_type
	.long	.Linfo_string9          # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	7                       # Abbrev [7] 0xa0:0x7 DW_TAG_base_type
	.long	.Linfo_string11         # DW_AT_name
	.byte	8                       # DW_AT_encoding
	.byte	1                       # DW_AT_byte_size
	.byte	8                       # Abbrev [8] 0xa7:0x7 DW_TAG_base_type
	.long	.Linfo_string14         # DW_AT_name
	.byte	8                       # DW_AT_byte_size
	.byte	7                       # DW_AT_encoding
	.byte	9                       # Abbrev [9] 0xae:0x16 DW_TAG_variable
	.long	.Linfo_string15         # DW_AT_name
	.long	196                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	71                      # DW_AT_decl_line
	.byte	5                       # DW_AT_location
	.byte	3
	.long	Is_XS1_G_Core
	.long	.Linfo_string15         # DW_AT_MIPS_linkage_name
	.byte	7                       # Abbrev [7] 0xc4:0x7 DW_TAG_base_type
	.long	.Linfo_string16         # DW_AT_name
	.byte	5                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	10                      # Abbrev [10] 0xcb:0x27 DW_TAG_enumeration_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0xd3:0x6 DW_TAG_enumerator
	.long	.Linfo_string17         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0xd9:0x6 DW_TAG_enumerator
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0xdf:0x6 DW_TAG_enumerator
	.long	.Linfo_string19         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0xe5:0x6 DW_TAG_enumerator
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0xeb:0x6 DW_TAG_enumerator
	.long	.Linfo_string21         # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0xf2:0x33 DW_TAG_enumeration_type
	.long	.Linfo_string30         # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0xfa:0x6 DW_TAG_enumerator
	.long	.Linfo_string23         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x100:0x6 DW_TAG_enumerator
	.long	.Linfo_string24         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x106:0x6 DW_TAG_enumerator
	.long	.Linfo_string25         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x10c:0x6 DW_TAG_enumerator
	.long	.Linfo_string26         # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x112:0x6 DW_TAG_enumerator
	.long	.Linfo_string27         # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x118:0x6 DW_TAG_enumerator
	.long	.Linfo_string28         # DW_AT_name
	.byte	5                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x11e:0x6 DW_TAG_enumerator
	.long	.Linfo_string29         # DW_AT_name
	.byte	6                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	10                      # Abbrev [10] 0x125:0x33 DW_TAG_enumeration_type
	.long	.Linfo_string30         # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x12d:0x6 DW_TAG_enumerator
	.long	.Linfo_string23         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x133:0x6 DW_TAG_enumerator
	.long	.Linfo_string24         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x139:0x6 DW_TAG_enumerator
	.long	.Linfo_string25         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x13f:0x6 DW_TAG_enumerator
	.long	.Linfo_string26         # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x145:0x6 DW_TAG_enumerator
	.long	.Linfo_string27         # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x14b:0x6 DW_TAG_enumerator
	.long	.Linfo_string28         # DW_AT_name
	.byte	5                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x151:0x6 DW_TAG_enumerator
	.long	.Linfo_string29         # DW_AT_name
	.byte	6                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x158:0x28 DW_TAG_enumeration_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.short	495                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x161:0x6 DW_TAG_enumerator
	.long	.Linfo_string17         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x167:0x6 DW_TAG_enumerator
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x16d:0x6 DW_TAG_enumerator
	.long	.Linfo_string19         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x173:0x6 DW_TAG_enumerator
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x179:0x6 DW_TAG_enumerator
	.long	.Linfo_string21         # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x180:0x28 DW_TAG_enumeration_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.short	513                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x189:0x6 DW_TAG_enumerator
	.long	.Linfo_string17         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x18f:0x6 DW_TAG_enumerator
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x195:0x6 DW_TAG_enumerator
	.long	.Linfo_string19         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x19b:0x6 DW_TAG_enumerator
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x1a1:0x6 DW_TAG_enumerator
	.long	.Linfo_string21         # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	12                      # Abbrev [12] 0x1a8:0x28 DW_TAG_enumeration_type
	.long	.Linfo_string22         # DW_AT_name
	.byte	4                       # DW_AT_byte_size
	.byte	1                       # DW_AT_decl_file
	.short	543                     # DW_AT_decl_line
	.byte	11                      # Abbrev [11] 0x1b1:0x6 DW_TAG_enumerator
	.long	.Linfo_string17         # DW_AT_name
	.byte	0                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x1b7:0x6 DW_TAG_enumerator
	.long	.Linfo_string18         # DW_AT_name
	.byte	1                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x1bd:0x6 DW_TAG_enumerator
	.long	.Linfo_string19         # DW_AT_name
	.byte	2                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x1c3:0x6 DW_TAG_enumerator
	.long	.Linfo_string20         # DW_AT_name
	.byte	3                       # DW_AT_const_value
	.byte	11                      # Abbrev [11] 0x1c9:0x6 DW_TAG_enumerator
	.long	.Linfo_string21         # DW_AT_name
	.byte	4                       # DW_AT_const_value
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x1d0:0x79 DW_TAG_subprogram
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	1                       # DW_AT_frame_base
	.byte	94
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.long	.Linfo_string35         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string35         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	431                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	14                      # Abbrev [14] 0x1e8:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc0            # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	430                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x1f8:0x50 DW_TAG_lexical_block
	.long	.Ldebug_ranges3         # DW_AT_ranges
	.byte	16                      # Abbrev [16] 0x1fd:0x10 DW_TAG_variable
	.long	.Ldebug_loc1            # DW_AT_location
	.long	.Linfo_string44         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	432                     # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	16                      # Abbrev [16] 0x20d:0x10 DW_TAG_variable
	.long	.Ldebug_loc2            # DW_AT_location
	.long	.Linfo_string46         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	432                     # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x21d:0x2a DW_TAG_lexical_block
	.long	.Ldebug_ranges2         # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x222:0xf DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	32
	.long	.Linfo_string41         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	433                     # DW_AT_decl_line
	.long	1622                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x231:0x15 DW_TAG_lexical_block
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x236:0xf DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	28
	.long	.Linfo_string42         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	434                     # DW_AT_decl_line
	.long	1635                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x249:0x65 DW_TAG_subprogram
	.long	.Ldebug_ranges4         # DW_AT_ranges
	.byte	1                       # DW_AT_frame_base
	.byte	94
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.long	.Linfo_string38         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string38         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	530                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	14                      # Abbrev [14] 0x261:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc3            # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	529                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x271:0x3c DW_TAG_lexical_block
	.long	.Ldebug_ranges7         # DW_AT_ranges
	.byte	18                      # Abbrev [18] 0x276:0xc DW_TAG_variable
	.long	.Linfo_string47         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	531                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x282:0x2a DW_TAG_lexical_block
	.long	.Ldebug_ranges6         # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x287:0xf DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	36
	.long	.Linfo_string42         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	532                     # DW_AT_decl_line
	.long	1635                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x296:0x15 DW_TAG_lexical_block
	.long	.Ldebug_ranges5         # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x29b:0xf DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string41         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	533                     # DW_AT_decl_line
	.long	1622                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x2ae:0x83 DW_TAG_subprogram
	.long	.Ldebug_ranges8         # DW_AT_ranges
	.byte	1                       # DW_AT_frame_base
	.byte	94
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.long	.Linfo_string36         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string36         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	495                     # DW_AT_decl_line
	.long	344                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	14                      # Abbrev [14] 0x2c6:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc4            # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	494                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x2d6:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc5            # DW_AT_location
	.long	.Linfo_string48         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	494                     # DW_AT_decl_line
	.long	1655                    # DW_AT_type
	.byte	14                      # Abbrev [14] 0x2e6:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc6            # DW_AT_location
	.long	.Linfo_string49         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	494                     # DW_AT_decl_line
	.long	153                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x2f6:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc7            # DW_AT_location
	.long	.Linfo_string50         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	494                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x306:0x2a DW_TAG_lexical_block
	.long	.Ldebug_ranges10        # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x30b:0xf DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	20
	.long	.Linfo_string41         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	496                     # DW_AT_decl_line
	.long	1622                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x31a:0x15 DW_TAG_lexical_block
	.long	.Ldebug_ranges9         # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x31f:0xf DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string42         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	497                     # DW_AT_decl_line
	.long	1635                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x331:0x83 DW_TAG_subprogram
	.long	.Ldebug_ranges11        # DW_AT_ranges
	.byte	1                       # DW_AT_frame_base
	.byte	94
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.long	.Linfo_string37         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string37         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	513                     # DW_AT_decl_line
	.long	384                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	14                      # Abbrev [14] 0x349:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc8            # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	512                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x359:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc9            # DW_AT_location
	.long	.Linfo_string48         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	512                     # DW_AT_decl_line
	.long	1665                    # DW_AT_type
	.byte	14                      # Abbrev [14] 0x369:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc10           # DW_AT_location
	.long	.Linfo_string49         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	512                     # DW_AT_decl_line
	.long	153                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x379:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc11           # DW_AT_location
	.long	.Linfo_string50         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	512                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x389:0x2a DW_TAG_lexical_block
	.long	.Ldebug_ranges13        # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x38e:0xf DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	20
	.long	.Linfo_string41         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	514                     # DW_AT_decl_line
	.long	1622                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x39d:0x15 DW_TAG_lexical_block
	.long	.Ldebug_ranges12        # DW_AT_ranges
	.byte	17                      # Abbrev [17] 0x3a2:0xf DW_TAG_variable
	.byte	2                       # DW_AT_location
	.byte	145
	.byte	16
	.long	.Linfo_string42         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	515                     # DW_AT_decl_line
	.long	1635                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	13                      # Abbrev [13] 0x3b4:0x7c DW_TAG_subprogram
	.long	.Ldebug_ranges14        # DW_AT_ranges
	.byte	1                       # DW_AT_frame_base
	.byte	94
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.long	.Linfo_string39         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string39         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	543                     # DW_AT_decl_line
	.long	424                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	14                      # Abbrev [14] 0x3cc:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc12           # DW_AT_location
	.long	.Linfo_string43         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	542                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x3dc:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc13           # DW_AT_location
	.long	.Linfo_string51         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	542                     # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	14                      # Abbrev [14] 0x3ec:0x10 DW_TAG_formal_parameter
	.long	.Ldebug_loc14           # DW_AT_location
	.long	.Linfo_string52         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	542                     # DW_AT_decl_line
	.long	1655                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x3fc:0x33 DW_TAG_lexical_block
	.long	.Ldebug_ranges16        # DW_AT_ranges
	.byte	18                      # Abbrev [18] 0x401:0xc DW_TAG_variable
	.long	.Linfo_string44         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	544                     # DW_AT_decl_line
	.long	153                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x40d:0x21 DW_TAG_lexical_block
	.long	.Ldebug_ranges15        # DW_AT_ranges
	.byte	19                      # Abbrev [19] 0x412:0xe DW_TAG_variable
	.ascii	"\200\001"              # DW_AT_const_value
	.long	.Linfo_string53         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	557                     # DW_AT_decl_line
	.long	153                     # DW_AT_type
	.byte	19                      # Abbrev [19] 0x420:0xd DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string44         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	557                     # DW_AT_decl_line
	.long	153                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	20                      # Abbrev [20] 0x430:0x1cd DW_TAG_subprogram
	.long	.Ldebug_ranges17        # DW_AT_ranges
	.byte	1                       # DW_AT_frame_base
	.byte	94
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.long	.Linfo_string34         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string34         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	75                      # DW_AT_decl_line
	.long	203                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x446:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc18           # DW_AT_location
	.long	.Linfo_string56         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	153                     # DW_AT_type
	.byte	21                      # Abbrev [21] 0x455:0xf DW_TAG_formal_parameter
	.long	.Ldebug_loc33           # DW_AT_location
	.long	.Linfo_string73         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	196                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x464:0xb DW_TAG_formal_parameter
	.long	.Linfo_string43         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x46f:0xb DW_TAG_formal_parameter
	.long	.Linfo_string6          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x47a:0xb DW_TAG_formal_parameter
	.long	.Linfo_string30         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	293                     # DW_AT_type
	.byte	22                      # Abbrev [22] 0x485:0xb DW_TAG_formal_parameter
	.long	.Linfo_string48         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	1655                    # DW_AT_type
	.byte	22                      # Abbrev [22] 0x490:0xb DW_TAG_formal_parameter
	.long	.Linfo_string41         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	74                      # DW_AT_decl_line
	.long	1680                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x49b:0x161 DW_TAG_lexical_block
	.long	.Ldebug_ranges24        # DW_AT_ranges
	.byte	23                      # Abbrev [23] 0x4a0:0xf DW_TAG_variable
	.long	.Ldebug_loc15           # DW_AT_location
	.long	.Linfo_string54         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x4af:0xf DW_TAG_variable
	.long	.Ldebug_loc16           # DW_AT_location
	.long	.Linfo_string44         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x4be:0xf DW_TAG_variable
	.long	.Ldebug_loc25           # DW_AT_location
	.long	.Linfo_string65         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x4cd:0xf DW_TAG_variable
	.long	.Ldebug_loc26           # DW_AT_location
	.long	.Linfo_string66         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x4dc:0xf DW_TAG_variable
	.long	.Ldebug_loc27           # DW_AT_location
	.long	.Linfo_string67         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x4eb:0xf DW_TAG_variable
	.long	.Ldebug_loc28           # DW_AT_location
	.long	.Linfo_string68         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	76                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x4fa:0x101 DW_TAG_lexical_block
	.long	.Ldebug_ranges23        # DW_AT_ranges
	.byte	23                      # Abbrev [23] 0x4ff:0xf DW_TAG_variable
	.long	.Ldebug_loc29           # DW_AT_location
	.long	.Linfo_string69         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x50e:0xf DW_TAG_variable
	.long	.Ldebug_loc30           # DW_AT_location
	.long	.Linfo_string70         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x51d:0xf DW_TAG_variable
	.long	.Ldebug_loc31           # DW_AT_location
	.long	.Linfo_string71         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x52c:0xf DW_TAG_variable
	.long	.Ldebug_loc32           # DW_AT_location
	.long	.Linfo_string72         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	77                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x53b:0xbf DW_TAG_lexical_block
	.long	.Ldebug_ranges22        # DW_AT_ranges
	.byte	23                      # Abbrev [23] 0x540:0xf DW_TAG_variable
	.long	.Ldebug_loc19           # DW_AT_location
	.long	.Linfo_string57         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x54f:0xf DW_TAG_variable
	.long	.Ldebug_loc20           # DW_AT_location
	.long	.Linfo_string58         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x55e:0xf DW_TAG_variable
	.long	.Ldebug_loc21           # DW_AT_location
	.long	.Linfo_string59         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	24                      # Abbrev [24] 0x56d:0xc DW_TAG_variable
	.byte	0                       # DW_AT_const_value
	.long	.Linfo_string63         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	78                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x579:0x80 DW_TAG_lexical_block
	.long	.Ldebug_ranges21        # DW_AT_ranges
	.byte	23                      # Abbrev [23] 0x57e:0xf DW_TAG_variable
	.long	.Ldebug_loc22           # DW_AT_location
	.long	.Linfo_string7          # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x58d:0xf DW_TAG_variable
	.long	.Ldebug_loc23           # DW_AT_location
	.long	.Linfo_string61         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	23                      # Abbrev [23] 0x59c:0xf DW_TAG_variable
	.long	.Ldebug_loc24           # DW_AT_location
	.long	.Linfo_string62         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	24                      # Abbrev [24] 0x5ab:0xc DW_TAG_variable
	.byte	3                       # DW_AT_const_value
	.long	.Linfo_string64         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	79                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x5b7:0x41 DW_TAG_lexical_block
	.long	.Ldebug_ranges20        # DW_AT_ranges
	.byte	24                      # Abbrev [24] 0x5bc:0x15 DW_TAG_variable
	.ascii	"\377\377\377\377\377\377\377\377\377\001" # DW_AT_const_value
	.long	.Linfo_string60         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	80                      # DW_AT_decl_line
	.long	160                     # DW_AT_type
	.byte	15                      # Abbrev [15] 0x5d1:0x26 DW_TAG_lexical_block
	.long	.Ldebug_ranges19        # DW_AT_ranges
	.byte	25                      # Abbrev [25] 0x5d6:0xb DW_TAG_variable
	.long	.Linfo_string74         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	82                      # DW_AT_decl_line
	.long	1685                    # DW_AT_type
	.byte	15                      # Abbrev [15] 0x5e1:0x15 DW_TAG_lexical_block
	.long	.Ldebug_ranges18        # DW_AT_ranges
	.byte	23                      # Abbrev [23] 0x5e6:0xf DW_TAG_variable
	.long	.Ldebug_loc17           # DW_AT_location
	.long	.Linfo_string55         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	83                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x5fd:0x18 DW_TAG_subprogram
	.long	.Linfo_string31         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string31         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	1                       # DW_AT_external
	.byte	22                      # Abbrev [22] 0x609:0xb DW_TAG_formal_parameter
	.long	.Linfo_string76         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x615:0x18 DW_TAG_subprogram
	.long	.Linfo_string32         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string32         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.byte	1                       # DW_AT_external
	.byte	22                      # Abbrev [22] 0x621:0xb DW_TAG_formal_parameter
	.long	.Linfo_string76         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	26                      # Abbrev [26] 0x62d:0x18 DW_TAG_subprogram
	.long	.Linfo_string33         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string33         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	1                       # DW_AT_external
	.byte	22                      # Abbrev [22] 0x639:0xb DW_TAG_formal_parameter
	.long	.Linfo_string76         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	1648                    # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	27                      # Abbrev [27] 0x645:0x11 DW_TAG_subprogram
	.long	.Linfo_string40         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string40         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.short	568                     # DW_AT_decl_line
	.long	153                     # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	3                       # Abbrev [3] 0x656:0xd DW_TAG_array_type
	.long	160                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x65b:0x7 DW_TAG_subrange_type
	.long	167                     # DW_AT_type
	.byte	0                       # DW_AT_lower_bound
	.byte	16                      # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0x663:0xd DW_TAG_array_type
	.long	160                     # DW_AT_type
	.byte	4                       # Abbrev [4] 0x668:0x7 DW_TAG_subrange_type
	.long	167                     # DW_AT_type
	.byte	0                       # DW_AT_lower_bound
	.byte	0                       # DW_AT_upper_bound
	.byte	0                       # End Of Children Mark
	.byte	7                       # Abbrev [7] 0x670:0x7 DW_TAG_base_type
	.long	.Linfo_string45         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	28                      # Abbrev [28] 0x677:0x5 DW_TAG_reference_type
	.long	1660                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x67c:0x5 DW_TAG_array_type
	.long	160                     # DW_AT_type
	.byte	28                      # Abbrev [28] 0x681:0x5 DW_TAG_reference_type
	.long	1670                    # DW_AT_type
	.byte	29                      # Abbrev [29] 0x686:0x5 DW_TAG_array_type
	.long	1675                    # DW_AT_type
	.byte	30                      # Abbrev [30] 0x68b:0x5 DW_TAG_const_type
	.long	160                     # DW_AT_type
	.byte	28                      # Abbrev [28] 0x690:0x5 DW_TAG_reference_type
	.long	1622                    # DW_AT_type
	.byte	7                       # Abbrev [7] 0x695:0x7 DW_TAG_base_type
	.long	.Linfo_string75         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	0                       # End Of Children Mark
.L.debug_info_end0:
	.section	.debug_abbrev,"",@progbits
	.byte	1                       # Abbreviation Code
	.byte	17                      # DW_TAG_compile_unit
	.byte	1                       # DW_CHILDREN_yes
	.byte	37                      # DW_AT_producer
	.byte	14                      # DW_FORM_strp
	.byte	19                      # DW_AT_language
	.byte	5                       # DW_FORM_data2
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	16                      # DW_AT_stmt_list
	.byte	6                       # DW_FORM_data4
	.byte	27                      # DW_AT_comp_dir
	.byte	14                      # DW_FORM_strp
	.ascii	"\341\177"              # DW_AT_APPLE_optimized
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	2                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.ascii	"\207@"                 # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	4                       # Abbreviation Code
	.byte	33                      # DW_TAG_subrange_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	34                      # DW_AT_lower_bound
	.byte	11                      # DW_FORM_data1
	.byte	47                      # DW_AT_upper_bound
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
	.byte	19                      # DW_TAG_structure_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	13                      # DW_TAG_member
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	56                      # DW_AT_data_member_location
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	8                       # Abbreviation Code
	.byte	36                      # DW_TAG_base_type
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	62                      # DW_AT_encoding
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	9                       # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.ascii	"\207@"                 # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	10                      # Abbreviation Code
	.byte	4                       # DW_TAG_enumeration_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	11                      # Abbreviation Code
	.byte	40                      # DW_TAG_enumerator
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	28                      # DW_AT_const_value
	.byte	13                      # DW_FORM_sdata
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	12                      # Abbreviation Code
	.byte	4                       # DW_TAG_enumeration_type
	.byte	1                       # DW_CHILDREN_yes
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	11                      # DW_AT_byte_size
	.byte	11                      # DW_FORM_data1
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	13                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	"\347\177"              # DW_AT_APPLE_omit_frame_ptr
	.byte	12                      # DW_FORM_flag
	.ascii	"\207@"                 # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	14                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	15                      # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	16                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	17                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	10                      # DW_FORM_block1
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	18                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	19                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	15                      # DW_FORM_udata
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	20                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
	.byte	64                      # DW_AT_frame_base
	.byte	10                      # DW_FORM_block1
	.ascii	"\347\177"              # DW_AT_APPLE_omit_frame_ptr
	.byte	12                      # DW_FORM_flag
	.ascii	"\207@"                 # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	21                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	22                      # Abbreviation Code
	.byte	5                       # DW_TAG_formal_parameter
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	23                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	2                       # DW_AT_location
	.byte	6                       # DW_FORM_data4
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	24                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	28                      # DW_AT_const_value
	.byte	15                      # DW_FORM_udata
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	25                      # Abbreviation Code
	.byte	52                      # DW_TAG_variable
	.byte	0                       # DW_CHILDREN_no
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	26                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	1                       # DW_CHILDREN_yes
	.ascii	"\207@"                 # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	27                      # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
	.ascii	"\207@"                 # DW_AT_MIPS_linkage_name
	.byte	14                      # DW_FORM_strp
	.byte	3                       # DW_AT_name
	.byte	14                      # DW_FORM_strp
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	5                       # DW_FORM_data2
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	28                      # Abbreviation Code
	.byte	16                      # DW_TAG_reference_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	29                      # Abbreviation Code
	.byte	1                       # DW_TAG_array_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	30                      # Abbreviation Code
	.byte	38                      # DW_TAG_const_type
	.byte	0                       # DW_CHILDREN_no
	.byte	73                      # DW_AT_type
	.byte	19                      # DW_FORM_ref4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	0                       # EOM(3)
	.section	.debug_ranges,"",@progbits
.Ldebug_ranges0:
	.long	.Lfunc_begin0
	.long	.Lfunc_end0
	.long	0
	.long	0
.Ldebug_ranges1:
	.long	.Ltmp10
	.long	.Ltmp31
	.long	0
	.long	0
.Ldebug_ranges2:
	.long	.Ltmp10
	.long	.Ltmp31
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp10
	.long	.Ltmp31
	.long	0
	.long	0
.Ldebug_ranges4:
	.long	.Lfunc_begin1
	.long	.Lfunc_end1
	.long	0
	.long	0
.Ldebug_ranges5:
	.long	.Ltmp37
	.long	.Ltmp38
	.long	0
	.long	0
.Ldebug_ranges6:
	.long	.Ltmp37
	.long	.Ltmp38
	.long	0
	.long	0
.Ldebug_ranges7:
	.long	.Ltmp37
	.long	.Ltmp38
	.long	0
	.long	0
.Ldebug_ranges8:
	.long	.Lfunc_begin2
	.long	.Lfunc_end2
	.long	0
	.long	0
.Ldebug_ranges9:
	.long	.Ltmp45
	.long	.Ltmp55
	.long	0
	.long	0
.Ldebug_ranges10:
	.long	.Ltmp45
	.long	.Ltmp55
	.long	0
	.long	0
.Ldebug_ranges11:
	.long	.Lfunc_begin3
	.long	.Lfunc_end3
	.long	0
	.long	0
.Ldebug_ranges12:
	.long	.Ltmp62
	.long	.Ltmp71
	.long	0
	.long	0
.Ldebug_ranges13:
	.long	.Ltmp62
	.long	.Ltmp71
	.long	0
	.long	0
.Ldebug_ranges14:
	.long	.Lfunc_begin4
	.long	.Lfunc_end4
	.long	0
	.long	0
.Ldebug_ranges15:
	.long	.Ltmp89
	.long	.Ltmp90
	.long	0
	.long	0
.Ldebug_ranges16:
	.long	.Ltmp82
	.long	.Ltmp90
	.long	0
	.long	0
.Ldebug_ranges17:
	.long	.Lfunc_begin5
	.long	.Lfunc_end5
	.long	0
	.long	0
.Ldebug_ranges18:
	.long	.Ltmp102
	.long	.Ltmp430
	.long	0
	.long	0
.Ldebug_ranges19:
	.long	.Ltmp102
	.long	.Ltmp430
	.long	0
	.long	0
.Ldebug_ranges20:
	.long	.Ltmp102
	.long	.Ltmp430
	.long	0
	.long	0
.Ldebug_ranges21:
	.long	.Ltmp102
	.long	.Ltmp430
	.long	0
	.long	0
.Ldebug_ranges22:
	.long	.Ltmp102
	.long	.Ltmp430
	.long	0
	.long	0
.Ldebug_ranges23:
	.long	.Ltmp102
	.long	.Ltmp430
	.long	0
	.long	0
.Ldebug_ranges24:
	.long	.Ltmp102
	.long	.Ltmp430
	.long	0
	.long	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Lfunc_begin0
	.long	.Ltmp9
.Lset0 = .Ltmp434-.Ltmp433              # Loc expr size
	.short	.Lset0
.Ltmp433:
	.byte	80                      # DW_OP_reg0
.Ltmp434:
	.long	.Ltmp9
	.long	.Ltmp10
.Lset1 = .Ltmp436-.Ltmp435              # Loc expr size
	.short	.Lset1
.Ltmp435:
	.byte	85                      # DW_OP_reg5
.Ltmp436:
	.long	.Ltmp11
	.long	.Ltmp14
.Lset2 = .Ltmp438-.Ltmp437              # Loc expr size
	.short	.Lset2
.Ltmp437:
	.byte	85                      # DW_OP_reg5
.Ltmp438:
	.long	0
	.long	0
.Ldebug_loc1:
	.long	.Ltmp12
	.long	.Ltmp13
.Lset3 = .Ltmp440-.Ltmp439              # Loc expr size
	.short	.Lset3
.Ltmp439:
	.byte	118                     # DW_OP_breg6
	.byte	0                       # 
.Ltmp440:
	.long	.Ltmp15
	.long	.Ltmp19
.Lset4 = .Ltmp442-.Ltmp441              # Loc expr size
	.short	.Lset4
.Ltmp441:
	.byte	86                      # DW_OP_reg6
.Ltmp442:
	.long	.Ltmp19
	.long	.Ltmp20
.Lset5 = .Ltmp444-.Ltmp443              # Loc expr size
	.short	.Lset5
.Ltmp443:
	.byte	80                      # DW_OP_reg0
.Ltmp444:
	.long	.Ltmp29
	.long	.Ltmp30
.Lset6 = .Ltmp446-.Ltmp445              # Loc expr size
	.short	.Lset6
.Ltmp445:
	.byte	81                      # DW_OP_reg1
.Ltmp446:
	.long	0
	.long	0
.Ldebug_loc2:
	.long	.Ltmp16
	.long	.Ltmp21
.Lset7 = .Ltmp448-.Ltmp447              # Loc expr size
	.short	.Lset7
.Ltmp447:
	.byte	16                      # DW_OP_constu
	.byte	74                      # 
.Ltmp448:
	.long	.Ltmp21
	.long	.Ltmp26
.Lset8 = .Ltmp450-.Ltmp449              # Loc expr size
	.short	.Lset8
.Ltmp449:
	.byte	89                      # DW_OP_reg9
.Ltmp450:
	.long	.Ltmp27
	.long	.Ltmp28
.Lset9 = .Ltmp452-.Ltmp451              # Loc expr size
	.short	.Lset9
.Ltmp451:
	.byte	80                      # DW_OP_reg0
.Ltmp452:
	.long	0
	.long	0
.Ldebug_loc3:
	.long	.Lfunc_begin1
	.long	.Ltmp35
.Lset10 = .Ltmp454-.Ltmp453             # Loc expr size
	.short	.Lset10
.Ltmp453:
	.byte	80                      # DW_OP_reg0
.Ltmp454:
	.long	.Ltmp35
	.long	.Ltmp36
.Lset11 = .Ltmp456-.Ltmp455             # Loc expr size
	.short	.Lset11
.Ltmp455:
	.byte	81                      # DW_OP_reg1
.Ltmp456:
	.long	0
	.long	0
.Ldebug_loc4:
	.long	.Lfunc_begin2
	.long	.Ltmp46
.Lset12 = .Ltmp458-.Ltmp457             # Loc expr size
	.short	.Lset12
.Ltmp457:
	.byte	80                      # DW_OP_reg0
.Ltmp458:
	.long	0
	.long	0
.Ldebug_loc5:
	.long	.Lfunc_begin2
	.long	.Ltmp46
.Lset13 = .Ltmp460-.Ltmp459             # Loc expr size
	.short	.Lset13
.Ltmp459:
	.byte	81                      # DW_OP_reg1
.Ltmp460:
	.long	.Ltmp47
	.long	.Ltmp51
.Lset14 = .Ltmp462-.Ltmp461             # Loc expr size
	.short	.Lset14
.Ltmp461:
	.byte	81                      # DW_OP_reg1
.Ltmp462:
	.long	.Ltmp53
	.long	.Ltmp54
.Lset15 = .Ltmp464-.Ltmp463             # Loc expr size
	.short	.Lset15
.Ltmp463:
	.byte	81                      # DW_OP_reg1
.Ltmp464:
	.long	0
	.long	0
.Ldebug_loc6:
	.long	.Lfunc_begin2
	.long	.Ltmp46
.Lset16 = .Ltmp466-.Ltmp465             # Loc expr size
	.short	.Lset16
.Ltmp465:
	.byte	82                      # DW_OP_reg2
.Ltmp466:
	.long	.Ltmp47
	.long	.Ltmp49
.Lset17 = .Ltmp468-.Ltmp467             # Loc expr size
	.short	.Lset17
.Ltmp467:
	.byte	82                      # DW_OP_reg2
.Ltmp468:
	.long	0
	.long	0
.Ldebug_loc7:
	.long	.Lfunc_begin2
	.long	.Ltmp46
.Lset18 = .Ltmp470-.Ltmp469             # Loc expr size
	.short	.Lset18
.Ltmp469:
	.byte	83                      # DW_OP_reg3
.Ltmp470:
	.long	.Ltmp47
	.long	.Ltmp52
.Lset19 = .Ltmp472-.Ltmp471             # Loc expr size
	.short	.Lset19
.Ltmp471:
	.byte	83                      # DW_OP_reg3
.Ltmp472:
	.long	0
	.long	0
.Ldebug_loc8:
	.long	.Lfunc_begin3
	.long	.Ltmp63
.Lset20 = .Ltmp474-.Ltmp473             # Loc expr size
	.short	.Lset20
.Ltmp473:
	.byte	80                      # DW_OP_reg0
.Ltmp474:
	.long	0
	.long	0
.Ldebug_loc9:
	.long	.Lfunc_begin3
	.long	.Ltmp63
.Lset21 = .Ltmp476-.Ltmp475             # Loc expr size
	.short	.Lset21
.Ltmp475:
	.byte	81                      # DW_OP_reg1
.Ltmp476:
	.long	.Ltmp64
	.long	.Ltmp68
.Lset22 = .Ltmp478-.Ltmp477             # Loc expr size
	.short	.Lset22
.Ltmp477:
	.byte	81                      # DW_OP_reg1
.Ltmp478:
	.long	.Ltmp69
	.long	.Ltmp70
.Lset23 = .Ltmp480-.Ltmp479             # Loc expr size
	.short	.Lset23
.Ltmp479:
	.byte	81                      # DW_OP_reg1
.Ltmp480:
	.long	0
	.long	0
.Ldebug_loc10:
	.long	.Lfunc_begin3
	.long	.Ltmp63
.Lset24 = .Ltmp482-.Ltmp481             # Loc expr size
	.short	.Lset24
.Ltmp481:
	.byte	82                      # DW_OP_reg2
.Ltmp482:
	.long	.Ltmp64
	.long	.Ltmp66
.Lset25 = .Ltmp484-.Ltmp483             # Loc expr size
	.short	.Lset25
.Ltmp483:
	.byte	82                      # DW_OP_reg2
.Ltmp484:
	.long	0
	.long	0
.Ldebug_loc11:
	.long	.Lfunc_begin3
	.long	.Ltmp62
.Lset26 = .Ltmp486-.Ltmp485             # Loc expr size
	.short	.Lset26
.Ltmp485:
	.byte	83                      # DW_OP_reg3
.Ltmp486:
	.long	0
	.long	0
.Ldebug_loc12:
	.long	.Lfunc_begin4
	.long	.Ltmp81
.Lset27 = .Ltmp488-.Ltmp487             # Loc expr size
	.short	.Lset27
.Ltmp487:
	.byte	80                      # DW_OP_reg0
.Ltmp488:
	.long	0
	.long	0
.Ldebug_loc13:
	.long	.Lfunc_begin4
	.long	.Ltmp79
.Lset28 = .Ltmp490-.Ltmp489             # Loc expr size
	.short	.Lset28
.Ltmp489:
	.byte	81                      # DW_OP_reg1
.Ltmp490:
	.long	.Ltmp79
	.long	.Ltmp80
.Lset29 = .Ltmp492-.Ltmp491             # Loc expr size
	.short	.Lset29
.Ltmp491:
	.byte	87                      # DW_OP_reg7
.Ltmp492:
	.long	.Ltmp81
	.long	.Ltmp83
.Lset30 = .Ltmp494-.Ltmp493             # Loc expr size
	.short	.Lset30
.Ltmp493:
	.byte	87                      # DW_OP_reg7
.Ltmp494:
	.long	.Ltmp84
	.long	.Ltmp86
.Lset31 = .Ltmp496-.Ltmp495             # Loc expr size
	.short	.Lset31
.Ltmp495:
	.byte	87                      # DW_OP_reg7
.Ltmp496:
	.long	.Ltmp87
	.long	.Ltmp88
.Lset32 = .Ltmp498-.Ltmp497             # Loc expr size
	.short	.Lset32
.Ltmp497:
	.byte	87                      # DW_OP_reg7
.Ltmp498:
	.long	0
	.long	0
.Ldebug_loc14:
	.long	.Lfunc_begin4
	.long	.Ltmp79
.Lset33 = .Ltmp500-.Ltmp499             # Loc expr size
	.short	.Lset33
.Ltmp499:
	.byte	82                      # DW_OP_reg2
.Ltmp500:
	.long	.Ltmp79
	.long	.Ltmp80
.Lset34 = .Ltmp502-.Ltmp501             # Loc expr size
	.short	.Lset34
.Ltmp501:
	.byte	86                      # DW_OP_reg6
.Ltmp502:
	.long	.Ltmp81
	.long	.Ltmp83
.Lset35 = .Ltmp504-.Ltmp503             # Loc expr size
	.short	.Lset35
.Ltmp503:
	.byte	86                      # DW_OP_reg6
.Ltmp504:
	.long	.Ltmp84
	.long	.Ltmp89
.Lset36 = .Ltmp506-.Ltmp505             # Loc expr size
	.short	.Lset36
.Ltmp505:
	.byte	86                      # DW_OP_reg6
.Ltmp506:
	.long	0
	.long	0
.Ldebug_loc15:
	.long	.Ltmp101
	.long	.Ltmp172
.Lset37 = .Ltmp508-.Ltmp507             # Loc expr size
	.short	.Lset37
.Ltmp507:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp508:
	.long	.Ltmp172
	.long	.Ltmp173
.Lset38 = .Ltmp510-.Ltmp509             # Loc expr size
	.short	.Lset38
.Ltmp509:
	.byte	89                      # DW_OP_reg9
.Ltmp510:
	.long	.Ltmp174
	.long	.Ltmp175
.Lset39 = .Ltmp512-.Ltmp511             # Loc expr size
	.short	.Lset39
.Ltmp511:
	.byte	83                      # DW_OP_reg3
.Ltmp512:
	.long	.Ltmp177
	.long	.Ltmp183
.Lset40 = .Ltmp514-.Ltmp513             # Loc expr size
	.short	.Lset40
.Ltmp513:
	.byte	83                      # DW_OP_reg3
.Ltmp514:
	.long	.Ltmp307
	.long	.Ltmp311
.Lset41 = .Ltmp516-.Ltmp515             # Loc expr size
	.short	.Lset41
.Ltmp515:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp516:
	.long	.Ltmp311
	.long	.Ltmp312
.Lset42 = .Ltmp518-.Ltmp517             # Loc expr size
	.short	.Lset42
.Ltmp517:
	.byte	82                      # DW_OP_reg2
.Ltmp518:
	.long	.Ltmp325
	.long	.Ltmp360
.Lset43 = .Ltmp520-.Ltmp519             # Loc expr size
	.short	.Lset43
.Ltmp519:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp520:
	.long	.Ltmp361
	.long	.Ltmp365
.Lset44 = .Ltmp522-.Ltmp521             # Loc expr size
	.short	.Lset44
.Ltmp521:
	.byte	90                      # DW_OP_reg10
.Ltmp522:
	.long	.Ltmp365
	.long	.Ltmp366
.Lset45 = .Ltmp524-.Ltmp523             # Loc expr size
	.short	.Lset45
.Ltmp523:
	.byte	87                      # DW_OP_reg7
.Ltmp524:
	.long	.Ltmp380
	.long	.Ltmp381
.Lset46 = .Ltmp526-.Ltmp525             # Loc expr size
	.short	.Lset46
.Ltmp525:
	.byte	87                      # DW_OP_reg7
.Ltmp526:
	.long	0
	.long	0
.Ldebug_loc16:
	.long	.Ltmp103
	.long	.Ltmp108
.Lset47 = .Ltmp528-.Ltmp527             # Loc expr size
	.short	.Lset47
.Ltmp527:
	.byte	85                      # DW_OP_reg5
.Ltmp528:
	.long	.Ltmp161
	.long	.Ltmp228
.Lset48 = .Ltmp530-.Ltmp529             # Loc expr size
	.short	.Lset48
.Ltmp529:
	.byte	16                      # DW_OP_constu
	.byte	32                      # 
.Ltmp530:
	.long	.Ltmp228
	.long	.Ltmp253
.Lset49 = .Ltmp532-.Ltmp531             # Loc expr size
	.short	.Lset49
.Ltmp531:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp532:
	.long	.Ltmp253
	.long	.Ltmp254
.Lset50 = .Ltmp534-.Ltmp533             # Loc expr size
	.short	.Lset50
.Ltmp533:
	.byte	90                      # DW_OP_reg10
.Ltmp534:
	.long	.Ltmp255
	.long	.Ltmp257
.Lset51 = .Ltmp536-.Ltmp535             # Loc expr size
	.short	.Lset51
.Ltmp535:
	.byte	90                      # DW_OP_reg10
.Ltmp536:
	.long	.Ltmp267
	.long	.Ltmp268
.Lset52 = .Ltmp538-.Ltmp537             # Loc expr size
	.short	.Lset52
.Ltmp537:
	.byte	126                     # DW_OP_breg14
.asciiz"\314"                           # 
.Ltmp538:
	.long	.Ltmp306
	.long	.Ltmp308
.Lset53 = .Ltmp540-.Ltmp539             # Loc expr size
	.short	.Lset53
.Ltmp539:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp540:
	.long	.Ltmp308
	.long	.Ltmp309
.Lset54 = .Ltmp542-.Ltmp541             # Loc expr size
	.short	.Lset54
.Ltmp541:
	.byte	82                      # DW_OP_reg2
.Ltmp542:
	.long	.Ltmp314
	.long	.Ltmp345
.Lset55 = .Ltmp544-.Ltmp543             # Loc expr size
	.short	.Lset55
.Ltmp543:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp544:
	.long	.Ltmp345
	.long	.Ltmp364
.Lset56 = .Ltmp546-.Ltmp545             # Loc expr size
	.short	.Lset56
.Ltmp545:
	.byte	16                      # DW_OP_constu
	.byte	8                       # 
.Ltmp546:
	.long	.Ltmp364
	.long	.Ltmp393
.Lset57 = .Ltmp548-.Ltmp547             # Loc expr size
	.short	.Lset57
.Ltmp547:
	.byte	16                      # DW_OP_constu
	.byte	16                      # 
.Ltmp548:
	.long	.Ltmp393
	.long	.Ltmp417
.Lset58 = .Ltmp550-.Ltmp549             # Loc expr size
	.short	.Lset58
.Ltmp549:
	.byte	16                      # DW_OP_constu
	.byte	8                       # 
.Ltmp550:
	.long	.Ltmp417
	.long	.Lfunc_end5
.Lset59 = .Ltmp552-.Ltmp551             # Loc expr size
	.short	.Lset59
.Ltmp551:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp552:
	.long	0
	.long	0
.Ldebug_loc17:
	.long	.Ltmp104
	.long	.Ltmp105
.Lset60 = .Ltmp554-.Ltmp553             # Loc expr size
	.short	.Lset60
.Ltmp553:
	.byte	87                      # DW_OP_reg7
.Ltmp554:
	.long	.Ltmp105
	.long	.Ltmp106
.Lset61 = .Ltmp556-.Ltmp555             # Loc expr size
	.short	.Lset61
.Ltmp555:
	.byte	88                      # DW_OP_reg8
.Ltmp556:
	.long	.Ltmp109
	.long	.Ltmp111
.Lset62 = .Ltmp558-.Ltmp557             # Loc expr size
	.short	.Lset62
.Ltmp557:
	.byte	91                      # DW_OP_reg11
.Ltmp558:
	.long	.Ltmp113
	.long	.Ltmp114
.Lset63 = .Ltmp560-.Ltmp559             # Loc expr size
	.short	.Lset63
.Ltmp559:
	.byte	82                      # DW_OP_reg2
.Ltmp560:
	.long	.Ltmp114
	.long	.Ltmp116
.Lset64 = .Ltmp562-.Ltmp561             # Loc expr size
	.short	.Lset64
.Ltmp561:
	.byte	87                      # DW_OP_reg7
.Ltmp562:
	.long	.Ltmp117
	.long	.Ltmp120
.Lset65 = .Ltmp564-.Ltmp563             # Loc expr size
	.short	.Lset65
.Ltmp563:
	.byte	82                      # DW_OP_reg2
.Ltmp564:
	.long	.Ltmp121
	.long	.Ltmp123
.Lset66 = .Ltmp566-.Ltmp565             # Loc expr size
	.short	.Lset66
.Ltmp565:
	.byte	87                      # DW_OP_reg7
.Ltmp566:
	.long	.Ltmp124
	.long	.Ltmp127
.Lset67 = .Ltmp568-.Ltmp567             # Loc expr size
	.short	.Lset67
.Ltmp567:
	.byte	82                      # DW_OP_reg2
.Ltmp568:
	.long	.Ltmp128
	.long	.Ltmp130
.Lset68 = .Ltmp570-.Ltmp569             # Loc expr size
	.short	.Lset68
.Ltmp569:
	.byte	87                      # DW_OP_reg7
.Ltmp570:
	.long	.Ltmp131
	.long	.Ltmp134
.Lset69 = .Ltmp572-.Ltmp571             # Loc expr size
	.short	.Lset69
.Ltmp571:
	.byte	82                      # DW_OP_reg2
.Ltmp572:
	.long	.Ltmp135
	.long	.Ltmp137
.Lset70 = .Ltmp574-.Ltmp573             # Loc expr size
	.short	.Lset70
.Ltmp573:
	.byte	87                      # DW_OP_reg7
.Ltmp574:
	.long	.Ltmp138
	.long	.Ltmp141
.Lset71 = .Ltmp576-.Ltmp575             # Loc expr size
	.short	.Lset71
.Ltmp575:
	.byte	82                      # DW_OP_reg2
.Ltmp576:
	.long	.Ltmp142
	.long	.Ltmp144
.Lset72 = .Ltmp578-.Ltmp577             # Loc expr size
	.short	.Lset72
.Ltmp577:
	.byte	87                      # DW_OP_reg7
.Ltmp578:
	.long	.Ltmp145
	.long	.Ltmp148
.Lset73 = .Ltmp580-.Ltmp579             # Loc expr size
	.short	.Lset73
.Ltmp579:
	.byte	82                      # DW_OP_reg2
.Ltmp580:
	.long	.Ltmp149
	.long	.Ltmp151
.Lset74 = .Ltmp582-.Ltmp581             # Loc expr size
	.short	.Lset74
.Ltmp581:
	.byte	87                      # DW_OP_reg7
.Ltmp582:
	.long	.Ltmp152
	.long	.Ltmp154
.Lset75 = .Ltmp584-.Ltmp583             # Loc expr size
	.short	.Lset75
.Ltmp583:
	.byte	81                      # DW_OP_reg1
.Ltmp584:
	.long	.Ltmp154
	.long	.Ltmp155
.Lset76 = .Ltmp586-.Ltmp585             # Loc expr size
	.short	.Lset76
.Ltmp585:
	.byte	82                      # DW_OP_reg2
.Ltmp586:
	.long	.Ltmp156
	.long	.Ltmp158
.Lset77 = .Ltmp588-.Ltmp587             # Loc expr size
	.short	.Lset77
.Ltmp587:
	.byte	81                      # DW_OP_reg1
.Ltmp588:
	.long	.Ltmp159
	.long	.Ltmp161
.Lset78 = .Ltmp590-.Ltmp589             # Loc expr size
	.short	.Lset78
.Ltmp589:
	.byte	82                      # DW_OP_reg2
.Ltmp590:
	.long	.Ltmp162
	.long	.Ltmp163
.Lset79 = .Ltmp592-.Ltmp591             # Loc expr size
	.short	.Lset79
.Ltmp591:
	.byte	87                      # DW_OP_reg7
.Ltmp592:
	.long	.Ltmp163
	.long	.Ltmp164
.Lset80 = .Ltmp594-.Ltmp593             # Loc expr size
	.short	.Lset80
.Ltmp593:
	.byte	88                      # DW_OP_reg8
.Ltmp594:
	.long	.Ltmp168
	.long	.Ltmp170
.Lset81 = .Ltmp596-.Ltmp595             # Loc expr size
	.short	.Lset81
.Ltmp595:
	.byte	87                      # DW_OP_reg7
.Ltmp596:
	.long	.Ltmp178
	.long	.Ltmp179
.Lset82 = .Ltmp598-.Ltmp597             # Loc expr size
	.short	.Lset82
.Ltmp597:
	.byte	80                      # DW_OP_reg0
.Ltmp598:
	.long	.Ltmp179
	.long	.Ltmp180
.Lset83 = .Ltmp600-.Ltmp599             # Loc expr size
	.short	.Lset83
.Ltmp599:
	.byte	86                      # DW_OP_reg6
.Ltmp600:
	.long	.Ltmp184
	.long	.Ltmp187
.Lset84 = .Ltmp602-.Ltmp601             # Loc expr size
	.short	.Lset84
.Ltmp601:
	.byte	80                      # DW_OP_reg0
.Ltmp602:
	.long	.Ltmp188
	.long	.Ltmp190
.Lset85 = .Ltmp604-.Ltmp603             # Loc expr size
	.short	.Lset85
.Ltmp603:
	.byte	86                      # DW_OP_reg6
.Ltmp604:
	.long	.Ltmp191
	.long	.Ltmp194
.Lset86 = .Ltmp606-.Ltmp605             # Loc expr size
	.short	.Lset86
.Ltmp605:
	.byte	80                      # DW_OP_reg0
.Ltmp606:
	.long	.Ltmp195
	.long	.Ltmp197
.Lset87 = .Ltmp608-.Ltmp607             # Loc expr size
	.short	.Lset87
.Ltmp607:
	.byte	86                      # DW_OP_reg6
.Ltmp608:
	.long	.Ltmp198
	.long	.Ltmp201
.Lset88 = .Ltmp610-.Ltmp609             # Loc expr size
	.short	.Lset88
.Ltmp609:
	.byte	80                      # DW_OP_reg0
.Ltmp610:
	.long	.Ltmp202
	.long	.Ltmp204
.Lset89 = .Ltmp612-.Ltmp611             # Loc expr size
	.short	.Lset89
.Ltmp611:
	.byte	86                      # DW_OP_reg6
.Ltmp612:
	.long	.Ltmp205
	.long	.Ltmp208
.Lset90 = .Ltmp614-.Ltmp613             # Loc expr size
	.short	.Lset90
.Ltmp613:
	.byte	80                      # DW_OP_reg0
.Ltmp614:
	.long	.Ltmp209
	.long	.Ltmp211
.Lset91 = .Ltmp616-.Ltmp615             # Loc expr size
	.short	.Lset91
.Ltmp615:
	.byte	86                      # DW_OP_reg6
.Ltmp616:
	.long	.Ltmp212
	.long	.Ltmp215
.Lset92 = .Ltmp618-.Ltmp617             # Loc expr size
	.short	.Lset92
.Ltmp617:
	.byte	80                      # DW_OP_reg0
.Ltmp618:
	.long	.Ltmp216
	.long	.Ltmp218
.Lset93 = .Ltmp620-.Ltmp619             # Loc expr size
	.short	.Lset93
.Ltmp619:
	.byte	86                      # DW_OP_reg6
.Ltmp620:
	.long	.Ltmp219
	.long	.Ltmp222
.Lset94 = .Ltmp622-.Ltmp621             # Loc expr size
	.short	.Lset94
.Ltmp621:
	.byte	80                      # DW_OP_reg0
.Ltmp622:
	.long	.Ltmp223
	.long	.Ltmp225
.Lset95 = .Ltmp624-.Ltmp623             # Loc expr size
	.short	.Lset95
.Ltmp623:
	.byte	86                      # DW_OP_reg6
.Ltmp624:
	.long	.Ltmp226
	.long	.Ltmp228
.Lset96 = .Ltmp626-.Ltmp625             # Loc expr size
	.short	.Lset96
.Ltmp625:
	.byte	80                      # DW_OP_reg0
.Ltmp626:
	.long	.Ltmp228
	.long	.Ltmp229
.Lset97 = .Ltmp628-.Ltmp627             # Loc expr size
	.short	.Lset97
.Ltmp627:
	.byte	81                      # DW_OP_reg1
.Ltmp628:
	.long	.Ltmp230
	.long	.Ltmp232
.Lset98 = .Ltmp630-.Ltmp629             # Loc expr size
	.short	.Lset98
.Ltmp629:
	.byte	80                      # DW_OP_reg0
.Ltmp630:
	.long	.Ltmp233
	.long	.Ltmp235
.Lset99 = .Ltmp632-.Ltmp631             # Loc expr size
	.short	.Lset99
.Ltmp631:
	.byte	81                      # DW_OP_reg1
.Ltmp632:
	.long	.Ltmp246
	.long	.Ltmp247
.Lset100 = .Ltmp634-.Ltmp633            # Loc expr size
	.short	.Lset100
.Ltmp633:
	.byte	86                      # DW_OP_reg6
.Ltmp634:
	.long	.Ltmp248
	.long	.Ltmp250
.Lset101 = .Ltmp636-.Ltmp635            # Loc expr size
	.short	.Lset101
.Ltmp635:
	.byte	90                      # DW_OP_reg10
.Ltmp636:
	.long	.Ltmp251
	.long	.Ltmp253
.Lset102 = .Ltmp638-.Ltmp637            # Loc expr size
	.short	.Lset102
.Ltmp637:
	.byte	86                      # DW_OP_reg6
.Ltmp638:
	.long	.Ltmp288
	.long	.Ltmp289
.Lset103 = .Ltmp640-.Ltmp639            # Loc expr size
	.short	.Lset103
.Ltmp639:
	.byte	86                      # DW_OP_reg6
.Ltmp640:
	.long	.Ltmp290
	.long	.Ltmp292
.Lset104 = .Ltmp642-.Ltmp641            # Loc expr size
	.short	.Lset104
.Ltmp641:
	.byte	81                      # DW_OP_reg1
.Ltmp642:
	.long	.Ltmp293
	.long	.Ltmp295
.Lset105 = .Ltmp644-.Ltmp643            # Loc expr size
	.short	.Lset105
.Ltmp643:
	.byte	81                      # DW_OP_reg1
.Ltmp644:
	.long	.Ltmp296
	.long	.Ltmp297
.Lset106 = .Ltmp646-.Ltmp645            # Loc expr size
	.short	.Lset106
.Ltmp645:
	.byte	81                      # DW_OP_reg1
.Ltmp646:
	.long	.Ltmp298
	.long	.Ltmp300
.Lset107 = .Ltmp648-.Ltmp647            # Loc expr size
	.short	.Lset107
.Ltmp647:
	.byte	86                      # DW_OP_reg6
.Ltmp648:
	.long	.Ltmp301
	.long	.Ltmp303
.Lset108 = .Ltmp650-.Ltmp649            # Loc expr size
	.short	.Lset108
.Ltmp649:
	.byte	81                      # DW_OP_reg1
.Ltmp650:
	.long	.Ltmp317
	.long	.Ltmp318
.Lset109 = .Ltmp652-.Ltmp651            # Loc expr size
	.short	.Lset109
.Ltmp651:
	.byte	82                      # DW_OP_reg2
.Ltmp652:
	.long	.Ltmp319
	.long	.Ltmp321
.Lset110 = .Ltmp654-.Ltmp653            # Loc expr size
	.short	.Lset110
.Ltmp653:
	.byte	83                      # DW_OP_reg3
.Ltmp654:
	.long	.Ltmp322
	.long	.Ltmp324
.Lset111 = .Ltmp656-.Ltmp655            # Loc expr size
	.short	.Lset111
.Ltmp655:
	.byte	82                      # DW_OP_reg2
.Ltmp656:
	.long	.Ltmp326
	.long	.Ltmp327
.Lset112 = .Ltmp658-.Ltmp657            # Loc expr size
	.short	.Lset112
.Ltmp657:
	.byte	82                      # DW_OP_reg2
.Ltmp658:
	.long	.Ltmp328
	.long	.Ltmp330
.Lset113 = .Ltmp660-.Ltmp659            # Loc expr size
	.short	.Lset113
.Ltmp659:
	.byte	83                      # DW_OP_reg3
.Ltmp660:
	.long	.Ltmp331
	.long	.Ltmp333
.Lset114 = .Ltmp662-.Ltmp661            # Loc expr size
	.short	.Lset114
.Ltmp661:
	.byte	83                      # DW_OP_reg3
.Ltmp662:
	.long	.Ltmp333
	.long	.Ltmp334
.Lset115 = .Ltmp664-.Ltmp663            # Loc expr size
	.short	.Lset115
.Ltmp663:
	.byte	82                      # DW_OP_reg2
.Ltmp664:
	.long	.Ltmp348
	.long	.Ltmp350
.Lset116 = .Ltmp666-.Ltmp665            # Loc expr size
	.short	.Lset116
.Ltmp665:
	.byte	91                      # DW_OP_reg11
.Ltmp666:
	.long	.Ltmp352
	.long	.Ltmp354
.Lset117 = .Ltmp668-.Ltmp667            # Loc expr size
	.short	.Lset117
.Ltmp667:
	.byte	91                      # DW_OP_reg11
.Ltmp668:
	.long	.Ltmp355
	.long	.Ltmp357
.Lset118 = .Ltmp670-.Ltmp669            # Loc expr size
	.short	.Lset118
.Ltmp669:
	.byte	83                      # DW_OP_reg3
.Ltmp670:
	.long	.Ltmp357
	.long	.Ltmp359
.Lset119 = .Ltmp672-.Ltmp671            # Loc expr size
	.short	.Lset119
.Ltmp671:
	.byte	82                      # DW_OP_reg2
.Ltmp672:
	.long	.Ltmp368
	.long	.Ltmp369
.Lset120 = .Ltmp674-.Ltmp673            # Loc expr size
	.short	.Lset120
.Ltmp673:
	.byte	83                      # DW_OP_reg3
.Ltmp674:
	.long	.Ltmp371
	.long	.Ltmp373
.Lset121 = .Ltmp676-.Ltmp675            # Loc expr size
	.short	.Lset121
.Ltmp675:
	.byte	91                      # DW_OP_reg11
.Ltmp676:
	.long	.Ltmp374
	.long	.Ltmp377
.Lset122 = .Ltmp678-.Ltmp677            # Loc expr size
	.short	.Lset122
.Ltmp677:
	.byte	82                      # DW_OP_reg2
.Ltmp678:
	.long	.Ltmp382
	.long	.Ltmp383
.Lset123 = .Ltmp680-.Ltmp679            # Loc expr size
	.short	.Lset123
.Ltmp679:
	.byte	82                      # DW_OP_reg2
.Ltmp680:
	.long	.Ltmp384
	.long	.Ltmp386
.Lset124 = .Ltmp682-.Ltmp681            # Loc expr size
	.short	.Lset124
.Ltmp681:
	.byte	83                      # DW_OP_reg3
.Ltmp682:
	.long	.Ltmp387
	.long	.Ltmp389
.Lset125 = .Ltmp684-.Ltmp683            # Loc expr size
	.short	.Lset125
.Ltmp683:
	.byte	83                      # DW_OP_reg3
.Ltmp684:
	.long	.Ltmp389
	.long	.Ltmp390
.Lset126 = .Ltmp686-.Ltmp685            # Loc expr size
	.short	.Lset126
.Ltmp685:
	.byte	82                      # DW_OP_reg2
.Ltmp686:
	.long	.Ltmp396
	.long	.Ltmp397
.Lset127 = .Ltmp688-.Ltmp687            # Loc expr size
	.short	.Lset127
.Ltmp687:
	.byte	83                      # DW_OP_reg3
.Ltmp688:
	.long	.Ltmp398
	.long	.Ltmp400
.Lset128 = .Ltmp690-.Ltmp689            # Loc expr size
	.short	.Lset128
.Ltmp689:
	.byte	91                      # DW_OP_reg11
.Ltmp690:
	.long	.Ltmp401
	.long	.Ltmp403
.Lset129 = .Ltmp692-.Ltmp691            # Loc expr size
	.short	.Lset129
.Ltmp691:
	.byte	83                      # DW_OP_reg3
.Ltmp692:
	.long	.Ltmp405
	.long	.Ltmp406
.Lset130 = .Ltmp694-.Ltmp693            # Loc expr size
	.short	.Lset130
.Ltmp693:
	.byte	83                      # DW_OP_reg3
.Ltmp694:
	.long	.Ltmp407
	.long	.Ltmp409
.Lset131 = .Ltmp696-.Ltmp695            # Loc expr size
	.short	.Lset131
.Ltmp695:
	.byte	91                      # DW_OP_reg11
.Ltmp696:
	.long	.Ltmp410
	.long	.Ltmp412
.Lset132 = .Ltmp698-.Ltmp697            # Loc expr size
	.short	.Lset132
.Ltmp697:
	.byte	83                      # DW_OP_reg3
.Ltmp698:
	.long	.Ltmp418
	.long	.Ltmp419
.Lset133 = .Ltmp700-.Ltmp699            # Loc expr size
	.short	.Lset133
.Ltmp699:
	.byte	91                      # DW_OP_reg11
.Ltmp700:
	.long	.Ltmp420
	.long	.Ltmp422
.Lset134 = .Ltmp702-.Ltmp701            # Loc expr size
	.short	.Lset134
.Ltmp701:
	.byte	84                      # DW_OP_reg4
.Ltmp702:
	.long	.Ltmp423
	.long	.Ltmp425
.Lset135 = .Ltmp704-.Ltmp703            # Loc expr size
	.short	.Lset135
.Ltmp703:
	.byte	91                      # DW_OP_reg11
.Ltmp704:
	.long	0
	.long	0
.Ldebug_loc18:
	.long	.Lfunc_begin5
	.long	.Ltmp112
.Lset136 = .Ltmp706-.Ltmp705            # Loc expr size
	.short	.Lset136
.Ltmp705:
	.byte	91                      # DW_OP_reg11
.Ltmp706:
	.long	.Ltmp162
	.long	.Ltmp166
.Lset137 = .Ltmp708-.Ltmp707            # Loc expr size
	.short	.Lset137
.Ltmp707:
	.byte	91                      # DW_OP_reg11
.Ltmp708:
	.long	.Ltmp166
	.long	.Ltmp167
.Lset138 = .Ltmp710-.Ltmp709            # Loc expr size
	.short	.Lset138
.Ltmp709:
	.byte	86                      # DW_OP_reg6
.Ltmp710:
	.long	.Ltmp310
	.long	.Ltmp313
.Lset139 = .Ltmp712-.Ltmp711            # Loc expr size
	.short	.Lset139
.Ltmp711:
	.byte	81                      # DW_OP_reg1
.Ltmp712:
	.long	0
	.long	0
.Ldebug_loc19:
	.long	.Ltmp154
	.long	.Ltmp258
.Lset140 = .Ltmp714-.Ltmp713            # Loc expr size
	.short	.Lset140
.Ltmp713:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp714:
	.long	.Ltmp258
	.long	.Ltmp259
.Lset141 = .Ltmp716-.Ltmp715            # Loc expr size
	.short	.Lset141
.Ltmp715:
	.byte	86                      # DW_OP_reg6
.Ltmp716:
	.long	.Ltmp260
	.long	.Ltmp261
.Lset142 = .Ltmp718-.Ltmp717            # Loc expr size
	.short	.Lset142
.Ltmp717:
	.byte	86                      # DW_OP_reg6
.Ltmp718:
	.long	.Ltmp261
	.long	.Ltmp267
.Lset143 = .Ltmp720-.Ltmp719            # Loc expr size
	.short	.Lset143
.Ltmp719:
	.byte	126                     # DW_OP_breg14
.asciiz"\310"                           # 
.Ltmp720:
	.long	.Ltmp267
	.long	.Lfunc_end5
.Lset144 = .Ltmp722-.Ltmp721            # Loc expr size
	.short	.Lset144
.Ltmp721:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp722:
	.long	0
	.long	0
.Ldebug_loc20:
	.long	.Ltmp177
	.long	.Ltmp237
.Lset145 = .Ltmp724-.Ltmp723            # Loc expr size
	.short	.Lset145
.Ltmp723:
	.byte	126                     # DW_OP_breg14
	.byte	28                      # 
.Ltmp724:
	.long	.Ltmp238
	.long	.Ltmp240
.Lset146 = .Ltmp726-.Ltmp725            # Loc expr size
	.short	.Lset146
.Ltmp725:
	.byte	126                     # DW_OP_breg14
	.byte	28                      # 
.Ltmp726:
	.long	.Ltmp241
	.long	.Ltmp257
.Lset147 = .Ltmp728-.Ltmp727            # Loc expr size
	.short	.Lset147
.Ltmp727:
	.byte	126                     # DW_OP_breg14
	.byte	28                      # 
.Ltmp728:
	.long	.Ltmp267
	.long	.Ltmp268
.Lset148 = .Ltmp730-.Ltmp729            # Loc expr size
	.short	.Lset148
.Ltmp729:
	.byte	126                     # DW_OP_breg14
	.byte	28                      # 
.Ltmp730:
	.long	.Ltmp305
	.long	.Ltmp306
.Lset149 = .Ltmp732-.Ltmp731            # Loc expr size
	.short	.Lset149
.Ltmp731:
	.byte	126                     # DW_OP_breg14
	.byte	28                      # 
.Ltmp732:
	.long	0
	.long	0
.Ldebug_loc21:
	.long	.Ltmp186
	.long	.Ltmp264
.Lset150 = .Ltmp734-.Ltmp733            # Loc expr size
	.short	.Lset150
.Ltmp733:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp734:
	.long	.Ltmp264
	.long	.Ltmp265
.Lset151 = .Ltmp736-.Ltmp735            # Loc expr size
	.short	.Lset151
.Ltmp735:
	.byte	86                      # DW_OP_reg6
.Ltmp736:
	.long	.Ltmp266
	.long	.Ltmp267
.Lset152 = .Ltmp738-.Ltmp737            # Loc expr size
	.short	.Lset152
.Ltmp737:
	.byte	126                     # DW_OP_breg14
	.byte	40                      # 
.Ltmp738:
	.long	.Ltmp267
	.long	.Lfunc_end5
.Lset153 = .Ltmp740-.Ltmp739            # Loc expr size
	.short	.Lset153
.Ltmp739:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp740:
	.long	0
	.long	0
.Ldebug_loc22:
	.long	.Ltmp193
	.long	.Ltmp269
.Lset154 = .Ltmp742-.Ltmp741            # Loc expr size
	.short	.Lset154
.Ltmp741:
	.byte	16                      # DW_OP_constu
	.ascii	"\377\377\377\377\377\377\377\377\377\001" # 
.Ltmp742:
	.long	.Ltmp269
	.long	.Ltmp270
.Lset155 = .Ltmp744-.Ltmp743            # Loc expr size
	.short	.Lset155
.Ltmp743:
	.byte	85                      # DW_OP_reg5
.Ltmp744:
	.long	.Ltmp271
	.long	.Ltmp272
.Lset156 = .Ltmp746-.Ltmp745            # Loc expr size
	.short	.Lset156
.Ltmp745:
	.byte	85                      # DW_OP_reg5
.Ltmp746:
	.long	.Ltmp273
	.long	.Ltmp274
.Lset157 = .Ltmp748-.Ltmp747            # Loc expr size
	.short	.Lset157
.Ltmp747:
	.byte	85                      # DW_OP_reg5
.Ltmp748:
	.long	.Ltmp276
	.long	.Ltmp282
.Lset158 = .Ltmp750-.Ltmp749            # Loc expr size
	.short	.Lset158
.Ltmp749:
	.byte	85                      # DW_OP_reg5
.Ltmp750:
	.long	.Ltmp286
	.long	.Ltmp288
.Lset159 = .Ltmp752-.Ltmp751            # Loc expr size
	.short	.Lset159
.Ltmp751:
	.byte	85                      # DW_OP_reg5
.Ltmp752:
	.long	.Ltmp296
	.long	.Ltmp304
.Lset160 = .Ltmp754-.Ltmp753            # Loc expr size
	.short	.Lset160
.Ltmp753:
	.byte	85                      # DW_OP_reg5
.Ltmp754:
	.long	.Ltmp305
	.long	.Ltmp336
.Lset161 = .Ltmp756-.Ltmp755            # Loc expr size
	.short	.Lset161
.Ltmp755:
	.byte	16                      # DW_OP_constu
	.ascii	"\377\377\377\377\377\377\377\377\377\001" # 
.Ltmp756:
	.long	.Ltmp336
	.long	.Ltmp346
.Lset162 = .Ltmp758-.Ltmp757            # Loc expr size
	.short	.Lset162
.Ltmp757:
	.byte	89                      # DW_OP_reg9
.Ltmp758:
	.long	.Ltmp351
	.long	.Ltmp355
.Lset163 = .Ltmp760-.Ltmp759            # Loc expr size
	.short	.Lset163
.Ltmp759:
	.byte	89                      # DW_OP_reg9
.Ltmp760:
	.long	.Ltmp367
	.long	.Ltmp368
.Lset164 = .Ltmp762-.Ltmp761            # Loc expr size
	.short	.Lset164
.Ltmp761:
	.byte	90                      # DW_OP_reg10
.Ltmp762:
	.long	.Ltmp413
	.long	.Ltmp414
.Lset165 = .Ltmp764-.Ltmp763            # Loc expr size
	.short	.Lset165
.Ltmp763:
	.byte	83                      # DW_OP_reg3
.Ltmp764:
	.long	.Ltmp415
	.long	.Ltmp416
.Lset166 = .Ltmp766-.Ltmp765            # Loc expr size
	.short	.Lset166
.Ltmp765:
	.byte	83                      # DW_OP_reg3
.Ltmp766:
	.long	.Ltmp417
	.long	.Ltmp426
.Lset167 = .Ltmp768-.Ltmp767            # Loc expr size
	.short	.Lset167
.Ltmp767:
	.byte	16                      # DW_OP_constu
	.ascii	"\377\377\377\377\377\377\377\377\377\001" # 
.Ltmp768:
	.long	.Ltmp426
	.long	.Ltmp427
.Lset168 = .Ltmp770-.Ltmp769            # Loc expr size
	.short	.Lset168
.Ltmp769:
	.byte	91                      # DW_OP_reg11
.Ltmp770:
	.long	.Ltmp428
	.long	.Ltmp429
.Lset169 = .Ltmp772-.Ltmp771            # Loc expr size
	.short	.Lset169
.Ltmp771:
	.byte	91                      # DW_OP_reg11
.Ltmp772:
	.long	0
	.long	0
.Ldebug_loc23:
	.long	.Ltmp221
	.long	.Ltmp274
.Lset170 = .Ltmp774-.Ltmp773            # Loc expr size
	.short	.Lset170
.Ltmp773:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp774:
	.long	.Ltmp274
	.long	.Ltmp275
.Lset171 = .Ltmp776-.Ltmp775            # Loc expr size
	.short	.Lset171
.Ltmp775:
	.byte	90                      # DW_OP_reg10
.Ltmp776:
	.long	.Ltmp276
	.long	.Ltmp281
.Lset172 = .Ltmp778-.Ltmp777            # Loc expr size
	.short	.Lset172
.Ltmp777:
	.byte	90                      # DW_OP_reg10
.Ltmp778:
	.long	.Ltmp281
	.long	.Ltmp282
.Lset173 = .Ltmp780-.Ltmp779            # Loc expr size
	.short	.Lset173
.Ltmp779:
	.byte	126                     # DW_OP_breg14
	.byte	52                      # 
.Ltmp780:
	.long	.Ltmp287
	.long	.Ltmp288
.Lset174 = .Ltmp782-.Ltmp781            # Loc expr size
	.short	.Lset174
.Ltmp781:
	.byte	90                      # DW_OP_reg10
.Ltmp782:
	.long	.Ltmp305
	.long	.Ltmp393
.Lset175 = .Ltmp784-.Ltmp783            # Loc expr size
	.short	.Lset175
.Ltmp783:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp784:
	.long	.Ltmp393
	.long	.Ltmp404
.Lset176 = .Ltmp786-.Ltmp785            # Loc expr size
	.short	.Lset176
.Ltmp785:
	.byte	126                     # DW_OP_breg14
	.byte	52                      # 
.Ltmp786:
	.long	.Ltmp417
	.long	.Lfunc_end5
.Lset177 = .Ltmp788-.Ltmp787            # Loc expr size
	.short	.Lset177
.Ltmp787:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp788:
	.long	0
	.long	0
.Ldebug_loc24:
	.long	.Ltmp242
	.long	.Ltmp257
.Lset178 = .Ltmp790-.Ltmp789            # Loc expr size
	.short	.Lset178
.Ltmp789:
	.byte	126                     # DW_OP_breg14
	.byte	16                      # 
.Ltmp790:
	.long	.Ltmp267
	.long	.Ltmp268
.Lset179 = .Ltmp792-.Ltmp791            # Loc expr size
	.short	.Lset179
.Ltmp791:
	.byte	126                     # DW_OP_breg14
	.byte	16                      # 
.Ltmp792:
	.long	.Ltmp305
	.long	.Ltmp306
.Lset180 = .Ltmp794-.Ltmp793            # Loc expr size
	.short	.Lset180
.Ltmp793:
	.byte	126                     # DW_OP_breg14
	.byte	16                      # 
.Ltmp794:
	.long	0
	.long	0
.Ldebug_loc25:
	.long	.Ltmp284
	.long	.Ltmp285
.Lset181 = .Ltmp796-.Ltmp795            # Loc expr size
	.short	.Lset181
.Ltmp795:
	.byte	81                      # DW_OP_reg1
.Ltmp796:
	.long	.Ltmp335
	.long	.Ltmp358
.Lset182 = .Ltmp798-.Ltmp797            # Loc expr size
	.short	.Lset182
.Ltmp797:
	.byte	16                      # DW_OP_constu
	.ascii	"\200\001"              # 
.Ltmp798:
	.long	.Ltmp358
	.long	.Ltmp359
.Lset183 = .Ltmp800-.Ltmp799            # Loc expr size
	.short	.Lset183
.Ltmp799:
	.byte	84                      # DW_OP_reg4
.Ltmp800:
	.long	0
	.long	0
.Ldebug_loc26:
	.long	.Ltmp325
	.long	.Ltmp364
.Lset184 = .Ltmp802-.Ltmp801            # Loc expr size
	.short	.Lset184
.Ltmp801:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp802:
	.long	.Ltmp364
	.long	.Ltmp364
.Lset185 = .Ltmp804-.Ltmp803            # Loc expr size
	.short	.Lset185
.Ltmp803:
	.byte	83                      # DW_OP_reg3
.Ltmp804:
	.long	.Ltmp364
	.long	.Ltmp364
.Lset186 = .Ltmp806-.Ltmp805            # Loc expr size
	.short	.Lset186
.Ltmp805:
	.byte	82                      # DW_OP_reg2
.Ltmp806:
	.long	.Ltmp379
	.long	.Ltmp380
.Lset187 = .Ltmp808-.Ltmp807            # Loc expr size
	.short	.Lset187
.Ltmp807:
	.byte	82                      # DW_OP_reg2
.Ltmp808:
	.long	0
	.long	0
.Ldebug_loc27:
	.long	.Ltmp325
	.long	.Ltmp363
.Lset188 = .Ltmp810-.Ltmp809            # Loc expr size
	.short	.Lset188
.Ltmp809:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp810:
	.long	.Ltmp363
	.long	.Ltmp364
.Lset189 = .Ltmp812-.Ltmp811            # Loc expr size
	.short	.Lset189
.Ltmp811:
	.byte	89                      # DW_OP_reg9
.Ltmp812:
	.long	.Ltmp379
	.long	.Ltmp380
.Lset190 = .Ltmp814-.Ltmp813            # Loc expr size
	.short	.Lset190
.Ltmp813:
	.byte	89                      # DW_OP_reg9
.Ltmp814:
	.long	0
	.long	0
.Ldebug_loc28:
	.long	.Ltmp325
	.long	.Ltmp362
.Lset191 = .Ltmp816-.Ltmp815            # Loc expr size
	.short	.Lset191
.Ltmp815:
	.byte	16                      # DW_OP_constu
	.byte	0                       # 
.Ltmp816:
	.long	.Ltmp362
	.long	.Ltmp364
.Lset192 = .Ltmp818-.Ltmp817            # Loc expr size
	.short	.Lset192
.Ltmp817:
	.byte	87                      # DW_OP_reg7
.Ltmp818:
	.long	.Ltmp380
	.long	.Ltmp381
.Lset193 = .Ltmp820-.Ltmp819            # Loc expr size
	.short	.Lset193
.Ltmp819:
	.byte	88                      # DW_OP_reg8
.Ltmp820:
	.long	0
	.long	0
.Ldebug_loc29:
	.long	.Ltmp337
	.long	.Ltmp338
.Lset194 = .Ltmp822-.Ltmp821            # Loc expr size
	.short	.Lset194
.Ltmp821:
	.byte	82                      # DW_OP_reg2
.Ltmp822:
	.long	0
	.long	0
.Ldebug_loc30:
	.long	.Ltmp339
	.long	.Ltmp340
.Lset195 = .Ltmp824-.Ltmp823            # Loc expr size
	.short	.Lset195
.Ltmp823:
	.byte	82                      # DW_OP_reg2
.Ltmp824:
	.long	0
	.long	0
.Ldebug_loc31:
	.long	.Ltmp341
	.long	.Ltmp342
.Lset196 = .Ltmp826-.Ltmp825            # Loc expr size
	.short	.Lset196
.Ltmp825:
	.byte	82                      # DW_OP_reg2
.Ltmp826:
	.long	0
	.long	0
.Ldebug_loc32:
	.long	.Ltmp343
	.long	.Ltmp344
.Lset197 = .Ltmp828-.Ltmp827            # Loc expr size
	.short	.Lset197
.Ltmp827:
	.byte	82                      # DW_OP_reg2
.Ltmp828:
	.long	0
	.long	0
.Ldebug_loc33:
	.long	.Lfunc_begin5
	.long	.Ltmp417
.Lset198 = .Ltmp830-.Ltmp829            # Loc expr size
	.short	.Lset198
.Ltmp829:
	.byte	82                      # DW_OP_reg2
.Ltmp830:
	.long	0
	.long	0
	.section	.debug_pubnames,"",@progbits
.Lset199 = .LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
	.long	.Lset199
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset200 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset200
	.long	1557                    # DIE offset
.asciiz"delay_milliseconds"             # External Name
	.long	174                     # DIE offset
.asciiz"Is_XS1_G_Core"                  # External Name
	.long	31                      # DIE offset
.asciiz"SDif"                           # External Name
	.long	1581                    # DIE offset
.asciiz"delay_microseconds"             # External Name
	.long	817                     # DIE offset
.asciiz"disk_write"                     # External Name
	.long	686                     # DIE offset
.asciiz"disk_read"                      # External Name
	.long	1605                    # DIE offset
.asciiz"get_fattime"                    # External Name
	.long	948                     # DIE offset
.asciiz"disk_ioctl"                     # External Name
	.long	464                     # DIE offset
.asciiz"disk_initialize"                # External Name
	.long	1533                    # DIE offset
.asciiz"delay_seconds"                  # External Name
	.long	1072                    # DIE offset
.asciiz"SendCmd"                        # External Name
	.long	585                     # DIE offset
.asciiz"disk_status"                    # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
.Lset201 = .LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
	.long	.Lset201
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset202 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset202
	.long	1685                    # DIE offset
.asciiz"timer"                          # External Name
	.long	293                     # DIE offset
.asciiz"RespType"                       # External Name
	.long	146                     # DIE offset
.asciiz"port"                           # External Name
	.long	65                      # DIE offset
.asciiz"SDHostInterface"                # External Name
	.long	1648                    # DIE offset
.asciiz"unsigned int"                   # External Name
	.long	160                     # DIE offset
.asciiz"unsigned char"                  # External Name
	.long	196                     # DIE offset
.asciiz"int"                            # External Name
	.long	153                     # DIE offset
.asciiz"unsigned long"                  # External Name
	.long	424                     # DIE offset
.asciiz"__TYPE_0"                       # External Name
	.long	0                       # End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.typestring disk_initialize, "f{uc}(uc)"
	.typestring disk_status, "f{uc}(uc)"
	.typestring disk_read, "f{e(){m(RES_ERROR){1},m(RES_NOTRDY){3},m(RES_OK){0},m(RES_PARERR){4},m(RES_WRPRT){2}}}(uc,&(a(:uc)),ul,uc)"
	.typestring disk_write, "f{e(){m(RES_ERROR){1},m(RES_NOTRDY){3},m(RES_OK){0},m(RES_PARERR){4},m(RES_WRPRT){2}}}(uc,&(a(:c:uc)),ul,uc)"
	.typestring disk_ioctl, "f{e(){m(RES_ERROR){1},m(RES_NOTRDY){3},m(RES_OK){0},m(RES_PARERR){4},m(RES_WRPRT){2}}}(uc,uc,&(a(:uc)))"
	.typestring set_port_pull_up, "f{0}(w:p)"
	.typestring read_sswitch_reg, "f{si}(ui,ui,&(ui))"
	.typestring get_local_tile_id, "f{ui}(0)"
	.typestring get_fattime, "f{ul}(0)"
	.typestring SDif, "a(1:s(SDHostInterface){m(Clk){o:p},m(Cmd){p},m(Dat){p},m(Rca){ul},m(Ccs){uc},m(BlockNr){ul}})"
	.typestring Is_XS1_G_Core, "si"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
	.byte	0
.cc_top cc_0,.Lxta.call_labels18
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	122
	.long	.Lxta.call_labels18
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels19
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	366
	.long	.Lxta.call_labels19
.cc_bottom cc_1
.cc_top cc_2,.Lxta.call_labels0
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	438
	.long	.Lxta.call_labels0
.cc_bottom cc_2
.cc_top cc_3,.Lxta.call_labels1
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	438
	.long	.Lxta.call_labels1
.cc_bottom cc_3
.cc_top cc_4,.Lxta.call_labels2
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	455
	.long	.Lxta.call_labels2
.cc_bottom cc_4
.cc_top cc_5,.Lxta.call_labels3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	456
	.long	.Lxta.call_labels3
.cc_bottom cc_5
.cc_top cc_6,.Lxta.call_labels4
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	459
	.long	.Lxta.call_labels4
.cc_bottom cc_6
.cc_top cc_7,.Lxta.call_labels5
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	460
	.long	.Lxta.call_labels5
.cc_bottom cc_7
.cc_top cc_8,.Lxta.call_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	465
	.long	.Lxta.call_labels6
.cc_bottom cc_8
.cc_top cc_9,.Lxta.call_labels7
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	466
	.long	.Lxta.call_labels7
.cc_bottom cc_9
.cc_top cc_10,.Lxta.call_labels8
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	468
	.long	.Lxta.call_labels8
.cc_bottom cc_10
.cc_top cc_11,.Lxta.call_labels9
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	485
	.long	.Lxta.call_labels9
.cc_bottom cc_11
.cc_top cc_12,.Lxta.call_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	486
	.long	.Lxta.call_labels10
.cc_bottom cc_12
.cc_top cc_13,.Lxta.call_labels11
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	487
	.long	.Lxta.call_labels11
.cc_bottom cc_13
.cc_top cc_14,.Lxta.call_labels13
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	503
	.long	.Lxta.call_labels13
.cc_bottom cc_14
.cc_top cc_15,.Lxta.call_labels14
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	507
	.long	.Lxta.call_labels14
.cc_bottom cc_15
.cc_top cc_16,.Lxta.call_labels15
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	521
	.long	.Lxta.call_labels15
.cc_bottom cc_16
.cc_top cc_17,.Lxta.call_labels16
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	525
	.long	.Lxta.call_labels16
.cc_bottom cc_17
.cc_top cc_18,.Lxta.call_labels12
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	537
	.long	.Lxta.call_labels12
.cc_bottom cc_18
.cc_top cc_19,.Lxta.call_labels17
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	547
	.long	.Lxta.call_labels17
.cc_bottom cc_19
.Lentries_end1:
	.section	.xtaendpointtable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
	.byte	0
.cc_top cc_20,.Lxta.endpoint_labels5
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	89
	.long	.Lxta.endpoint_labels5
.cc_bottom cc_20
.cc_top cc_21,.Lxta.endpoint_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	91
	.long	.Lxta.endpoint_labels6
.cc_bottom cc_21
.cc_top cc_22,.Lxta.endpoint_labels7
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	93
	.long	.Lxta.endpoint_labels7
.cc_bottom cc_22
.cc_top cc_23,.Lxta.endpoint_labels8
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	95
	.long	.Lxta.endpoint_labels8
.cc_bottom cc_23
.cc_top cc_24,.Lxta.endpoint_labels9
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	97
	.long	.Lxta.endpoint_labels9
.cc_bottom cc_24
.cc_top cc_25,.Lxta.endpoint_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	99
	.long	.Lxta.endpoint_labels10
.cc_bottom cc_25
.cc_top cc_26,.Lxta.endpoint_labels11
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	101
	.long	.Lxta.endpoint_labels11
.cc_bottom cc_26
.cc_top cc_27,.Lxta.endpoint_labels12
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	103
	.long	.Lxta.endpoint_labels12
.cc_bottom cc_27
.cc_top cc_28,.Lxta.endpoint_labels13
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	104
	.long	.Lxta.endpoint_labels13
.cc_bottom cc_28
.cc_top cc_29,.Lxta.endpoint_labels14
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	105
	.long	.Lxta.endpoint_labels14
.cc_bottom cc_29
.cc_top cc_30,.Lxta.endpoint_labels15
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	107
	.long	.Lxta.endpoint_labels15
.cc_bottom cc_30
.cc_top cc_31,.Lxta.endpoint_labels16
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	109
	.long	.Lxta.endpoint_labels16
.cc_bottom cc_31
.cc_top cc_32,.Lxta.endpoint_labels17
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	111
	.long	.Lxta.endpoint_labels17
.cc_bottom cc_32
.cc_top cc_33,.Lxta.endpoint_labels18
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	113
	.long	.Lxta.endpoint_labels18
.cc_bottom cc_33
.cc_top cc_34,.Lxta.endpoint_labels19
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	115
	.long	.Lxta.endpoint_labels19
.cc_bottom cc_34
.cc_top cc_35,.Lxta.endpoint_labels20
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	117
	.long	.Lxta.endpoint_labels20
.cc_bottom cc_35
.cc_top cc_36,.Lxta.endpoint_labels21
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	119
	.long	.Lxta.endpoint_labels21
.cc_bottom cc_36
.cc_top cc_37,.Lxta.endpoint_labels22
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	123
	.long	.Lxta.endpoint_labels22
.cc_bottom cc_37
.cc_top cc_38,.Lxta.endpoint_labels23
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	126
	.long	.Lxta.endpoint_labels23
.cc_bottom cc_38
.cc_top cc_39,.Lxta.endpoint_labels24
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	129
	.long	.Lxta.endpoint_labels24
.cc_bottom cc_39
.cc_top cc_40,.Lxta.endpoint_labels25
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	130
	.long	.Lxta.endpoint_labels25
.cc_bottom cc_40
.cc_top cc_41,.Lxta.endpoint_labels26
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	132
	.long	.Lxta.endpoint_labels26
.cc_bottom cc_41
.cc_top cc_42,.Lxta.endpoint_labels27
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	138
	.long	.Lxta.endpoint_labels27
.cc_bottom cc_42
.cc_top cc_43,.Lxta.endpoint_labels28
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	148
	.long	.Lxta.endpoint_labels28
.cc_bottom cc_43
.cc_top cc_44,.Lxta.endpoint_labels29
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	160
	.long	.Lxta.endpoint_labels29
.cc_bottom cc_44
.cc_top cc_45,.Lxta.endpoint_labels30
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	165
	.long	.Lxta.endpoint_labels30
.cc_bottom cc_45
.cc_top cc_46,.Lxta.endpoint_labels31
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	169
	.long	.Lxta.endpoint_labels31
.cc_bottom cc_46
.cc_top cc_47,.Lxta.endpoint_labels32
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	177
	.long	.Lxta.endpoint_labels32
.cc_bottom cc_47
.cc_top cc_48,.Lxta.endpoint_labels33
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	180
	.long	.Lxta.endpoint_labels33
.cc_bottom cc_48
.cc_top cc_49,.Lxta.endpoint_labels34
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	181
	.long	.Lxta.endpoint_labels34
.cc_bottom cc_49
.cc_top cc_50,.Lxta.endpoint_labels35
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	183
	.long	.Lxta.endpoint_labels35
.cc_bottom cc_50
.cc_top cc_51,.Lxta.endpoint_labels36
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	185
	.long	.Lxta.endpoint_labels36
.cc_bottom cc_51
.cc_top cc_52,.Lxta.endpoint_labels37
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	187
	.long	.Lxta.endpoint_labels37
.cc_bottom cc_52
.cc_top cc_53,.Lxta.endpoint_labels38
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	190
	.long	.Lxta.endpoint_labels38
.cc_bottom cc_53
.cc_top cc_54,.Lxta.endpoint_labels39
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	191
	.long	.Lxta.endpoint_labels39
.cc_bottom cc_54
.cc_top cc_55,.Lxta.endpoint_labels40
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	193
	.long	.Lxta.endpoint_labels40
.cc_bottom cc_55
.cc_top cc_56,.Lxta.endpoint_labels41
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	195
	.long	.Lxta.endpoint_labels41
.cc_bottom cc_56
.cc_top cc_57,.Lxta.endpoint_labels42
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	254
	.long	.Lxta.endpoint_labels42
.cc_bottom cc_57
.cc_top cc_58,.Lxta.endpoint_labels43
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	257
	.long	.Lxta.endpoint_labels43
.cc_bottom cc_58
.cc_top cc_59,.Lxta.endpoint_labels44
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	258
	.long	.Lxta.endpoint_labels44
.cc_bottom cc_59
.cc_top cc_60,.Lxta.endpoint_labels45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	260
	.long	.Lxta.endpoint_labels45
.cc_bottom cc_60
.cc_top cc_61,.Lxta.endpoint_labels46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	275
	.long	.Lxta.endpoint_labels46
.cc_bottom cc_61
.cc_top cc_62,.Lxta.endpoint_labels47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	278
	.long	.Lxta.endpoint_labels47
.cc_bottom cc_62
.cc_top cc_63,.Lxta.endpoint_labels48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	279
	.long	.Lxta.endpoint_labels48
.cc_bottom cc_63
.cc_top cc_64,.Lxta.endpoint_labels49
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	281
	.long	.Lxta.endpoint_labels49
.cc_bottom cc_64
.cc_top cc_65,.Lxta.endpoint_labels50
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	282
	.long	.Lxta.endpoint_labels50
.cc_bottom cc_65
.cc_top cc_66,.Lxta.endpoint_labels51
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	284
	.long	.Lxta.endpoint_labels51
.cc_bottom cc_66
.cc_top cc_67,.Lxta.endpoint_labels52
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	312
	.long	.Lxta.endpoint_labels52
.cc_bottom cc_67
.cc_top cc_68,.Lxta.endpoint_labels53
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	315
	.long	.Lxta.endpoint_labels53
.cc_bottom cc_68
.cc_top cc_69,.Lxta.endpoint_labels54
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	316
	.long	.Lxta.endpoint_labels54
.cc_bottom cc_69
.cc_top cc_70,.Lxta.endpoint_labels55
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	318
	.long	.Lxta.endpoint_labels55
.cc_bottom cc_70
.cc_top cc_71,.Lxta.endpoint_labels56
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	319
	.long	.Lxta.endpoint_labels56
.cc_bottom cc_71
.cc_top cc_72,.Lxta.endpoint_labels57
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	321
	.long	.Lxta.endpoint_labels57
.cc_bottom cc_72
.cc_top cc_73,.Lxta.endpoint_labels58
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	337
	.long	.Lxta.endpoint_labels58
.cc_bottom cc_73
.cc_top cc_74,.Lxta.endpoint_labels59
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	340
	.long	.Lxta.endpoint_labels59
.cc_bottom cc_74
.cc_top cc_75,.Lxta.endpoint_labels60
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	341
	.long	.Lxta.endpoint_labels60
.cc_bottom cc_75
.cc_top cc_76,.Lxta.endpoint_labels61
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	343
	.long	.Lxta.endpoint_labels61
.cc_bottom cc_76
.cc_top cc_77,.Lxta.endpoint_labels62
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	344
	.long	.Lxta.endpoint_labels62
.cc_bottom cc_77
.cc_top cc_78,.Lxta.endpoint_labels63
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	346
	.long	.Lxta.endpoint_labels63
.cc_bottom cc_78
.cc_top cc_79,.Lxta.endpoint_labels64
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	354
	.long	.Lxta.endpoint_labels64
.cc_bottom cc_79
.cc_top cc_80,.Lxta.endpoint_labels65
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	357
	.long	.Lxta.endpoint_labels65
.cc_bottom cc_80
.cc_top cc_81,.Lxta.endpoint_labels66
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	358
	.long	.Lxta.endpoint_labels66
.cc_bottom cc_81
.cc_top cc_82,.Lxta.endpoint_labels67
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	360
	.long	.Lxta.endpoint_labels67
.cc_bottom cc_82
.cc_top cc_83,.Lxta.endpoint_labels68
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	361
	.long	.Lxta.endpoint_labels68
.cc_bottom cc_83
.cc_top cc_84,.Lxta.endpoint_labels69
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	363
	.long	.Lxta.endpoint_labels69
.cc_bottom cc_84
.cc_top cc_85,.Lxta.endpoint_labels70
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	367
	.long	.Lxta.endpoint_labels70
.cc_bottom cc_85
.cc_top cc_86,.Lxta.endpoint_labels71
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	373
	.long	.Lxta.endpoint_labels71
.cc_bottom cc_86
.cc_top cc_87,.Lxta.endpoint_labels72
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	376
	.long	.Lxta.endpoint_labels72
.cc_bottom cc_87
.cc_top cc_88,.Lxta.endpoint_labels73
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	377
	.long	.Lxta.endpoint_labels73
.cc_bottom cc_88
.cc_top cc_89,.Lxta.endpoint_labels74
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	379
	.long	.Lxta.endpoint_labels74
.cc_bottom cc_89
.cc_top cc_90,.Lxta.endpoint_labels75
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	388
	.long	.Lxta.endpoint_labels75
.cc_bottom cc_90
.cc_top cc_91,.Lxta.endpoint_labels76
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	391
	.long	.Lxta.endpoint_labels76
.cc_bottom cc_91
.cc_top cc_92,.Lxta.endpoint_labels77
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	392
	.long	.Lxta.endpoint_labels77
.cc_bottom cc_92
.cc_top cc_93,.Lxta.endpoint_labels78
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	394
	.long	.Lxta.endpoint_labels78
.cc_bottom cc_93
.cc_top cc_94,.Lxta.endpoint_labels79
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	396
	.long	.Lxta.endpoint_labels79
.cc_bottom cc_94
.cc_top cc_95,.Lxta.endpoint_labels80
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	412
	.long	.Lxta.endpoint_labels80
.cc_bottom cc_95
.cc_top cc_96,.Lxta.endpoint_labels81
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	415
	.long	.Lxta.endpoint_labels81
.cc_bottom cc_96
.cc_top cc_97,.Lxta.endpoint_labels82
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	416
	.long	.Lxta.endpoint_labels82
.cc_bottom cc_97
.cc_top cc_98,.Lxta.endpoint_labels83
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	418
	.long	.Lxta.endpoint_labels83
.cc_bottom cc_98
.cc_top cc_99,.Lxta.endpoint_labels84
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	420
	.long	.Lxta.endpoint_labels84
.cc_bottom cc_99
.cc_top cc_100,.Lxta.endpoint_labels0
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	442
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_100
.cc_top cc_101,.Lxta.endpoint_labels1
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	443
	.long	.Lxta.endpoint_labels1
.cc_bottom cc_101
.cc_top cc_102,.Lxta.endpoint_labels2
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	444
	.long	.Lxta.endpoint_labels2
.cc_bottom cc_102
.cc_top cc_103,.Lxta.endpoint_labels3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	448
	.long	.Lxta.endpoint_labels3
.cc_bottom cc_103
.cc_top cc_104,.Lxta.endpoint_labels4
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	450
	.long	.Lxta.endpoint_labels4
.cc_bottom cc_104
.Lentries_end3:
	.section	.xtalabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
	.byte	0
.cc_top cc_105,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	75
	.long	80
	.long	.Lxtalabel45
.cc_bottom cc_105
.cc_top cc_106,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	82
	.long	83
	.long	.Lxtalabel45
.cc_bottom cc_106
.cc_top cc_107,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	85
	.long	85
	.long	.Lxtalabel45
.cc_bottom cc_107
.cc_top cc_108,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	86
	.long	86
	.long	.Lxtalabel45
.cc_bottom cc_108
.cc_top cc_109,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	87
	.long	87
	.long	.Lxtalabel45
.cc_bottom cc_109
.cc_top cc_110,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	89
	.long	89
	.long	.Lxtalabel45
.cc_bottom cc_110
.cc_top cc_111,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	90
	.long	90
	.long	.Lxtalabel45
.cc_bottom cc_111
.cc_top cc_112,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	91
	.long	91
	.long	.Lxtalabel45
.cc_bottom cc_112
.cc_top cc_113,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	92
	.long	92
	.long	.Lxtalabel45
.cc_bottom cc_113
.cc_top cc_114,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	93
	.long	93
	.long	.Lxtalabel45
.cc_bottom cc_114
.cc_top cc_115,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	94
	.long	94
	.long	.Lxtalabel45
.cc_bottom cc_115
.cc_top cc_116,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	95
	.long	95
	.long	.Lxtalabel45
.cc_bottom cc_116
.cc_top cc_117,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	96
	.long	96
	.long	.Lxtalabel45
.cc_bottom cc_117
.cc_top cc_118,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	97
	.long	97
	.long	.Lxtalabel45
.cc_bottom cc_118
.cc_top cc_119,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	98
	.long	98
	.long	.Lxtalabel45
.cc_bottom cc_119
.cc_top cc_120,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	99
	.long	99
	.long	.Lxtalabel45
.cc_bottom cc_120
.cc_top cc_121,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	100
	.long	100
	.long	.Lxtalabel45
.cc_bottom cc_121
.cc_top cc_122,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	101
	.long	101
	.long	.Lxtalabel45
.cc_bottom cc_122
.cc_top cc_123,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	102
	.long	102
	.long	.Lxtalabel45
.cc_bottom cc_123
.cc_top cc_124,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	103
	.long	103
	.long	.Lxtalabel45
.cc_bottom cc_124
.cc_top cc_125,.Lxtalabel45
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	104
	.long	104
	.long	.Lxtalabel45
.cc_bottom cc_125
.cc_top cc_126,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	105
	.long	105
	.long	.Lxtalabel46
.cc_bottom cc_126
.cc_top cc_127,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	105
	.long	105
	.long	.Lxtalabel48
.cc_bottom cc_127
.cc_top cc_128,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	105
	.long	105
	.long	.Lxtalabel47
.cc_bottom cc_128
.cc_top cc_129,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	106
	.long	106
	.long	.Lxtalabel47
.cc_bottom cc_129
.cc_top cc_130,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	106
	.long	106
	.long	.Lxtalabel46
.cc_bottom cc_130
.cc_top cc_131,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	106
	.long	106
	.long	.Lxtalabel48
.cc_bottom cc_131
.cc_top cc_132,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	107
	.long	107
	.long	.Lxtalabel48
.cc_bottom cc_132
.cc_top cc_133,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	107
	.long	107
	.long	.Lxtalabel46
.cc_bottom cc_133
.cc_top cc_134,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	107
	.long	107
	.long	.Lxtalabel47
.cc_bottom cc_134
.cc_top cc_135,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	108
	.long	108
	.long	.Lxtalabel46
.cc_bottom cc_135
.cc_top cc_136,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	108
	.long	108
	.long	.Lxtalabel48
.cc_bottom cc_136
.cc_top cc_137,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	108
	.long	108
	.long	.Lxtalabel47
.cc_bottom cc_137
.cc_top cc_138,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	109
	.long	109
	.long	.Lxtalabel46
.cc_bottom cc_138
.cc_top cc_139,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	109
	.long	109
	.long	.Lxtalabel47
.cc_bottom cc_139
.cc_top cc_140,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	109
	.long	109
	.long	.Lxtalabel48
.cc_bottom cc_140
.cc_top cc_141,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	110
	.long	110
	.long	.Lxtalabel47
.cc_bottom cc_141
.cc_top cc_142,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	110
	.long	110
	.long	.Lxtalabel46
.cc_bottom cc_142
.cc_top cc_143,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	110
	.long	110
	.long	.Lxtalabel48
.cc_bottom cc_143
.cc_top cc_144,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	111
	.long	111
	.long	.Lxtalabel46
.cc_bottom cc_144
.cc_top cc_145,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	111
	.long	111
	.long	.Lxtalabel47
.cc_bottom cc_145
.cc_top cc_146,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	111
	.long	111
	.long	.Lxtalabel48
.cc_bottom cc_146
.cc_top cc_147,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	112
	.long	112
	.long	.Lxtalabel48
.cc_bottom cc_147
.cc_top cc_148,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	112
	.long	112
	.long	.Lxtalabel47
.cc_bottom cc_148
.cc_top cc_149,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	112
	.long	112
	.long	.Lxtalabel46
.cc_bottom cc_149
.cc_top cc_150,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	113
	.long	113
	.long	.Lxtalabel46
.cc_bottom cc_150
.cc_top cc_151,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	113
	.long	113
	.long	.Lxtalabel47
.cc_bottom cc_151
.cc_top cc_152,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	113
	.long	113
	.long	.Lxtalabel48
.cc_bottom cc_152
.cc_top cc_153,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	114
	.long	114
	.long	.Lxtalabel47
.cc_bottom cc_153
.cc_top cc_154,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	114
	.long	114
	.long	.Lxtalabel46
.cc_bottom cc_154
.cc_top cc_155,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	114
	.long	114
	.long	.Lxtalabel48
.cc_bottom cc_155
.cc_top cc_156,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	115
	.long	115
	.long	.Lxtalabel46
.cc_bottom cc_156
.cc_top cc_157,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	115
	.long	115
	.long	.Lxtalabel47
.cc_bottom cc_157
.cc_top cc_158,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	115
	.long	115
	.long	.Lxtalabel48
.cc_bottom cc_158
.cc_top cc_159,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	116
	.long	116
	.long	.Lxtalabel46
.cc_bottom cc_159
.cc_top cc_160,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	116
	.long	116
	.long	.Lxtalabel47
.cc_bottom cc_160
.cc_top cc_161,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	116
	.long	116
	.long	.Lxtalabel48
.cc_bottom cc_161
.cc_top cc_162,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	117
	.long	117
	.long	.Lxtalabel47
.cc_bottom cc_162
.cc_top cc_163,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	117
	.long	117
	.long	.Lxtalabel46
.cc_bottom cc_163
.cc_top cc_164,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	117
	.long	117
	.long	.Lxtalabel48
.cc_bottom cc_164
.cc_top cc_165,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	118
	.long	118
	.long	.Lxtalabel47
.cc_bottom cc_165
.cc_top cc_166,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	118
	.long	118
	.long	.Lxtalabel48
.cc_bottom cc_166
.cc_top cc_167,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	118
	.long	118
	.long	.Lxtalabel46
.cc_bottom cc_167
.cc_top cc_168,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	119
	.long	119
	.long	.Lxtalabel46
.cc_bottom cc_168
.cc_top cc_169,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	119
	.long	119
	.long	.Lxtalabel47
.cc_bottom cc_169
.cc_top cc_170,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	119
	.long	119
	.long	.Lxtalabel48
.cc_bottom cc_170
.cc_top cc_171,.Lxtalabel48
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	121
	.long	121
	.long	.Lxtalabel48
.cc_bottom cc_171
.cc_top cc_172,.Lxtalabel46
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	121
	.long	121
	.long	.Lxtalabel46
.cc_bottom cc_172
.cc_top cc_173,.Lxtalabel47
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	121
	.long	121
	.long	.Lxtalabel47
.cc_bottom cc_173
.cc_top cc_174,.Lxtalabel49
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	122
	.long	122
	.long	.Lxtalabel49
.cc_bottom cc_174
.cc_top cc_175,.Lxtalabel51
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	123
	.long	124
	.long	.Lxtalabel51
.cc_bottom cc_175
.cc_top cc_176,.Lxtalabel50
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	123
	.long	124
	.long	.Lxtalabel50
.cc_bottom cc_176
.cc_top cc_177,.Lxtalabel52
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	125
	.long	132
	.long	.Lxtalabel52
.cc_bottom cc_177
.cc_top cc_178,.Lxtalabel55
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	125
	.long	132
	.long	.Lxtalabel55
.cc_bottom cc_178
.cc_top cc_179,.Lxtalabel55
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	134
	.long	137
	.long	.Lxtalabel55
.cc_bottom cc_179
.cc_top cc_180,.Lxtalabel52
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	134
	.long	137
	.long	.Lxtalabel52
.cc_bottom cc_180
.cc_top cc_181,.Lxtalabel53
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	138
	.long	139
	.long	.Lxtalabel53
.cc_bottom cc_181
.cc_top cc_182,.Lxtalabel54
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	140
	.long	141
	.long	.Lxtalabel54
.cc_bottom cc_182
.cc_top cc_183,.Lxtalabel54
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	142
	.long	143
	.long	.Lxtalabel54
.cc_bottom cc_183
.cc_top cc_184,.Lxtalabel53
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	144
	.long	147
	.long	.Lxtalabel53
.cc_bottom cc_184
.cc_top cc_185,.Lxtalabel56
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	148
	.long	148
	.long	.Lxtalabel56
.cc_bottom cc_185
.cc_top cc_186,.Lxtalabel56
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	150
	.long	150
	.long	.Lxtalabel56
.cc_bottom cc_186
.cc_top cc_187,.Lxtalabel58
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	151
	.long	151
	.long	.Lxtalabel58
.cc_bottom cc_187
.cc_top cc_188,.Lxtalabel57
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	151
	.long	151
	.long	.Lxtalabel57
.cc_bottom cc_188
.cc_top cc_189,.Lxtalabel59
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	151
	.long	151
	.long	.Lxtalabel59
.cc_bottom cc_189
.cc_top cc_190,.Lxtalabel59
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	152
	.long	152
	.long	.Lxtalabel59
.cc_bottom cc_190
.cc_top cc_191,.Lxtalabel58
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	152
	.long	152
	.long	.Lxtalabel58
.cc_bottom cc_191
.cc_top cc_192,.Lxtalabel57
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	152
	.long	152
	.long	.Lxtalabel57
.cc_bottom cc_192
.cc_top cc_193,.Lxtalabel58
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	153
	.long	155
	.long	.Lxtalabel58
.cc_bottom cc_193
.cc_top cc_194,.Lxtalabel57
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	153
	.long	155
	.long	.Lxtalabel57
.cc_bottom cc_194
.cc_top cc_195,.Lxtalabel59
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	153
	.long	155
	.long	.Lxtalabel59
.cc_bottom cc_195
.cc_top cc_196,.Lxtalabel61
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	157
	.long	159
	.long	.Lxtalabel61
.cc_bottom cc_196
.cc_top cc_197,.Lxtalabel60
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	157
	.long	159
	.long	.Lxtalabel60
.cc_bottom cc_197
.cc_top cc_198,.Lxtalabel62
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	160
	.long	161
	.long	.Lxtalabel62
.cc_bottom cc_198
.cc_top cc_199,.Lxtalabel71
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	162
	.long	162
	.long	.Lxtalabel71
.cc_bottom cc_199
.cc_top cc_200,.Lxtalabel63
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	165
	.long	168
	.long	.Lxtalabel63
.cc_bottom cc_200
.cc_top cc_201,.Lxtalabel64
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	169
	.long	171
	.long	.Lxtalabel64
.cc_bottom cc_201
.cc_top cc_202,.Lxtalabel72
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	172
	.long	173
	.long	.Lxtalabel72
.cc_bottom cc_202
.cc_top cc_203,.Lxtalabel73
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	174
	.long	174
	.long	.Lxtalabel73
.cc_bottom cc_203
.cc_top cc_204,.Lxtalabel73
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	177
	.long	183
	.long	.Lxtalabel73
.cc_bottom cc_204
.cc_top cc_205,.Lxtalabel73
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	185
	.long	185
	.long	.Lxtalabel73
.cc_bottom cc_205
.cc_top cc_206,.Lxtalabel73
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	187
	.long	193
	.long	.Lxtalabel73
.cc_bottom cc_206
.cc_top cc_207,.Lxtalabel73
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	195
	.long	197
	.long	.Lxtalabel73
.cc_bottom cc_207
.cc_top cc_208,.Lxtalabel65
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	201
	.long	201
	.long	.Lxtalabel65
.cc_bottom cc_208
.cc_top cc_209,.Lxtalabel69
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	201
	.long	201
	.long	.Lxtalabel69
.cc_bottom cc_209
.cc_top cc_210,.Lxtalabel68
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	201
	.long	201
	.long	.Lxtalabel68
.cc_bottom cc_210
.cc_top cc_211,.Lxtalabel66
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	201
	.long	201
	.long	.Lxtalabel66
.cc_bottom cc_211
.cc_top cc_212,.Lxtalabel67
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	201
	.long	201
	.long	.Lxtalabel67
.cc_bottom cc_212
.cc_top cc_213,.Lxtalabel70
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	206
	.long	206
	.long	.Lxtalabel70
.cc_bottom cc_213
.cc_top cc_214,.Lxtalabel74
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	207
	.long	207
	.long	.Lxtalabel74
.cc_bottom cc_214
.cc_top cc_215,.Lxtalabel75
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	207
	.long	207
	.long	.Lxtalabel75
.cc_bottom cc_215
.cc_top cc_216,.Lxtalabel76
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	207
	.long	207
	.long	.Lxtalabel76
.cc_bottom cc_216
.cc_top cc_217,.Lxtalabel77
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	207
	.long	207
	.long	.Lxtalabel77
.cc_bottom cc_217
.cc_top cc_218,.Lxtalabel78
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	207
	.long	207
	.long	.Lxtalabel78
.cc_bottom cc_218
.cc_top cc_219,.Lxtalabel79
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	215
	.long	215
	.long	.Lxtalabel79
.cc_bottom cc_219
.cc_top cc_220,.Lxtalabel80
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	215
	.long	215
	.long	.Lxtalabel80
.cc_bottom cc_220
.cc_top cc_221,.Lxtalabel89
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	217
	.long	219
	.long	.Lxtalabel89
.cc_bottom cc_221
.cc_top cc_222,.Lxtalabel81
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	217
	.long	219
	.long	.Lxtalabel81
.cc_bottom cc_222
.cc_top cc_223,.Lxtalabel82
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	217
	.long	219
	.long	.Lxtalabel82
.cc_bottom cc_223
.cc_top cc_224,.Lxtalabel86
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	217
	.long	219
	.long	.Lxtalabel86
.cc_bottom cc_224
.cc_top cc_225,.Lxtalabel82
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	220
	.long	220
	.long	.Lxtalabel82
.cc_bottom cc_225
.cc_top cc_226,.Lxtalabel81
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	220
	.long	220
	.long	.Lxtalabel81
.cc_bottom cc_226
.cc_top cc_227,.Lxtalabel86
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	220
	.long	220
	.long	.Lxtalabel86
.cc_bottom cc_227
.cc_top cc_228,.Lxtalabel89
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	220
	.long	220
	.long	.Lxtalabel89
.cc_bottom cc_228
.cc_top cc_229,.Lxtalabel82
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	221
	.long	221
	.long	.Lxtalabel82
.cc_bottom cc_229
.cc_top cc_230,.Lxtalabel81
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	221
	.long	221
	.long	.Lxtalabel81
.cc_bottom cc_230
.cc_top cc_231,.Lxtalabel89
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	221
	.long	221
	.long	.Lxtalabel89
.cc_bottom cc_231
.cc_top cc_232,.Lxtalabel86
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	221
	.long	221
	.long	.Lxtalabel86
.cc_bottom cc_232
.cc_top cc_233,.Lxtalabel83
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	224
	.long	224
	.long	.Lxtalabel83
.cc_bottom cc_233
.cc_top cc_234,.Lxtalabel83
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	225
	.long	225
	.long	.Lxtalabel83
.cc_bottom cc_234
.cc_top cc_235,.Lxtalabel83
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	226
	.long	227
	.long	.Lxtalabel83
.cc_bottom cc_235
.cc_top cc_236,.Lxtalabel83
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	228
	.long	228
	.long	.Lxtalabel83
.cc_bottom cc_236
.cc_top cc_237,.Lxtalabel85
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	229
	.long	229
	.long	.Lxtalabel85
.cc_bottom cc_237
.cc_top cc_238,.Lxtalabel84
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	229
	.long	229
	.long	.Lxtalabel84
.cc_bottom cc_238
.cc_top cc_239,.Lxtalabel84
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	230
	.long	230
	.long	.Lxtalabel84
.cc_bottom cc_239
.cc_top cc_240,.Lxtalabel85
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	230
	.long	230
	.long	.Lxtalabel85
.cc_bottom cc_240
.cc_top cc_241,.Lxtalabel84
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	231
	.long	231
	.long	.Lxtalabel84
.cc_bottom cc_241
.cc_top cc_242,.Lxtalabel85
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	231
	.long	231
	.long	.Lxtalabel85
.cc_bottom cc_242
.cc_top cc_243,.Lxtalabel84
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	232
	.long	232
	.long	.Lxtalabel84
.cc_bottom cc_243
.cc_top cc_244,.Lxtalabel85
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	232
	.long	232
	.long	.Lxtalabel85
.cc_bottom cc_244
.cc_top cc_245,.Lxtalabel84
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	233
	.long	233
	.long	.Lxtalabel84
.cc_bottom cc_245
.cc_top cc_246,.Lxtalabel85
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	233
	.long	233
	.long	.Lxtalabel85
.cc_bottom cc_246
.cc_top cc_247,.Lxtalabel84
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	234
	.long	234
	.long	.Lxtalabel84
.cc_bottom cc_247
.cc_top cc_248,.Lxtalabel85
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	234
	.long	234
	.long	.Lxtalabel85
.cc_bottom cc_248
.cc_top cc_249,.Lxtalabel87
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	239
	.long	239
	.long	.Lxtalabel87
.cc_bottom cc_249
.cc_top cc_250,.Lxtalabel87
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	240
	.long	240
	.long	.Lxtalabel87
.cc_bottom cc_250
.cc_top cc_251,.Lxtalabel88
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	241
	.long	241
	.long	.Lxtalabel88
.cc_bottom cc_251
.cc_top cc_252,.Lxtalabel88
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	242
	.long	242
	.long	.Lxtalabel88
.cc_bottom cc_252
.cc_top cc_253,.Lxtalabel88
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	243
	.long	244
	.long	.Lxtalabel88
.cc_bottom cc_253
.cc_top cc_254,.Lxtalabel90
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	245
	.long	245
	.long	.Lxtalabel90
.cc_bottom cc_254
.cc_top cc_255,.Lxtalabel90
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	246
	.long	246
	.long	.Lxtalabel90
.cc_bottom cc_255
.cc_top cc_256,.Lxtalabel91
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	247
	.long	247
	.long	.Lxtalabel91
.cc_bottom cc_256
.cc_top cc_257,.Lxtalabel91
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	248
	.long	248
	.long	.Lxtalabel91
.cc_bottom cc_257
.cc_top cc_258,.Lxtalabel91
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	249
	.long	250
	.long	.Lxtalabel91
.cc_bottom cc_258
.cc_top cc_259,.Lxtalabel92
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	253
	.long	261
	.long	.Lxtalabel92
.cc_bottom cc_259
.cc_top cc_260,.Lxtalabel93
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	263
	.long	263
	.long	.Lxtalabel93
.cc_bottom cc_260
.cc_top cc_261,.Lxtalabel93
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	264
	.long	265
	.long	.Lxtalabel93
.cc_bottom cc_261
.cc_top cc_262,.Lxtalabel94
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	266
	.long	266
	.long	.Lxtalabel94
.cc_bottom cc_262
.cc_top cc_263,.Lxtalabel94
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	267
	.long	267
	.long	.Lxtalabel94
.cc_bottom cc_263
.cc_top cc_264,.Lxtalabel94
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	269
	.long	269
	.long	.Lxtalabel94
.cc_bottom cc_264
.cc_top cc_265,.Lxtalabel94
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	275
	.long	284
	.long	.Lxtalabel94
.cc_bottom cc_265
.cc_top cc_266,.Lxtalabel94
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	286
	.long	286
	.long	.Lxtalabel94
.cc_bottom cc_266
.cc_top cc_267,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	287
	.long	288
	.long	.Lxtalabel95
.cc_bottom cc_267
.cc_top cc_268,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	290
	.long	291
	.long	.Lxtalabel95
.cc_bottom cc_268
.cc_top cc_269,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	292
	.long	292
	.long	.Lxtalabel95
.cc_bottom cc_269
.cc_top cc_270,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	294
	.long	295
	.long	.Lxtalabel95
.cc_bottom cc_270
.cc_top cc_271,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	296
	.long	296
	.long	.Lxtalabel95
.cc_bottom cc_271
.cc_top cc_272,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	298
	.long	299
	.long	.Lxtalabel95
.cc_bottom cc_272
.cc_top cc_273,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	300
	.long	300
	.long	.Lxtalabel95
.cc_bottom cc_273
.cc_top cc_274,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	302
	.long	303
	.long	.Lxtalabel95
.cc_bottom cc_274
.cc_top cc_275,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	304
	.long	304
	.long	.Lxtalabel95
.cc_bottom cc_275
.cc_top cc_276,.Lxtalabel95
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	306
	.long	306
	.long	.Lxtalabel95
.cc_bottom cc_276
.cc_top cc_277,.Lxtalabel96
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	307
	.long	307
	.long	.Lxtalabel96
.cc_bottom cc_277
.cc_top cc_278,.Lxtalabel96
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	312
	.long	319
	.long	.Lxtalabel96
.cc_bottom cc_278
.cc_top cc_279,.Lxtalabel97
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	320
	.long	321
	.long	.Lxtalabel97
.cc_bottom cc_279
.cc_top cc_280,.Lxtalabel97
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	323
	.long	323
	.long	.Lxtalabel97
.cc_bottom cc_280
.cc_top cc_281,.Lxtalabel98
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	326
	.long	326
	.long	.Lxtalabel98
.cc_bottom cc_281
.cc_top cc_282,.Lxtalabel98
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	327
	.long	327
	.long	.Lxtalabel98
.cc_bottom cc_282
.cc_top cc_283,.Lxtalabel98
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	328
	.long	328
	.long	.Lxtalabel98
.cc_bottom cc_283
.cc_top cc_284,.Lxtalabel98
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	329
	.long	329
	.long	.Lxtalabel98
.cc_bottom cc_284
.cc_top cc_285,.Lxtalabel98
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	330
	.long	330
	.long	.Lxtalabel98
.cc_bottom cc_285
.cc_top cc_286,.Lxtalabel99
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	331
	.long	332
	.long	.Lxtalabel99
.cc_bottom cc_286
.cc_top cc_287,.Lxtalabel99
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	337
	.long	346
	.long	.Lxtalabel99
.cc_bottom cc_287
.cc_top cc_288,.Lxtalabel99
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	348
	.long	349
	.long	.Lxtalabel99
.cc_bottom cc_288
.cc_top cc_289,.Lxtalabel100
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	354
	.long	363
	.long	.Lxtalabel100
.cc_bottom cc_289
.cc_top cc_290,.Lxtalabel100
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	365
	.long	365
	.long	.Lxtalabel100
.cc_bottom cc_290
.cc_top cc_291,.Lxtalabel101
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	366
	.long	366
	.long	.Lxtalabel101
.cc_bottom cc_291
.cc_top cc_292,.Lxtalabel102
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	367
	.long	368
	.long	.Lxtalabel102
.cc_bottom cc_292
.cc_top cc_293,.Lxtalabel103
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	369
	.long	369
	.long	.Lxtalabel103
.cc_bottom cc_293
.cc_top cc_294,.Lxtalabel103
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	373
	.long	380
	.long	.Lxtalabel103
.cc_bottom cc_294
.cc_top cc_295,.Lxtalabel103
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	382
	.long	383
	.long	.Lxtalabel103
.cc_bottom cc_295
.cc_top cc_296,.Lxtalabel104
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	384
	.long	384
	.long	.Lxtalabel104
.cc_bottom cc_296
.cc_top cc_297,.Lxtalabel104
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	388
	.long	394
	.long	.Lxtalabel104
.cc_bottom cc_297
.cc_top cc_298,.Lxtalabel104
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	396
	.long	397
	.long	.Lxtalabel104
.cc_bottom cc_298
.cc_top cc_299,.Lxtalabel105
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	398
	.long	399
	.long	.Lxtalabel105
.cc_bottom cc_299
.cc_top cc_300,.Lxtalabel106
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	400
	.long	401
	.long	.Lxtalabel106
.cc_bottom cc_300
.cc_top cc_301,.Lxtalabel106
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	402
	.long	402
	.long	.Lxtalabel106
.cc_bottom cc_301
.cc_top cc_302,.Lxtalabel107
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	404
	.long	404
	.long	.Lxtalabel107
.cc_bottom cc_302
.cc_top cc_303,.Lxtalabel107
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	405
	.long	407
	.long	.Lxtalabel107
.cc_bottom cc_303
.cc_top cc_304,.Lxtalabel108
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	408
	.long	408
	.long	.Lxtalabel108
.cc_bottom cc_304
.cc_top cc_305,.Lxtalabel108
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	412
	.long	418
	.long	.Lxtalabel108
.cc_bottom cc_305
.cc_top cc_306,.Lxtalabel108
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	420
	.long	421
	.long	.Lxtalabel108
.cc_bottom cc_306
.cc_top cc_307,.Lxtalabel109
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	422
	.long	423
	.long	.Lxtalabel109
.cc_bottom cc_307
.cc_top cc_308,.Lxtalabel109
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	424
	.long	424
	.long	.Lxtalabel109
.cc_bottom cc_308
.cc_top cc_309,.Lxtalabel0
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	431
	.long	434
	.long	.Lxtalabel0
.cc_bottom cc_309
.cc_top cc_310,.Lxtalabel0
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	436
	.long	436
	.long	.Lxtalabel0
.cc_bottom cc_310
.cc_top cc_311,.Lxtalabel1
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	438
	.long	439
	.long	.Lxtalabel1
.cc_bottom cc_311
.cc_top cc_312,.Lxtalabel1
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	438
	.long	438
	.long	.Lxtalabel1
.cc_bottom cc_312
.cc_top cc_313,.Lxtalabel1
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	442
	.long	445
	.long	.Lxtalabel1
.cc_bottom cc_313
.cc_top cc_314,.Lxtalabel2
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	446
	.long	451
	.long	.Lxtalabel2
.cc_bottom cc_314
.cc_top cc_315,.Lxtalabel3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	454
	.long	455
	.long	.Lxtalabel3
.cc_bottom cc_315
.cc_top cc_316,.Lxtalabel6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	456
	.long	457
	.long	.Lxtalabel6
.cc_bottom cc_316
.cc_top cc_317,.Lxtalabel5
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	456
	.long	457
	.long	.Lxtalabel5
.cc_bottom cc_317
.cc_top cc_318,.Lxtalabel4
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	456
	.long	457
	.long	.Lxtalabel4
.cc_bottom cc_318
.cc_top cc_319,.Lxtalabel7
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	458
	.long	459
	.long	.Lxtalabel7
.cc_bottom cc_319
.cc_top cc_320,.Lxtalabel8
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	460
	.long	460
	.long	.Lxtalabel8
.cc_bottom cc_320
.cc_top cc_321,.Lxtalabel9
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	461
	.long	461
	.long	.Lxtalabel9
.cc_bottom cc_321
.cc_top cc_322,.Lxtalabel10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	462
	.long	463
	.long	.Lxtalabel10
.cc_bottom cc_322
.cc_top cc_323,.Lxtalabel11
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	464
	.long	465
	.long	.Lxtalabel11
.cc_bottom cc_323
.cc_top cc_324,.Lxtalabel12
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	466
	.long	466
	.long	.Lxtalabel12
.cc_bottom cc_324
.cc_top cc_325,.Lxtalabel13
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	467
	.long	468
	.long	.Lxtalabel13
.cc_bottom cc_325
.cc_top cc_326,.Lxtalabel14
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	469
	.long	469
	.long	.Lxtalabel14
.cc_bottom cc_326
.cc_top cc_327,.Lxtalabel16
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	470
	.long	479
	.long	.Lxtalabel16
.cc_bottom cc_327
.cc_top cc_328,.Lxtalabel15
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	480
	.long	484
	.long	.Lxtalabel15
.cc_bottom cc_328
.cc_top cc_329,.Lxtalabel17
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	485
	.long	485
	.long	.Lxtalabel17
.cc_bottom cc_329
.cc_top cc_330,.Lxtalabel18
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	486
	.long	486
	.long	.Lxtalabel18
.cc_bottom cc_330
.cc_top cc_331,.Lxtalabel19
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	487
	.long	487
	.long	.Lxtalabel19
.cc_bottom cc_331
.cc_top cc_332,.Lxtalabel23
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	495
	.long	497
	.long	.Lxtalabel23
.cc_bottom cc_332
.cc_top cc_333,.Lxtalabel23
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	499
	.long	499
	.long	.Lxtalabel23
.cc_bottom cc_333
.cc_top cc_334,.Lxtalabel26
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	500
	.long	500
	.long	.Lxtalabel26
.cc_bottom cc_334
.cc_top cc_335,.Lxtalabel25
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	500
	.long	500
	.long	.Lxtalabel25
.cc_bottom cc_335
.cc_top cc_336,.Lxtalabel24
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	500
	.long	500
	.long	.Lxtalabel24
.cc_bottom cc_336
.cc_top cc_337,.Lxtalabel27
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	501
	.long	501
	.long	.Lxtalabel27
.cc_bottom cc_337
.cc_top cc_338,.Lxtalabel27
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	503
	.long	503
	.long	.Lxtalabel27
.cc_bottom cc_338
.cc_top cc_339,.Lxtalabel28
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	504
	.long	504
	.long	.Lxtalabel28
.cc_bottom cc_339
.cc_top cc_340,.Lxtalabel28
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	505
	.long	505
	.long	.Lxtalabel28
.cc_bottom cc_340
.cc_top cc_341,.Lxtalabel30
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	506
	.long	507
	.long	.Lxtalabel30
.cc_bottom cc_341
.cc_top cc_342,.Lxtalabel29
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	506
	.long	507
	.long	.Lxtalabel29
.cc_bottom cc_342
.cc_top cc_343,.Lxtalabel31
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	513
	.long	515
	.long	.Lxtalabel31
.cc_bottom cc_343
.cc_top cc_344,.Lxtalabel31
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	517
	.long	517
	.long	.Lxtalabel31
.cc_bottom cc_344
.cc_top cc_345,.Lxtalabel32
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	518
	.long	518
	.long	.Lxtalabel32
.cc_bottom cc_345
.cc_top cc_346,.Lxtalabel33
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	518
	.long	518
	.long	.Lxtalabel33
.cc_bottom cc_346
.cc_top cc_347,.Lxtalabel34
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	518
	.long	518
	.long	.Lxtalabel34
.cc_bottom cc_347
.cc_top cc_348,.Lxtalabel35
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	519
	.long	519
	.long	.Lxtalabel35
.cc_bottom cc_348
.cc_top cc_349,.Lxtalabel35
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	521
	.long	521
	.long	.Lxtalabel35
.cc_bottom cc_349
.cc_top cc_350,.Lxtalabel36
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	522
	.long	522
	.long	.Lxtalabel36
.cc_bottom cc_350
.cc_top cc_351,.Lxtalabel36
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	523
	.long	523
	.long	.Lxtalabel36
.cc_bottom cc_351
.cc_top cc_352,.Lxtalabel37
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	524
	.long	525
	.long	.Lxtalabel37
.cc_bottom cc_352
.cc_top cc_353,.Lxtalabel38
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	524
	.long	525
	.long	.Lxtalabel38
.cc_bottom cc_353
.cc_top cc_354,.Lxtalabel20
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	530
	.long	533
	.long	.Lxtalabel20
.cc_bottom cc_354
.cc_top cc_355,.Lxtalabel20
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	535
	.long	535
	.long	.Lxtalabel20
.cc_bottom cc_355
.cc_top cc_356,.Lxtalabel21
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	536
	.long	536
	.long	.Lxtalabel21
.cc_bottom cc_356
.cc_top cc_357,.Lxtalabel22
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	537
	.long	537
	.long	.Lxtalabel22
.cc_bottom cc_357
.cc_top cc_358,.Lxtalabel22
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	538
	.long	539
	.long	.Lxtalabel22
.cc_bottom cc_358
.cc_top cc_359,.Lxtalabel39
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	543
	.long	544
	.long	.Lxtalabel39
.cc_bottom cc_359
.cc_top cc_360,.Lxtalabel39
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	546
	.long	546
	.long	.Lxtalabel39
.cc_bottom cc_360
.cc_top cc_361,.Lxtalabel40
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	547
	.long	547
	.long	.Lxtalabel40
.cc_bottom cc_361
.cc_top cc_362,.Lxtalabel44
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	548
	.long	550
	.long	.Lxtalabel44
.cc_bottom cc_362
.cc_top cc_363,.Lxtalabel41
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	548
	.long	550
	.long	.Lxtalabel41
.cc_bottom cc_363
.cc_top cc_364,.Lxtalabel42
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	548
	.long	550
	.long	.Lxtalabel42
.cc_bottom cc_364
.cc_top cc_365,.Lxtalabel41
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	553
	.long	553
	.long	.Lxtalabel41
.cc_bottom cc_365
.cc_top cc_366,.Lxtalabel42
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	553
	.long	553
	.long	.Lxtalabel42
.cc_bottom cc_366
.cc_top cc_367,.Lxtalabel44
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	553
	.long	553
	.long	.Lxtalabel44
.cc_bottom cc_367
.cc_top cc_368,.Lxtalabel43
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	557
	.long	557
	.long	.Lxtalabel43
.cc_bottom cc_368
.cc_top cc_369,.Lxtalabel44
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	561
	.long	562
	.long	.Lxtalabel44
.cc_bottom cc_369
.cc_top cc_370,.Lxtalabel41
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	561
	.long	562
	.long	.Lxtalabel41
.cc_bottom cc_370
.cc_top cc_371,.Lxtalabel42
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	561
	.long	562
	.long	.Lxtalabel42
.cc_bottom cc_371
.cc_top cc_372,.Lxtalabel110
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	568
	.long	575
	.long	.Lxtalabel110
.cc_bottom cc_372
.Lentries_end5:
	.section	.xtalooplabeltable,"",@progbits
.Lentries_start6:
	.long	.Lentries_end7-.Lentries_start6
	.long	0
	.ascii	"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
	.byte	0
.cc_top cc_373,.Lxta.loop_labels3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	125
	.long	132
	.long	.Lxta.loop_labels3
.cc_bottom cc_373
.cc_top cc_374,.Lxta.loop_labels3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	134
	.long	148
	.long	.Lxta.loop_labels3
.cc_bottom cc_374
.cc_top cc_375,.Lxta.loop_labels3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	150
	.long	155
	.long	.Lxta.loop_labels3
.cc_bottom cc_375
.cc_top cc_376,.Lxta.loop_labels3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	157
	.long	173
	.long	.Lxta.loop_labels3
.cc_bottom cc_376
.cc_top cc_377,.Lxta.loop_labels2
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	174
	.long	174
	.long	.Lxta.loop_labels2
.cc_bottom cc_377
.cc_top cc_378,.Lxta.loop_labels2
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	177
	.long	183
	.long	.Lxta.loop_labels2
.cc_bottom cc_378
.cc_top cc_379,.Lxta.loop_labels2
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	185
	.long	185
	.long	.Lxta.loop_labels2
.cc_bottom cc_379
.cc_top cc_380,.Lxta.loop_labels2
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	187
	.long	193
	.long	.Lxta.loop_labels2
.cc_bottom cc_380
.cc_top cc_381,.Lxta.loop_labels2
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	195
	.long	197
	.long	.Lxta.loop_labels2
.cc_bottom cc_381
.cc_top cc_382,.Lxta.loop_labels3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	198
	.long	204
	.long	.Lxta.loop_labels3
.cc_bottom cc_382
.cc_top cc_383,.Lxta.loop_labels3
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	206
	.long	215
	.long	.Lxta.loop_labels3
.cc_bottom cc_383
.cc_top cc_384,.Lxta.loop_labels4
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	253
	.long	261
	.long	.Lxta.loop_labels4
.cc_bottom cc_384
.cc_top cc_385,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	266
	.long	266
	.long	.Lxta.loop_labels10
.cc_bottom cc_385
.cc_top cc_386,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	267
	.long	267
	.long	.Lxta.loop_labels10
.cc_bottom cc_386
.cc_top cc_387,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	269
	.long	269
	.long	.Lxta.loop_labels10
.cc_bottom cc_387
.cc_top cc_388,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	275
	.long	284
	.long	.Lxta.loop_labels10
.cc_bottom cc_388
.cc_top cc_389,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	286
	.long	286
	.long	.Lxta.loop_labels10
.cc_bottom cc_389
.cc_top cc_390,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	287
	.long	288
	.long	.Lxta.loop_labels6
.cc_bottom cc_390
.cc_top cc_391,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	290
	.long	291
	.long	.Lxta.loop_labels6
.cc_bottom cc_391
.cc_top cc_392,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	292
	.long	292
	.long	.Lxta.loop_labels6
.cc_bottom cc_392
.cc_top cc_393,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	294
	.long	295
	.long	.Lxta.loop_labels6
.cc_bottom cc_393
.cc_top cc_394,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	296
	.long	296
	.long	.Lxta.loop_labels6
.cc_bottom cc_394
.cc_top cc_395,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	298
	.long	299
	.long	.Lxta.loop_labels6
.cc_bottom cc_395
.cc_top cc_396,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	300
	.long	300
	.long	.Lxta.loop_labels6
.cc_bottom cc_396
.cc_top cc_397,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	302
	.long	303
	.long	.Lxta.loop_labels6
.cc_bottom cc_397
.cc_top cc_398,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	304
	.long	304
	.long	.Lxta.loop_labels6
.cc_bottom cc_398
.cc_top cc_399,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	306
	.long	306
	.long	.Lxta.loop_labels6
.cc_bottom cc_399
.cc_top cc_400,.Lxta.loop_labels5
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	307
	.long	307
	.long	.Lxta.loop_labels5
.cc_bottom cc_400
.cc_top cc_401,.Lxta.loop_labels5
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	312
	.long	319
	.long	.Lxta.loop_labels5
.cc_bottom cc_401
.cc_top cc_402,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	320
	.long	321
	.long	.Lxta.loop_labels6
.cc_bottom cc_402
.cc_top cc_403,.Lxta.loop_labels6
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	323
	.long	323
	.long	.Lxta.loop_labels6
.cc_bottom cc_403
.cc_top cc_404,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	326
	.long	326
	.long	.Lxta.loop_labels10
.cc_bottom cc_404
.cc_top cc_405,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	327
	.long	327
	.long	.Lxta.loop_labels10
.cc_bottom cc_405
.cc_top cc_406,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	328
	.long	328
	.long	.Lxta.loop_labels10
.cc_bottom cc_406
.cc_top cc_407,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	329
	.long	329
	.long	.Lxta.loop_labels10
.cc_bottom cc_407
.cc_top cc_408,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	330
	.long	330
	.long	.Lxta.loop_labels10
.cc_bottom cc_408
.cc_top cc_409,.Lxta.loop_labels7
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	331
	.long	332
	.long	.Lxta.loop_labels7
.cc_bottom cc_409
.cc_top cc_410,.Lxta.loop_labels7
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	337
	.long	346
	.long	.Lxta.loop_labels7
.cc_bottom cc_410
.cc_top cc_411,.Lxta.loop_labels7
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	348
	.long	349
	.long	.Lxta.loop_labels7
.cc_bottom cc_411
.cc_top cc_412,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	354
	.long	363
	.long	.Lxta.loop_labels10
.cc_bottom cc_412
.cc_top cc_413,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	365
	.long	368
	.long	.Lxta.loop_labels10
.cc_bottom cc_413
.cc_top cc_414,.Lxta.loop_labels8
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	369
	.long	369
	.long	.Lxta.loop_labels8
.cc_bottom cc_414
.cc_top cc_415,.Lxta.loop_labels8
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	373
	.long	380
	.long	.Lxta.loop_labels8
.cc_bottom cc_415
.cc_top cc_416,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	382
	.long	383
	.long	.Lxta.loop_labels10
.cc_bottom cc_416
.cc_top cc_417,.Lxta.loop_labels9
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	384
	.long	384
	.long	.Lxta.loop_labels9
.cc_bottom cc_417
.cc_top cc_418,.Lxta.loop_labels9
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	388
	.long	394
	.long	.Lxta.loop_labels9
.cc_bottom cc_418
.cc_top cc_419,.Lxta.loop_labels9
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	396
	.long	399
	.long	.Lxta.loop_labels9
.cc_bottom cc_419
.cc_top cc_420,.Lxta.loop_labels10
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	400
	.long	401
	.long	.Lxta.loop_labels10
.cc_bottom cc_420
.cc_top cc_421,.Lxta.loop_labels11
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	408
	.long	408
	.long	.Lxta.loop_labels11
.cc_bottom cc_421
.cc_top cc_422,.Lxta.loop_labels11
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	412
	.long	418
	.long	.Lxta.loop_labels11
.cc_bottom cc_422
.cc_top cc_423,.Lxta.loop_labels11
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	420
	.long	423
	.long	.Lxta.loop_labels11
.cc_bottom cc_423
.cc_top cc_424,.Lxta.loop_labels0
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	446
	.long	451
	.long	.Lxta.loop_labels0
.cc_bottom cc_424
.cc_top cc_425,.Lxta.loop_labels1
	.ascii	"C:/MEGA/HobbyElec/SSDAC/xSSDAC/xTIME/WORKSPACE040/module_sdcard4bit/src/SDCardHost4Bit.xc"
	.byte	0
	.long	458
	.long	463
	.long	.Lxta.loop_labels1
.cc_bottom cc_425
.Lentries_end7:
	.section	.trap_info,"",@progbits
.Ltrap_info_entries_start0:
	.long	.Ltrap_info_entries_end0-.Ltrap_info_entries_start0
	.long	1
.Ltrap_info_entries_end0:
	.section	.debug_line,"",@progbits
.Lline_table_start0:
