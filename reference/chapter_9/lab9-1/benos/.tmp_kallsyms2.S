#include <asm/types.h>
#if BITS_PER_LONG == 64
#define PTR .quad
#define ALGN .align 8
#else
#define PTR .long
#define ALGN .align 4
#endif
	.section .rodata, "a"
.globl kallsyms_addresses
	ALGN
kallsyms_addresses:
	PTR	_text + 0
	PTR	_text + 0
	PTR	_text + 0
	PTR	_text + 0x4c
	PTR	_text + 0xf0
	PTR	_text + 0x218
	PTR	_text + 0x3f4
	PTR	_text + 0x488
	PTR	_text + 0x4a8
	PTR	_text + 0x6ac
	PTR	_text + 0x728
	PTR	_text + 0x764
	PTR	_text + 0x7a0
	PTR	_text + 0x7dc
	PTR	_text + 0x818
	PTR	_text + 0x854
	PTR	_text + 0x890
	PTR	_text + 0x8cc
	PTR	_text + 0x908
	PTR	_text + 0x944
	PTR	_text + 0x980
	PTR	_text + 0x9bc
	PTR	_text + 0x9f8
	PTR	_text + 0xa34
	PTR	_text + 0xaf0
	PTR	_text + 0xb68
	PTR	_text + 0xba4
	PTR	_text + 0xc10
	PTR	_text + 0xc3c
	PTR	_text + 0xd38
	PTR	_text + 0xda4
	PTR	_text + 0xe10
	PTR	_text + 0xe58
	PTR	_text + 0xea0
	PTR	_text + 0xee8
	PTR	_text + 0xf90
	PTR	_text + 0xfd4
	PTR	_text + 0x1034
	PTR	_text + 0x10fc
	PTR	_text + 0x1214
	PTR	_text + 0x123c
	PTR	_text + 0x1264
	PTR	_text + 0x1398
	PTR	_text + 0x1404
	PTR	_text + 0x14b4
	PTR	_text + 0x14ec
	PTR	_text + 0x1538
	PTR	_text + 0x1630
	PTR	_text + 0x1678
	PTR	_text + 0x16a8
	PTR	_text + 0x1704
	PTR	_text + 0x1770
	PTR	_text + 0x1920
	PTR	_text + 0x1978
	PTR	_text + 0x19ac
	PTR	_text + 0x19dc
	PTR	_text + 0x1a2c
	PTR	_text + 0x1a54
	PTR	_text + 0x1ac4
	PTR	_text + 0x1ac8
	PTR	_text + 0x1adc
	PTR	_text + 0x1b9c
	PTR	_text + 0x1b9c
	PTR	_text + 0x1c2c
	PTR	_text + 0x1c38
	PTR	_text + 0x1c40
	PTR	_text + 0x1c78
	PTR	_text + 0x1cc0
	PTR	_text + 0x1d04
	PTR	_text + 0x1d10
	PTR	_text + 0x1d34
	PTR	_text + 0x1d4c
	PTR	_text + 0x1d64
	PTR	_text + 0x1d7c
	PTR	_text + 0x1d94
	PTR	_text + 0x1db0
	PTR	_text + 0x1dc8
	PTR	_text + 0x1de0
	PTR	_text + 0x1de8
	PTR	_text + 0x1df0
	PTR	_text + 0x1df8
	PTR	_text + 0x1e20
	PTR	_text + 0x1e50
	PTR	_text + 0x1ea8
	PTR	_text + 0x1ea8
	PTR	_text + 0x1ec8
	PTR	_text + 0x1ed0
	PTR	_text + 0x1eec
	PTR	_text + 0x1f90
	PTR	_text + 0x2390
	PTR	_text + 0x2b3c
	PTR	_text + 0x2bf4
	PTR	_text + 0x2d54
	PTR	_text + 0x2da8
	PTR	_text + 0x2e20

.globl kallsyms_num_syms
	ALGN
kallsyms_num_syms:
	PTR	95

.globl kallsyms_names
	ALGN
kallsyms_names:
	.byte 0x04, 0xd3, 0xcc, 0x6b, 0x60
	.byte 0x03, 0x54, 0xcf, 0xbe
	.byte 0x01, 0x06
	.byte 0x07, 0x28, 0xa7, 0xcd, 0x6f, 0x66, 0x66, 0xd0
	.byte 0x05, 0x09, 0xe4, 0xcb, 0x85, 0x5e
	.byte 0x05, 0x0a, 0xd2, 0x6b, 0x75, 0x70
	.byte 0x04, 0x54, 0xde, 0xfb, 0x5e
	.byte 0x05, 0x54, 0xcb, 0x6e, 0x69, 0x63
	.byte 0x03, 0x47, 0x5f, 0x51
	.byte 0x06, 0x74, 0xf6, 0xf1, 0xe5, 0xc5, 0x72
	.byte 0x07, 0xf0, 0x75, 0x6e, 0x6b, 0x6e, 0xa1, 0x6e
	.byte 0x02, 0x30, 0x97
	.byte 0x03, 0x9e, 0x6e, 0xe0
	.byte 0x06, 0x30, 0x69, 0x6c, 0xda, 0x67, 0xef
	.byte 0x02, 0x3e, 0x48
	.byte 0x02, 0x3e, 0xe0
	.byte 0x02, 0x3f, 0x48
	.byte 0x02, 0x3f, 0xe0
	.byte 0x02, 0x34, 0x75
	.byte 0x02, 0x34, 0x73
	.byte 0x05, 0xf0, 0x62, 0xf2, 0x61, 0x6b
	.byte 0x04, 0xb4, 0xcb, 0xae, 0xe0
	.byte 0x09, 0x74, 0xca, 0xff, 0x6f, 0xe2, 0xfb, 0xfd, 0x66, 0x6f
	.byte 0x02, 0xb4, 0x5a
	.byte 0x05, 0x54, 0x74, 0xf8, 0xf9, 0x4f
	.byte 0x05, 0x95, 0xbc, 0x81, 0x68, 0xd1
	.byte 0x01, 0x01
	.byte 0x0d, 0x74, 0xd1, 0x63, 0x68, 0x5f, 0xec, 0x63, 0xef, 0x55, 0x7e, 0x84, 0x62, 0xda
	.byte 0x05, 0x27, 0xb9, 0x5f, 0x84, 0xf7
	.byte 0x01, 0x11
	.byte 0x01, 0x0d
	.byte 0x04, 0x8c, 0x58, 0x72, 0x72
	.byte 0x03, 0x8c, 0xfa, 0xc9
	.byte 0x02, 0x8c, 0x96
	.byte 0x05, 0xd8, 0x58, 0x70, 0x73, 0xf5
	.byte 0x05, 0x88, 0x5f, 0xdf, 0x73, 0x51
	.byte 0x06, 0x88, 0xe8, 0x5f, 0x67, 0x6f, 0x57
	.byte 0x03, 0x54, 0x4e, 0x8a
	.byte 0x04, 0x54, 0x61, 0xee, 0xf5
	.byte 0x01, 0x17
	.byte 0x02, 0x88, 0xe0
	.byte 0x02, 0x27, 0xed
	.byte 0x03, 0x0b, 0x62, 0xc1
	.byte 0x06, 0x6a, 0x8d, 0xcd, 0x6d, 0x61, 0xfd
	.byte 0x07, 0x8e, 0x74, 0xf3, 0xdb, 0x96, 0xf2, 0xc1
	.byte 0x01, 0x04
	.byte 0x08, 0x74, 0x77, 0xef, 0x6b, 0x46, 0x66, 0xf8, 0xf7
	.byte 0x01, 0x00
	.byte 0x06, 0x54, 0x64, 0xc6, 0xf9, 0xfe, 0xa8
	.byte 0x06, 0xfb, 0x87, 0x9a, 0xcc, 0x4e, 0xe8
	.byte 0x03, 0xfb, 0x93, 0x50
	.byte 0x03, 0xfb, 0xdd, 0xd0
	.byte 0x02, 0x2b, 0xd0
	.byte 0x02, 0x95, 0x49
	.byte 0x06, 0x28, 0x63, 0x79, 0x63, 0xda, 0x73
	.byte 0x03, 0x54, 0xf2, 0x49
	.byte 0x05, 0x54, 0xd3, 0xc2, 0x5f, 0x4f
	.byte 0x07, 0x54, 0x68, 0x61, 0xc9, 0xda, 0x90, 0x55
	.byte 0x04, 0x86, 0x87, 0x50, 0xe8
	.byte 0x01, 0xba
	.byte 0x07, 0xb4, 0x9c, 0xd7, 0x76, 0xca, 0x57, 0x72
	.byte 0x06, 0x53, 0xfc, 0xb7, 0xfa, 0x6c, 0x6c
	.byte 0x08, 0x74, 0xf2, 0xfb, 0x66, 0xc5, 0x6d, 0x5f, 0x5a
	.byte 0x01, 0x14
	.byte 0x06, 0x8b, 0xb3, 0x64, 0x61, 0x74, 0x61
	.byte 0x05, 0x54, 0xb8, 0xcf, 0xb7, 0xf5
	.byte 0x05, 0x9b, 0x69, 0x66, 0x74, 0xf5
	.byte 0x06, 0x4d, 0x5f, 0x73, 0x75, 0x62, 0xf5
	.byte 0x02, 0x4d, 0xf5
	.byte 0x05, 0x83, 0xf8, 0xd5, 0x68, 0xf5
	.byte 0x03, 0x8b, 0x91, 0xf5
	.byte 0x01, 0xba
	.byte 0x0d, 0x54, 0x63, 0x6f, 0x6d, 0xcb, 0xf2, 0xfa, 0x85, 0xf2, 0x74, 0x75, 0x72, 0x6e
	.byte 0x01, 0x20
	.byte 0x01, 0x22
	.byte 0x03, 0x92, 0x96, 0x72
	.byte 0x03, 0x92, 0xcf, 0xac
	.byte 0x06, 0x92, 0x5f, 0x8f, 0x5f, 0xd9, 0x73
	.byte 0x01, 0x13
	.byte 0x01, 0x0f
	.byte 0x01, 0x12
	.byte 0x01, 0x0e
	.byte 0x02, 0x23, 0x9f
	.byte 0x01, 0xba
	.byte 0x02, 0x4c, 0x9f
	.byte 0x03, 0x03, 0x5f, 0x9f
	.byte 0x01, 0x10
	.byte 0x01, 0x1d
	.byte 0x01, 0x1c
	.byte 0x04, 0x8b, 0xde, 0x74, 0x66
	.byte 0x04, 0x08, 0x5f, 0xf6, 0xe1
	.byte 0x01, 0x07
	.byte 0x05, 0x54, 0xfe, 0x72, 0xda, 0x6e
	.byte 0x02, 0x2b, 0xbb
	.byte 0x04, 0x52, 0x7e, 0x74, 0xbe

.globl kallsyms_markers
	ALGN
kallsyms_markers:
	PTR	0

.globl kallsyms_token_table
	ALGN
kallsyms_token_table:
	.asciz	"Tshow_stack"
	.asciz	"tsbi_put_string"
	.asciz	"put_string"
	.asciz	"Tput_string"
	.asciz	"tkernel_text"
	.asciz	"ernel_text"
	.asciz	"T_text"
	.asciz	"Tprintk"
	.asciz	"Tinit_printk"
	.asciz	"tkallsyms_"
	.asciz	"Tkallsyms_"
	.asciz	"tclean_"
	.asciz	"lean_"
	.asciz	"tmy_memcpy_asm_test2"
	.asciz	"Tmacro_test_2"
	.asciz	"Top_2"
	.asciz	"t.loop1"
	.asciz	"tmy_memcpy_asm_test1"
	.asciz	"Tmacro_test_1"
	.asciz	"Top_1"
	.asciz	"Ttrigger_load_access_fault"
	.asciz	"_load_access_fault"
	.asciz	"load_access_fault"
	.asciz	"ttrigger_access_fault"
	.asciz	"ttrigger"
	.asciz	"rigger"
	.asciz	"Ttrigger"
	.asciz	"trigger"
	.asciz	"tnumber"
	.asciz	"tscan_number"
	.asciz	"can_number"
	.asciz	"an_number"
	.asciz	"Tsel_test"
	.asciz	"sel_test"
	.asciz	"Tbl_test"
	.asciz	"T__init_"
	.asciz	"_init_"
	.asciz	"Tinit_"
	.asciz	"init_"
	.asciz	"tprint_"
	.asciz	"tget_"
	.asciz	"Top_"
	.asciz	"l_test"
	.asciz	"Tmem"
	.asciz	"number"
	.asciz	"igger"
	.asciz	"."
	.asciz	"_access_fault"
	.asciz	"Tdo_trap_insn_"
	.asciz	"1"
	.asciz	"2"
	.asciz	"an_"
	.asciz	"Tdo_trap_ecall_"
	.asciz	"all_"
	.asciz	"6"
	.asciz	"allsyms_"
	.asciz	"syms_"
	.asciz	"Tdo_trap_ec"
	.asciz	"printk"
	.asciz	"_access"
	.asciz	"cess"
	.asciz	"_text"
	.asciz	"Tdo_trap_load"
	.asciz	"Tdo_trap_store"
	.asciz	"store"
	.asciz	"Tmacro_test_"
	.asciz	"acro_test_"
	.asciz	"ro_test_"
	.asciz	"tge"
	.asciz	"string"
	.asciz	"_stack"
	.asciz	"Tshow"
	.asciz	"_misaligned"
	.asciz	"set_timer"
	.asciz	"tmy_memcpy_asm_test"
	.asciz	"_memcpy_asm_test"
	.asciz	"Tput_"
	.asciz	"Tadd"
	.asciz	"inline"
	.asciz	"init"
	.asciz	"bytes"
	.asciz	"regs"
	.asciz	"R"
	.asciz	"tr"
	.asciz	"T"
	.asciz	"_irq"
	.asciz	"rq"
	.asciz	"to"
	.asciz	"_o"
	.asciz	"To"
	.asciz	"exception"
	.asciz	"Tm"
	.asciz	"inl"
	.asciz	"all"
	.asciz	"symbol"
	.asciz	"_"
	.asciz	"ernel"
	.asciz	"a"
	.asciz	"b"
	.asciz	"c"
	.asciz	"d"
	.asciz	"e"
	.asciz	"f"
	.asciz	"g"
	.asciz	"h"
	.asciz	"i"
	.asciz	"Tk"
	.asciz	"k"
	.asciz	"l"
	.asciz	"m"
	.asciz	"n"
	.asciz	"o"
	.asciz	"p"
	.asciz	"q"
	.asciz	"r"
	.asciz	"s"
	.asciz	"t"
	.asciz	"u"
	.asciz	"v"
	.asciz	"w"
	.asciz	"x"
	.asciz	"y"
	.asciz	"_i"
	.asciz	"reg"
	.asciz	"igg"
	.asciz	"ine"
	.asciz	"_e"
	.asciz	"add"
	.asciz	"_ac"
	.asciz	"tc"
	.asciz	"numb"
	.asciz	"Tb"
	.asciz	"na"
	.asciz	"nd_"
	.asciz	"T_"
	.asciz	"_memset_16"
	.asciz	"ttest"
	.asciz	"put_"
	.asciz	"_asm_test"
	.asciz	"Tmy"
	.asciz	"tmy_asm"
	.asciz	"erne"
	.asciz	"tprin"
	.asciz	"num"
	.asciz	"_timer"
	.asciz	"_memcpy"
	.asciz	"Tfunc"
	.asciz	"_memset_1"
	.asciz	"set_1"
	.asciz	"tsbi_"
	.asciz	"_add"
	.asciz	"misaligned"
	.asciz	"aligned"
	.asciz	"igned"
	.asciz	"byte"
	.asciz	"Tsh"
	.asciz	"exceptio"
	.asciz	"excep"
	.asciz	"Tdo_trap_ins"
	.asciz	"uart"
	.asciz	"by"
	.asciz	"ow"
	.asciz	"art"
	.asciz	"ins"
	.asciz	"mis"
	.asciz	"cep"
	.asciz	"tio"
	.asciz	"symbo"
	.asciz	"ack"
	.asciz	"_ti"
	.asciz	"mi"
	.asciz	"sh"
	.asciz	"ring"
	.asciz	"te"
	.asciz	"ge"
	.asciz	"ned"
	.asciz	"dd"
	.asciz	"symb"
	.asciz	"tsb"
	.asciz	"_test_"
	.asciz	"Tdo_"
	.asciz	"i_"
	.asciz	"t_1"
	.asciz	"ore"
	.asciz	"load"
	.asciz	"func"
	.asciz	"t.loop"
	.asciz	"cpy"
	.asciz	"pu"
	.asciz	"fu"
	.asciz	"ext"
	.asciz	"tt"
	.asciz	"ts"
	.asciz	"ss"
	.asciz	"mer"
	.asciz	"loop"
	.asciz	"cp"
	.asciz	"ro"
	.asciz	"um"
	.asciz	"tk"
	.asciz	"ini"
	.asciz	"nd"
	.asciz	"ec"
	.asciz	"pa"
	.asciz	"s_"
	.asciz	"l_"
	.asciz	"t."
	.asciz	"_st"
	.asciz	"set"
	.asciz	"ar"
	.asciz	"loo"
	.asciz	"ti"
	.asciz	"ig"
	.asciz	"nc"
	.asciz	"ac"
	.asciz	"n_"
	.asciz	"tmy"
	.asciz	"sym"
	.asciz	"le"
	.asciz	"ce"
	.asciz	"ad"
	.asciz	"_mem"
	.asciz	"prin"
	.asciz	"sy"
	.asciz	"_fault"
	.asciz	"ne"
	.asciz	"_faul"
	.asciz	"faul"
	.asciz	"ex"
	.asciz	"er"
	.asciz	"ul"
	.asciz	"fa"
	.asciz	"_asm"
	.asciz	"my"
	.asciz	"se"
	.asciz	"rin"
	.asciz	"lo"
	.asciz	"mem"
	.asciz	"sm"
	.asciz	"al"
	.asciz	"Tdo_trap_"
	.asciz	"_trap_"
	.asciz	"re"
	.asciz	"_tra"
	.asciz	"Tdo"
	.asciz	"_test"
	.asciz	"do"
	.asciz	"me"
	.asciz	"ra"
	.asciz	"p_"
	.asciz	"_a"
	.asciz	"t_"
	.asciz	"est"
	.asciz	"in"
	.asciz	"st"
	.asciz	"_t"

.globl kallsyms_token_index
	ALGN
kallsyms_token_index:
	.short	0
	.short	12
	.short	28
	.short	39
	.short	51
	.short	64
	.short	75
	.short	82
	.short	90
	.short	103
	.short	114
	.short	125
	.short	133
	.short	139
	.short	160
	.short	174
	.short	180
	.short	188
	.short	209
	.short	223
	.short	229
	.short	256
	.short	275
	.short	293
	.short	315
	.short	324
	.short	331
	.short	340
	.short	348
	.short	356
	.short	369
	.short	380
	.short	390
	.short	400
	.short	409
	.short	418
	.short	427
	.short	434
	.short	441
	.short	447
	.short	455
	.short	461
	.short	466
	.short	473
	.short	478
	.short	485
	.short	491
	.short	493
	.short	507
	.short	522
	.short	524
	.short	526
	.short	530
	.short	546
	.short	551
	.short	553
	.short	562
	.short	568
	.short	580
	.short	587
	.short	595
	.short	600
	.short	606
	.short	620
	.short	635
	.short	641
	.short	654
	.short	665
	.short	674
	.short	678
	.short	685
	.short	692
	.short	698
	.short	710
	.short	720
	.short	740
	.short	757
	.short	763
	.short	768
	.short	775
	.short	780
	.short	786
	.short	791
	.short	793
	.short	796
	.short	798
	.short	803
	.short	806
	.short	809
	.short	812
	.short	815
	.short	825
	.short	828
	.short	832
	.short	836
	.short	843
	.short	845
	.short	851
	.short	853
	.short	855
	.short	857
	.short	859
	.short	861
	.short	863
	.short	865
	.short	867
	.short	869
	.short	872
	.short	874
	.short	876
	.short	878
	.short	880
	.short	882
	.short	884
	.short	886
	.short	888
	.short	890
	.short	892
	.short	894
	.short	896
	.short	898
	.short	900
	.short	902
	.short	905
	.short	909
	.short	913
	.short	917
	.short	920
	.short	924
	.short	928
	.short	931
	.short	936
	.short	939
	.short	942
	.short	946
	.short	949
	.short	960
	.short	966
	.short	971
	.short	981
	.short	985
	.short	993
	.short	998
	.short	1004
	.short	1008
	.short	1015
	.short	1023
	.short	1029
	.short	1039
	.short	1045
	.short	1051
	.short	1056
	.short	1067
	.short	1075
	.short	1081
	.short	1086
	.short	1090
	.short	1099
	.short	1105
	.short	1118
	.short	1123
	.short	1126
	.short	1129
	.short	1133
	.short	1137
	.short	1141
	.short	1145
	.short	1149
	.short	1155
	.short	1159
	.short	1163
	.short	1166
	.short	1169
	.short	1174
	.short	1177
	.short	1180
	.short	1184
	.short	1187
	.short	1192
	.short	1196
	.short	1203
	.short	1208
	.short	1211
	.short	1215
	.short	1219
	.short	1224
	.short	1229
	.short	1236
	.short	1240
	.short	1243
	.short	1246
	.short	1250
	.short	1253
	.short	1256
	.short	1259
	.short	1263
	.short	1268
	.short	1271
	.short	1274
	.short	1277
	.short	1280
	.short	1284
	.short	1287
	.short	1290
	.short	1293
	.short	1296
	.short	1299
	.short	1302
	.short	1306
	.short	1310
	.short	1313
	.short	1317
	.short	1320
	.short	1323
	.short	1326
	.short	1329
	.short	1332
	.short	1336
	.short	1340
	.short	1343
	.short	1346
	.short	1349
	.short	1354
	.short	1359
	.short	1362
	.short	1369
	.short	1372
	.short	1378
	.short	1383
	.short	1386
	.short	1389
	.short	1392
	.short	1395
	.short	1400
	.short	1403
	.short	1406
	.short	1410
	.short	1413
	.short	1417
	.short	1420
	.short	1423
	.short	1433
	.short	1440
	.short	1443
	.short	1448
	.short	1452
	.short	1458
	.short	1461
	.short	1464
	.short	1467
	.short	1470
	.short	1473
	.short	1476
	.short	1480
	.short	1483
	.short	1486

