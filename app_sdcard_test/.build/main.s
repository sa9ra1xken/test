	.text
	.file	"../src/main.xc"
                                        # Start of file scope inline assembly
	.inline_definition delay_seconds
	.inline_definition delay_milliseconds
	.inline_definition delay_microseconds
	.globalresource 0x10c00,"tp0","tile[0]"
	.globalresource 0x10d00,"tp1","tile[0]"
	.globalresource 0x10e00,"tp2","tile[0]"
	.pushsection .netinfo, "", @netinfo
	.int      0x1eaba15c
	main.parinfo.debugstring0:
	.asciiz "# -1 \"\""
	main.parinfo.debugstring1:
	.asciiz "# 65 \"../src/main.xc\""
	.cc_top main.parinfo.cc, main.parinfo
	.globl main.parinfo
	.type main.parinfo, @object
	main.parinfo:
	.int 0x00000004
	.long 0
	.long main.parinfo.debugstring0
	.long main.parinfo.debugstring1
	.int 0x00000001
	.int 0x00000000
	.int $N __main__main_tile_1
	.long tile + 4
	.call __main__main_tile_1,usage.anon.3
	.int 0x00000000
	.cc_bottom main.parinfo.cc
.globl tp0.info, "o:p"
tp0.info:
	.int 0x00010c00
	.long tile + 0
.globl tp1.info, "o:p"
tp1.info:
	.int 0x00010d00
	.long tile + 0
.globl tp2.info, "o:p"
tp2.info:
	.int 0x00010e00
	.long tile + 0
	.popsection
	.set usage.anon.0,0
	.set usage.anon.1,0
	.set usage.anon.2,0
	.set usage.anon.3,0
	.call usage.anon.3,printf
	.call usage.anon.3,fflush
	.call usage.anon.3,__getstdout
	.call main,printf
	.call main,fflush
	.call main,__getstdout
	.call usage.anon.2,delay_ticks_longlong
	.call usage.anon.1,delay_ticks_longlong
	.call usage.anon.0,delay_ticks_longlong
	.set main.locnoside, 0

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
	.file	1 "../src\\main.xc"
	.text
	.globl	thread_speed
	.align	4
	.type	thread_speed,@function
	.cc_top thread_speed.function,thread_speed
thread_speed:                           # @thread_speed
.Lfunc_begin0:
	.loc	1 33 0                  # ../src/main.xc:33:0
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
.Lxtalabel0:
	{
		nop
		dualentsp 0
	}
	.loc	1 38 0 prologue_end     # ../src/main.xc:38:0
.Ltmp0:
	clrsr 128
	{
		nop
		retsp 0
	}
	# RETURN_REG_HOLDER
.Ltmp1:
	.cc_bottom thread_speed.function
	.set	thread_speed.nstackwords,0
	.globl	thread_speed.nstackwords
	.set	thread_speed.maxcores,1
	.globl	thread_speed.maxcores
	.set	thread_speed.maxtimers,0
	.globl	thread_speed.maxtimers
	.set	thread_speed.maxchanends,0
	.globl	thread_speed.maxchanends
.Ltmp2:
	.size	thread_speed, .Ltmp2-thread_speed
.Lfunc_end0:
	.cfi_endproc

	.section	.cp.rodata.cst4,"aMc",@progbits,4
	.cc_top .LCPI1_0.data,.LCPI1_0
	.align	4
	.type	.LCPI1_0,@object
	.size	.LCPI1_0, 4
.LCPI1_0:
	.long	10000000                # 0x989680
	.cc_bottom .LCPI1_0.data
	.text
	.globl	__main__main_tile_1
	.align	4
	.type	__main__main_tile_1,@function
	.cc_top __main__main_tile_1.function,__main__main_tile_1
__main__main_tile_1:                    # @__main__main_tile_1
.Lfunc_begin1:
	.loc	1 50 0                  # ../src/main.xc:50:0
	.cfi_startproc
	.issue_mode dual
# BB#0:                                 # %allocas
	{
		nop
		dualentsp 4
	}
.Ltmp3:
	.cfi_def_cfa_offset 16
.Ltmp4:
	.cfi_offset 15, 0
.Ltmp5:
	.cfi_offset 4, -8
.Ltmp6:
	#DEBUG_VALUE: time <- R4
	.loc	1 54 0 prologue_end     # ../src/main.xc:54:0
	{
		gettime r4
		stw r4, sp[2]
	}
.Ltmp7:
	.loc	1 55 0                  # ../src/main.xc:55:0
	ldaw r11, cp[.str]
	{
		mov r0, r11
		nop
	}
.Lxta.call_labels0:
	bl iprintf
	.loc	1 56 0                  # ../src/main.xc:56:0
	bl __getstdout
	.loc	1 56 0                  # ../src/main.xc:56:0
.Lxta.call_labels1:
	bl fflush
	.loc	1 59 0                  # ../src/main.xc:59:0
	{
		get r11, id
		nop
	}
	.loc	1 59 0                  # ../src/main.xc:59:0
	ldaw r0, dp[__timers]
	{
		nop
		ldw r0, r0[r11]
	}
	.loc	1 59 0                  # ../src/main.xc:59:0
	{
		setc res[r0], 9
		nop
	}
	ldw r1, cp[.LCPI1_0]
	.loc	1 57 17                 # ../src/main.xc:57:17
	{
		add r2, r4, r1
		nop
	}
.LBB1_1:                                # %LoopBody
                                        # =>This Inner Loop Header: Depth=1
.Lxtalabel1:
	.loc	1 59 0                  # ../src/main.xc:59:0
	{
		setd res[r0], r2
		nop
	}
	.loc	1 59 0                  # ../src/main.xc:59:0
.Ltmp8:
.Lxta.endpoint_labels0:
	{
		in r3, res[r0]
		add r2, r2, r1
	}
	.loc	1 57 17                 # ../src/main.xc:57:17
	bu .LBB1_1
.Ltmp9:
	.cc_bottom __main__main_tile_1.function
	.set	__main__main_tile_1.nstackwords,((iprintf.nstackwords $M __getstdout.nstackwords $M fflush.nstackwords) + 4)
	.globl	__main__main_tile_1.nstackwords
	.set	__main__main_tile_1.maxcores,__getstdout.maxcores $M fflush.maxcores $M iprintf.maxcores $M 1
	.globl	__main__main_tile_1.maxcores
	.set	__main__main_tile_1.maxtimers,__getstdout.maxtimers $M fflush.maxtimers $M iprintf.maxtimers $M 0
	.globl	__main__main_tile_1.maxtimers
	.set	__main__main_tile_1.maxchanends,__getstdout.maxchanends $M fflush.maxchanends $M iprintf.maxchanends $M 0
	.globl	__main__main_tile_1.maxchanends
.Ltmp10:
	.size	__main__main_tile_1, .Ltmp10-__main__main_tile_1
.Lfunc_end1:
	.cfi_endproc

	.section	.cp.rodata.4,"ac",@progbits
	.cc_top .str.data,.str
	.align	4
	.type	.str,@object
	.size	.str, 11
.str:
.asciiz"\nidling..."
	.cc_bottom .str.data
	.text
.Ldebug_end0:
	.file	2 "C:\\Program Files (x86)\\XMOS\\xTIMEcomposer\\Community_14.3.3\\target/include\\timer.h"
	.section	.debug_str,"MS",@progbits,1
.Linfo_string0:
.asciiz"XMOS 32-bit XC Compiler Community_14.3.3 (build 22296, Apr-19-2018)"
.Linfo_string1:
.asciiz"../src/main.xc"
.Linfo_string2:
.asciiz"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
.Linfo_string3:
.asciiz"tp0"
.Linfo_string4:
.asciiz"port"
.Linfo_string5:
.asciiz"tp1"
.Linfo_string6:
.asciiz"tp2"
.Linfo_string7:
.asciiz"delay_seconds"
.Linfo_string8:
.asciiz"delay_milliseconds"
.Linfo_string9:
.asciiz"delay_microseconds"
.Linfo_string10:
.asciiz"thread_speed"
.Linfo_string11:
.asciiz"__main__main_tile_1"
.Linfo_string12:
.asciiz"time"
.Linfo_string13:
.asciiz"unsigned int"
.Linfo_string14:
.asciiz"t"
.Linfo_string15:
.asciiz"timer"
.Linfo_string16:
.asciiz"delay"
	.section	.debug_info,"",@progbits
.L.debug_info_begin0:
	.long	234                     # Length of Unit
	.short	3                       # DWARF version number
	.long	.Lsection_abbrev        # Offset Into Abbrev. Section
	.byte	4                       # Address Size (in bytes)
	.byte	1                       # Abbrev [1] 0xb:0xe3 DW_TAG_compile_unit
	.long	.Linfo_string0          # DW_AT_producer
	.short	49152                   # DW_AT_language
	.long	.Linfo_string1          # DW_AT_name
	.long	.Lline_table_start0     # DW_AT_stmt_list
	.long	.Linfo_string2          # DW_AT_comp_dir
	.byte	1                       # DW_AT_APPLE_optimized
	.byte	2                       # Abbrev [2] 0x1f:0xc DW_TAG_variable
	.long	.Linfo_string3          # DW_AT_name
	.long	43                      # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	21                      # DW_AT_decl_line
	.byte	3                       # Abbrev [3] 0x2b:0x7 DW_TAG_base_type
	.long	.Linfo_string4          # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	2                       # Abbrev [2] 0x32:0xc DW_TAG_variable
	.long	.Linfo_string5          # DW_AT_name
	.long	43                      # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	22                      # DW_AT_decl_line
	.byte	2                       # Abbrev [2] 0x3e:0xc DW_TAG_variable
	.long	.Linfo_string6          # DW_AT_name
	.long	43                      # DW_AT_type
	.byte	1                       # DW_AT_external
	.byte	1                       # DW_AT_decl_file
	.byte	23                      # DW_AT_decl_line
	.byte	4                       # Abbrev [4] 0x4a:0x13 DW_TAG_subprogram
	.long	.Ldebug_ranges0         # DW_AT_ranges
	.byte	1                       # DW_AT_frame_base
	.byte	94
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.long	.Linfo_string10         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string10         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	33                      # DW_AT_decl_line
	.byte	1                       # DW_AT_external
	.byte	5                       # Abbrev [5] 0x5d:0x3a DW_TAG_subprogram
	.long	.Ldebug_ranges1         # DW_AT_ranges
	.byte	1                       # DW_AT_frame_base
	.byte	94
	.byte	1                       # DW_AT_APPLE_omit_frame_ptr
	.long	.Linfo_string11         # DW_AT_MIPS_linkage_name
	.long	.Linfo_string11         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	50                      # DW_AT_decl_line
	.byte	1                       # DW_AT_external
	.byte	6                       # Abbrev [6] 0x70:0x26 DW_TAG_lexical_block
	.long	.Ldebug_ranges3         # DW_AT_ranges
	.byte	7                       # Abbrev [7] 0x75:0xb DW_TAG_variable
	.long	.Linfo_string14         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	52                      # DW_AT_decl_line
	.long	230                     # DW_AT_type
	.byte	6                       # Abbrev [6] 0x80:0x15 DW_TAG_lexical_block
	.long	.Ldebug_ranges2         # DW_AT_ranges
	.byte	8                       # Abbrev [8] 0x85:0xf DW_TAG_variable
	.long	.Ldebug_loc0            # DW_AT_location
	.long	.Linfo_string12         # DW_AT_name
	.byte	1                       # DW_AT_decl_file
	.byte	53                      # DW_AT_decl_line
	.long	223                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0x97:0x18 DW_TAG_subprogram
	.long	.Linfo_string7          # DW_AT_MIPS_linkage_name
	.long	.Linfo_string7          # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.byte	1                       # DW_AT_external
	.byte	10                      # Abbrev [10] 0xa3:0xb DW_TAG_formal_parameter
	.long	.Linfo_string16         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	46                      # DW_AT_decl_line
	.long	223                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0xaf:0x18 DW_TAG_subprogram
	.long	.Linfo_string8          # DW_AT_MIPS_linkage_name
	.long	.Linfo_string8          # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.byte	1                       # DW_AT_external
	.byte	10                      # Abbrev [10] 0xbb:0xb DW_TAG_formal_parameter
	.long	.Linfo_string16         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	54                      # DW_AT_decl_line
	.long	223                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	9                       # Abbrev [9] 0xc7:0x18 DW_TAG_subprogram
	.long	.Linfo_string9          # DW_AT_MIPS_linkage_name
	.long	.Linfo_string9          # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.byte	1                       # DW_AT_external
	.byte	10                      # Abbrev [10] 0xd3:0xb DW_TAG_formal_parameter
	.long	.Linfo_string16         # DW_AT_name
	.byte	2                       # DW_AT_decl_file
	.byte	62                      # DW_AT_decl_line
	.long	223                     # DW_AT_type
	.byte	0                       # End Of Children Mark
	.byte	3                       # Abbrev [3] 0xdf:0x7 DW_TAG_base_type
	.long	.Linfo_string13         # DW_AT_name
	.byte	7                       # DW_AT_encoding
	.byte	4                       # DW_AT_byte_size
	.byte	3                       # Abbrev [3] 0xe6:0x7 DW_TAG_base_type
	.long	.Linfo_string15         # DW_AT_name
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
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	58                      # DW_AT_decl_file
	.byte	11                      # DW_FORM_data1
	.byte	59                      # DW_AT_decl_line
	.byte	11                      # DW_FORM_data1
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	3                       # Abbreviation Code
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
	.byte	4                       # Abbreviation Code
	.byte	46                      # DW_TAG_subprogram
	.byte	0                       # DW_CHILDREN_no
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
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	5                       # Abbreviation Code
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
	.byte	63                      # DW_AT_external
	.byte	12                      # DW_FORM_flag
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	6                       # Abbreviation Code
	.byte	11                      # DW_TAG_lexical_block
	.byte	1                       # DW_CHILDREN_yes
	.byte	85                      # DW_AT_ranges
	.byte	6                       # DW_FORM_data4
	.byte	0                       # EOM(1)
	.byte	0                       # EOM(2)
	.byte	7                       # Abbreviation Code
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
	.byte	8                       # Abbreviation Code
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
	.byte	9                       # Abbreviation Code
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
	.byte	10                      # Abbreviation Code
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
	.byte	0                       # EOM(3)
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
	.long	.Ltmp6
	.long	.Ltmp9
	.long	0
	.long	0
.Ldebug_ranges3:
	.long	.Ltmp6
	.long	.Ltmp9
	.long	0
	.long	0
	.section	.debug_loc,"",@progbits
.Ldebug_loc0:
	.long	.Ltmp6
	.long	.Ltmp7
.Lset0 = .Ltmp12-.Ltmp11                # Loc expr size
	.short	.Lset0
.Ltmp11:
	.byte	84                      # DW_OP_reg4
.Ltmp12:
	.long	0
	.long	0
	.section	.debug_pubnames,"",@progbits
.Lset1 = .LpubNames_end0-.LpubNames_begin0 # Length of Public Names Info
	.long	.Lset1
.LpubNames_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset2 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset2
	.long	93                      # DIE offset
.asciiz"__main__main_tile_1"            # External Name
	.long	31                      # DIE offset
.asciiz"tp0"                            # External Name
	.long	50                      # DIE offset
.asciiz"tp1"                            # External Name
	.long	62                      # DIE offset
.asciiz"tp2"                            # External Name
	.long	175                     # DIE offset
.asciiz"delay_milliseconds"             # External Name
	.long	199                     # DIE offset
.asciiz"delay_microseconds"             # External Name
	.long	74                      # DIE offset
.asciiz"thread_speed"                   # External Name
	.long	151                     # DIE offset
.asciiz"delay_seconds"                  # External Name
	.long	0                       # End Mark
.LpubNames_end0:
	.section	.debug_pubtypes,"",@progbits
.Lset3 = .LpubTypes_end0-.LpubTypes_begin0 # Length of Public Types Info
	.long	.Lset3
.LpubTypes_begin0:
	.short	2                       # DWARF Version
	.long	.L.debug_info_begin0    # Offset of Compilation Unit Info
.Lset4 = .L.debug_info_end0-.L.debug_info_begin0 # Compilation Unit Length
	.long	.Lset4
	.long	230                     # DIE offset
.asciiz"timer"                          # External Name
	.long	43                      # DIE offset
.asciiz"port"                           # External Name
	.long	223                     # DIE offset
.asciiz"unsigned int"                   # External Name
	.long	0                       # End Mark
.LpubTypes_end0:
	.cfi_sections .debug_frame

	.typestring __getstdout, "f{u:q(s(__sFILE){})}(0)"
	.typestring fflush, "f{si}(u:q(s(__sFILE){}))"
	.typestring iprintf, "f{si}(u:q(c:uc),va)"
	.typestring thread_speed, "f{0}(0)"
	.typestring __main__main_tile_1, "f{0}(0)"
	.section	.xtacalltable,"",@progbits
.Lentries_start0:
	.long	.Lentries_end1-.Lentries_start0
	.long	0
	.ascii	"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
	.byte	0
.cc_top cc_0,.Lxta.call_labels0
	.ascii	"../src/main.xc"
	.byte	0
	.long	55
	.long	.Lxta.call_labels0
.cc_bottom cc_0
.cc_top cc_1,.Lxta.call_labels1
	.ascii	"../src/main.xc"
	.byte	0
	.long	56
	.long	.Lxta.call_labels1
.cc_bottom cc_1
.Lentries_end1:
	.section	.xtaendpointtable,"",@progbits
.Lentries_start2:
	.long	.Lentries_end3-.Lentries_start2
	.long	0
	.ascii	"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
	.byte	0
.cc_top cc_2,.Lxta.endpoint_labels0
	.ascii	"../src/main.xc"
	.byte	0
	.long	59
	.long	.Lxta.endpoint_labels0
.cc_bottom cc_2
.Lentries_end3:
	.section	.xtalabeltable,"",@progbits
.Lentries_start4:
	.long	.Lentries_end5-.Lentries_start4
	.long	0
	.ascii	"C:\\MEGA\\HobbyElec\\SSDAC\\xSSDAC\\xTIME\\WORKSPACE040\\app_sdcard_test\\.build"
	.byte	0
.cc_top cc_3,.Lxtalabel0
	.ascii	"../src/main.xc"
	.byte	0
	.long	33
	.long	33
	.long	.Lxtalabel0
.cc_bottom cc_3
.cc_top cc_4,.Lxtalabel0
	.ascii	"../src/main.xc"
	.byte	0
	.long	38
	.long	38
	.long	.Lxtalabel0
.cc_bottom cc_4
.cc_top cc_5,.Lxtalabel0
	.ascii	"../src/main.xc"
	.byte	0
	.long	40
	.long	40
	.long	.Lxtalabel0
.cc_bottom cc_5
.cc_top cc_6,.Lxtalabel1
	.ascii	"../src/main.xc"
	.byte	0
	.long	58
	.long	60
	.long	.Lxtalabel1
.cc_bottom cc_6
.Lentries_end5:
	.section	.trap_info,"",@progbits
.Ltrap_info_entries_start0:
	.long	.Ltrap_info_entries_end0-.Ltrap_info_entries_start0
	.long	1
.Ltrap_info_entries_end0:
	.section	.debug_line,"",@progbits
.Lline_table_start0:
