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
	PTR	_text + 0xe4
	PTR	_text + 0x200
	PTR	_text + 0x3bc
	PTR	_text + 0x450
	PTR	_text + 0x470
	PTR	_text + 0x674
	PTR	_text + 0x6f0
	PTR	_text + 0x72c
	PTR	_text + 0x768
	PTR	_text + 0x7a4
	PTR	_text + 0x7e0
	PTR	_text + 0x81c
	PTR	_text + 0x858
	PTR	_text + 0x894
	PTR	_text + 0x8d0
	PTR	_text + 0x90c
	PTR	_text + 0x948
	PTR	_text + 0x984
	PTR	_text + 0x9c0
	PTR	_text + 0x9fc
	PTR	_text + 0xa74
	PTR	_text + 0xaec
	PTR	_text + 0xb24
	PTR	_text + 0xb70
	PTR	_text + 0xc68
	PTR	_text + 0xcb0
	PTR	_text + 0xce0
	PTR	_text + 0xd3c
	PTR	_text + 0xda8
	PTR	_text + 0xf58
	PTR	_text + 0xfb0
	PTR	_text + 0xfec
	PTR	_text + 0x1058
	PTR	_text + 0x1154
	PTR	_text + 0x11c0
	PTR	_text + 0x122c
	PTR	_text + 0x1274
	PTR	_text + 0x12bc
	PTR	_text + 0x1304
	PTR	_text + 0x13ac
	PTR	_text + 0x13f0
	PTR	_text + 0x1450
	PTR	_text + 0x1518
	PTR	_text + 0x1630
	PTR	_text + 0x1658
	PTR	_text + 0x1680
	PTR	_text + 0x17b4
	PTR	_text + 0x1820
	PTR	_text + 0x1894
	PTR	_text + 0x1898
	PTR	_text + 0x18ac
	PTR	_text + 0x196c
	PTR	_text + 0x196c
	PTR	_text + 0x19fc
	PTR	_text + 0x1a08
	PTR	_text + 0x1a10
	PTR	_text + 0x1a48
	PTR	_text + 0x1a90
	PTR	_text + 0x1ad4
	PTR	_text + 0x1ae0
	PTR	_text + 0x1b04
	PTR	_text + 0x1b1c
	PTR	_text + 0x1b34
	PTR	_text + 0x1b4c
	PTR	_text + 0x1b64
	PTR	_text + 0x1b80
	PTR	_text + 0x1b98
	PTR	_text + 0x1bb0
	PTR	_text + 0x1bb8
	PTR	_text + 0x1bc0
	PTR	_text + 0x1bc8
	PTR	_text + 0x1bf0
	PTR	_text + 0x1c20
	PTR	_text + 0x1c78
	PTR	_text + 0x1c78
	PTR	_text + 0x1c98
	PTR	_text + 0x1ca0
	PTR	_text + 0x1cbc
	PTR	_text + 0x1d60
	PTR	_text + 0x2160
	PTR	_text + 0x290c
	PTR	_text + 0x29c4
	PTR	_text + 0x2b24
	PTR	_text + 0x2b78
	PTR	_text + 0x2bf0

.globl kallsyms_num_syms
	ALGN
kallsyms_num_syms:
	PTR	89

.globl kallsyms_names
	ALGN
kallsyms_names:
	.byte 0x04, 0xcd, 0xd0, 0x6b, 0x82
	.byte 0x03, 0x54, 0xd3, 0xc4
	.byte 0x01, 0x13
	.byte 0x08, 0x74, 0x87, 0xfb, 0xad, 0xd1, 0x6f, 0x66, 0x00
	.byte 0x05, 0x16, 0xe5, 0x7c, 0xba, 0x81
	.byte 0x05, 0x17, 0xd4, 0x6b, 0x75, 0x70
	.byte 0x04, 0x54, 0xde, 0xfb, 0x81
	.byte 0x04, 0x54, 0x7c, 0x69, 0x63
	.byte 0x03, 0x55, 0x5f, 0x5e
	.byte 0x06, 0x74, 0xf7, 0xf2, 0xe6, 0xca, 0x72
	.byte 0x07, 0xf0, 0x75, 0x6e, 0x6b, 0x6e, 0xa6, 0x6e
	.byte 0x02, 0x40, 0x9c
	.byte 0x03, 0xa3, 0x6e, 0xe0
	.byte 0x06, 0x40, 0x69, 0x6c, 0xb4, 0x67, 0xec
	.byte 0x01, 0x08
	.byte 0x02, 0x4b, 0xe0
	.byte 0x01, 0x07
	.byte 0x02, 0x4c, 0xe0
	.byte 0x02, 0x42, 0x75
	.byte 0x02, 0x42, 0x73
	.byte 0x05, 0xf0, 0x62, 0xf1, 0x61, 0x6b
	.byte 0x04, 0xb9, 0xcf, 0x87, 0xe0
	.byte 0x09, 0x74, 0xce, 0xff, 0x6f, 0xe3, 0xfb, 0xfd, 0x66, 0x6f
	.byte 0x02, 0xb9, 0x7d
	.byte 0x06, 0x54, 0x74, 0xf8, 0xf9, 0xaf, 0x74
	.byte 0x07, 0x96, 0x74, 0xf4, 0xdb, 0x9b, 0xf1, 0xc6
	.byte 0x01, 0x11
	.byte 0x04, 0x09, 0x66, 0xf8, 0xf3
	.byte 0x01, 0x0d
	.byte 0x06, 0x54, 0x64, 0xcb, 0xf9, 0xfe, 0xae
	.byte 0x02, 0x02, 0xe9
	.byte 0x03, 0xfb, 0x9a, 0x5d
	.byte 0x03, 0xfb, 0xbd, 0x74
	.byte 0x01, 0x01
	.byte 0x05, 0x5a, 0xc2, 0x89, 0x68, 0xc7
	.byte 0x01, 0x0e
	.byte 0x06, 0x38, 0xbf, 0x5f, 0x6e, 0x61, 0xf3
	.byte 0x01, 0x33
	.byte 0x01, 0x2c
	.byte 0x04, 0x94, 0x71, 0x72, 0x72
	.byte 0x03, 0x94, 0x7b, 0x64
	.byte 0x02, 0x94, 0x9b
	.byte 0x05, 0xd9, 0x71, 0x70, 0x73, 0xf6
	.byte 0x05, 0x90, 0x5f, 0xdf, 0x73, 0x5e
	.byte 0x06, 0x90, 0xe9, 0x5f, 0x67, 0x6f, 0x6a
	.byte 0x02, 0x06, 0x92
	.byte 0x04, 0x54, 0x61, 0xef, 0xf6
	.byte 0x01, 0x1d
	.byte 0x02, 0x90, 0xe0
	.byte 0x02, 0x38, 0xee
	.byte 0x03, 0x18, 0x62, 0xc6
	.byte 0x06, 0x83, 0x95, 0xd1, 0x6d, 0x61, 0xfd
	.byte 0x04, 0x8e, 0x8f, 0x5d, 0xe9
	.byte 0x01, 0xc0
	.byte 0x07, 0xb9, 0xa1, 0xd8, 0x76, 0xce, 0x6a, 0x72
	.byte 0x06, 0x60, 0xfc, 0xbc, 0xfa, 0x6c, 0x6c
	.byte 0x08, 0x74, 0xf1, 0xfb, 0x66, 0xca, 0x6d, 0x5f, 0x7d
	.byte 0x01, 0x1a
	.byte 0x06, 0x93, 0xb8, 0x64, 0x61, 0x74, 0x61
	.byte 0x05, 0x54, 0xbe, 0xd3, 0xbc, 0xf6
	.byte 0x05, 0xa0, 0x69, 0x66, 0x74, 0xf6
	.byte 0x06, 0x3f, 0xba, 0x73, 0x75, 0x62, 0xf6
	.byte 0x03, 0x3f, 0x64, 0xf6
	.byte 0x05, 0x8c, 0xf8, 0xd6, 0x68, 0xf6
	.byte 0x03, 0x93, 0x98, 0xf6
	.byte 0x01, 0xc0
	.byte 0x0d, 0x54, 0x63, 0x6f, 0x6d, 0xcf, 0xf1, 0x7b, 0xba, 0xf1, 0x74, 0x75, 0x72, 0x6e
	.byte 0x01, 0x26
	.byte 0x01, 0x28
	.byte 0x03, 0x99, 0x9b, 0x72
	.byte 0x03, 0x99, 0xd3, 0xb2
	.byte 0x06, 0x99, 0x5f, 0x97, 0x5f, 0xda, 0x73
	.byte 0x01, 0x35
	.byte 0x01, 0x2f
	.byte 0x01, 0x34
	.byte 0x01, 0x2d
	.byte 0x02, 0x29, 0xa4
	.byte 0x01, 0xc0
	.byte 0x02, 0x59, 0xa4
	.byte 0x03, 0x10, 0x5f, 0xa4
	.byte 0x01, 0x30
	.byte 0x01, 0x23
	.byte 0x01, 0x22
	.byte 0x04, 0x93, 0xde, 0x74, 0x66
	.byte 0x04, 0x15, 0x5f, 0xf7, 0xe2
	.byte 0x01, 0x14
	.byte 0x05, 0x54, 0xfe, 0x72, 0xb4, 0x6e
	.byte 0x02, 0x3b, 0xc1
	.byte 0x05, 0x52, 0x5f, 0x65, 0x74, 0xc4

.globl kallsyms_markers
	ALGN
kallsyms_markers:
	PTR	0

.globl kallsyms_token_table
	ALGN
kallsyms_token_table:
	.asciz	"fset"
	.asciz	"Tmemset"
	.asciz	"t__memset_16bytes_inline"
	.asciz	"_memset_16bytes_inline"
	.asciz	"bytes_inline"
	.asciz	"s_inline"
	.asciz	"Tinline"
	.asciz	"Tdo_trap_store_misaligned"
	.asciz	"Tdo_trap_load_misaligned"
	.asciz	"twalk_stack"
	.asciz	"walk_stack"
	.asciz	"alk_stack"
	.asciz	"k_stack"
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
	.asciz	"tmy_memcpy_asm_test2"
	.asciz	"Tmacro_test_2"
	.asciz	"."
	.asciz	"Top_2"
	.asciz	"t.loop1"
	.asciz	"1"
	.asciz	"2"
	.asciz	"tmy_memcpy_asm_test1"
	.asciz	"Tmacro_test_1"
	.asciz	"Top_1"
	.asciz	"6"
	.asciz	"init_"
	.asciz	"tprint_"
	.asciz	"Top_"
	.asciz	"l_test"
	.asciz	"Tmem"
	.asciz	"number"
	.asciz	"igger"
	.asciz	"_access_fault"
	.asciz	"Tad"
	.asciz	"Tdo_trap_insn_"
	.asciz	"an_"
	.asciz	"Tdo_trap_ecall_"
	.asciz	"all_"
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
	.asciz	"string"
	.asciz	"R"
	.asciz	"_stack"
	.asciz	"T"
	.asciz	"Tshow"
	.asciz	"_misaligned"
	.asciz	"tmy_memcpy_asm_test"
	.asciz	"_memcpy_asm_test"
	.asciz	"Tput_"
	.asciz	"tsbi_"
	.asciz	"inline"
	.asciz	"set"
	.asciz	"bytes"
	.asciz	"regs"
	.asciz	"_"
	.asciz	"tr"
	.asciz	"a"
	.asciz	"b"
	.asciz	"c"
	.asciz	"d"
	.asciz	"e"
	.asciz	"f"
	.asciz	"g"
	.asciz	"h"
	.asciz	"i"
	.asciz	"to"
	.asciz	"k"
	.asciz	"l"
	.asciz	"m"
	.asciz	"n"
	.asciz	"o"
	.asciz	"p"
	.asciz	"_o"
	.asciz	"r"
	.asciz	"s"
	.asciz	"t"
	.asciz	"u"
	.asciz	"v"
	.asciz	"w"
	.asciz	"x"
	.asciz	"y"
	.asciz	"To"
	.asciz	"_an"
	.asciz	"pan"
	.asciz	"exception"
	.asciz	"Tm"
	.asciz	"inl"
	.asciz	"all"
	.asciz	"symbol"
	.asciz	"ernel"
	.asciz	"Tk"
	.asciz	"reg"
	.asciz	"igg"
	.asciz	"ine"
	.asciz	"ge"
	.asciz	"_ac"
	.asciz	"tc"
	.asciz	"tsb"
	.asciz	"numb"
	.asciz	"Tb"
	.asciz	"i_"
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
	.asciz	"_memcpy"
	.asciz	"Tfunc"
	.asciz	"_memset_1"
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
	.asciz	"ts"
	.asciz	"cep"
	.asciz	"tio"
	.asciz	"symbo"
	.asciz	"ack"
	.asciz	"ini"
	.asciz	"mi"
	.asciz	"sh"
	.asciz	"ring"
	.asciz	"te"
	.asciz	"le"
	.asciz	"ned"
	.asciz	"dd"
	.asciz	"symb"
	.asciz	"_test_"
	.asciz	"Tdo_"
	.asciz	"d_"
	.asciz	"t_1"
	.asciz	"ore"
	.asciz	"_memse"
	.asciz	"load"
	.asciz	"func"
	.asciz	"t.loop"
	.asciz	"cpy"
	.asciz	"pu"
	.asciz	"fu"
	.asciz	"ext"
	.asciz	"tt"
	.asciz	"ss"
	.asciz	"ar"
	.asciz	"loop"
	.asciz	"cp"
	.asciz	"ro"
	.asciz	"um"
	.asciz	"tk"
	.asciz	"ti"
	.asciz	"ec"
	.asciz	"pa"
	.asciz	"s_"
	.asciz	"l_"
	.asciz	"t."
	.asciz	"_st"
	.asciz	"loo"
	.asciz	"ig"
	.asciz	"nc"
	.asciz	"ac"
	.asciz	"n_"
	.asciz	"tmy"
	.asciz	"sym"
	.asciz	"ce"
	.asciz	"ad"
	.asciz	"_mem"
	.asciz	"prin"
	.asciz	"sy"
	.asciz	"_fault"
	.asciz	"se"
	.asciz	"ne"
	.asciz	"_faul"
	.asciz	"faul"
	.asciz	"ex"
	.asciz	"er"
	.asciz	"ul"
	.asciz	"fa"
	.asciz	"_asm"
	.asciz	"my"
	.asciz	"lo"
	.asciz	"al"
	.asciz	"rin"
	.asciz	"mem"
	.asciz	"sm"
	.asciz	"Tdo_trap_"
	.asciz	"re"
	.asciz	"_trap_"
	.asciz	"me"
	.asciz	"_tra"
	.asciz	"Tdo"
	.asciz	"_test"
	.asciz	"do"
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
	.short	5
	.short	13
	.short	38
	.short	61
	.short	74
	.short	83
	.short	91
	.short	117
	.short	142
	.short	154
	.short	165
	.short	175
	.short	183
	.short	195
	.short	211
	.short	222
	.short	234
	.short	247
	.short	258
	.short	265
	.short	273
	.short	286
	.short	297
	.short	308
	.short	316
	.short	322
	.short	349
	.short	368
	.short	386
	.short	408
	.short	417
	.short	424
	.short	433
	.short	441
	.short	449
	.short	462
	.short	473
	.short	483
	.short	493
	.short	502
	.short	511
	.short	520
	.short	527
	.short	534
	.short	555
	.short	569
	.short	571
	.short	577
	.short	585
	.short	587
	.short	589
	.short	610
	.short	624
	.short	630
	.short	632
	.short	638
	.short	646
	.short	651
	.short	658
	.short	663
	.short	670
	.short	676
	.short	690
	.short	694
	.short	709
	.short	713
	.short	729
	.short	734
	.short	743
	.short	749
	.short	761
	.short	768
	.short	776
	.short	781
	.short	787
	.short	801
	.short	816
	.short	822
	.short	835
	.short	846
	.short	855
	.short	862
	.short	864
	.short	871
	.short	873
	.short	879
	.short	891
	.short	911
	.short	928
	.short	934
	.short	940
	.short	947
	.short	951
	.short	957
	.short	962
	.short	964
	.short	967
	.short	969
	.short	971
	.short	973
	.short	975
	.short	977
	.short	979
	.short	981
	.short	983
	.short	985
	.short	988
	.short	990
	.short	992
	.short	994
	.short	996
	.short	998
	.short	1000
	.short	1003
	.short	1005
	.short	1007
	.short	1009
	.short	1011
	.short	1013
	.short	1015
	.short	1017
	.short	1019
	.short	1022
	.short	1026
	.short	1030
	.short	1040
	.short	1043
	.short	1047
	.short	1051
	.short	1058
	.short	1064
	.short	1067
	.short	1071
	.short	1075
	.short	1079
	.short	1082
	.short	1086
	.short	1089
	.short	1093
	.short	1098
	.short	1101
	.short	1104
	.short	1107
	.short	1118
	.short	1124
	.short	1129
	.short	1139
	.short	1143
	.short	1151
	.short	1156
	.short	1162
	.short	1166
	.short	1174
	.short	1180
	.short	1190
	.short	1195
	.short	1206
	.short	1214
	.short	1220
	.short	1225
	.short	1229
	.short	1238
	.short	1244
	.short	1257
	.short	1262
	.short	1265
	.short	1268
	.short	1272
	.short	1276
	.short	1280
	.short	1283
	.short	1287
	.short	1291
	.short	1297
	.short	1301
	.short	1305
	.short	1308
	.short	1311
	.short	1316
	.short	1319
	.short	1322
	.short	1326
	.short	1329
	.short	1334
	.short	1341
	.short	1346
	.short	1349
	.short	1353
	.short	1357
	.short	1364
	.short	1369
	.short	1374
	.short	1381
	.short	1385
	.short	1388
	.short	1391
	.short	1395
	.short	1398
	.short	1401
	.short	1404
	.short	1409
	.short	1412
	.short	1415
	.short	1418
	.short	1421
	.short	1424
	.short	1427
	.short	1430
	.short	1433
	.short	1436
	.short	1439
	.short	1443
	.short	1447
	.short	1450
	.short	1453
	.short	1456
	.short	1459
	.short	1463
	.short	1467
	.short	1470
	.short	1473
	.short	1478
	.short	1483
	.short	1486
	.short	1493
	.short	1496
	.short	1499
	.short	1505
	.short	1510
	.short	1513
	.short	1516
	.short	1519
	.short	1522
	.short	1527
	.short	1530
	.short	1533
	.short	1536
	.short	1540
	.short	1544
	.short	1547
	.short	1557
	.short	1560
	.short	1567
	.short	1570
	.short	1575
	.short	1579
	.short	1585
	.short	1588
	.short	1591
	.short	1594
	.short	1597
	.short	1600
	.short	1604
	.short	1607
	.short	1610

