.section ".text.boot"

.globl _start
_start:
	/* 关闭M模式的中断*/
	csrw mie, zero

	/* 设置栈, 栈的大小为4KB */
	la sp, stacks_start
	li t0, 4096
	add sp, sp, t0

	/* 跳转到C语言 */
	tail sbi_main

.section .data
.align  12
.global stacks_start
stacks_start:
	.skip 4096
# .skip 指令是一个汇编指令，用于在程序中为数据或栈分配空间。它的作用是跳过指定字节数的空间，通常用于分配未初始化的内存空间。
