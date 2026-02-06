
	.section .payload, "ax", %progbits   //"ax" 指定了段的类型，a 表示该段是可分配的（allocatable），x 表示该段是可执行的。 %progbits 表示该段用于程序数据或指令。
	.globl payload_bin
payload_bin:
	.incbin	"benos.bin"//.incbin "benos.bin"：这条指令将 benos.bin 文件的内容插入到 
					   //.payload 段中，并且将内容作为字节数据直接嵌入到程序中。benos.bin 是一个二进制文件，它的内容会被嵌入到汇编代码中的 payload_bin 标签处。
