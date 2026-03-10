#include "asm/csr.h"

#define FW_JUMP_ADDR 0x80200000

/*
 * 运行在M模式
 */
void sbi_main(void)
{
	unsigned long val;

	/* 设置跳转模式为S模式 */
	val = read_csr(mstatus);
	val = INSERT_FIELD(val, MSTATUS_MPP, PRV_S);
	val = INSERT_FIELD(val, MSTATUS_MPIE, 0);
	write_csr(mstatus, val);

	/* 设置M模式的Exception Program Counter，用于mret跳转 */
	//mepc寄存器记录发生异常的指令地址
	write_csr(mepc, FW_JUMP_ADDR);
	/* 设置S模式异常向量表入口*/
	write_csr(stvec, FW_JUMP_ADDR);
	/* 关闭S模式的中断*/
	write_csr(sie, 0);
	/* 关闭S模式的页表转换 */
	write_csr(satp, 0);

	/* 切换到S模式 */
	asm volatile("mret");
	
// 执行mret之后主要会做一下三件事情
// 1、恢复程序计数器：mret 会将 mepc 寄存器中的值恢复到 PC（程序计数器）。这意味着程序将跳转到 FW_JUMP_ADDR，即返回到异常发生时的地址。
// 2、恢复中断使能状态：mret 会根据 mpie 字段的状态恢复中断使能。如果 mpie 设置为 1，则恢复之前的中断使能状态。
// 3、恢复特权级别：mret 会根据 mstatus 寄存器中的 MPP 字段恢复之前的特权模式。在这个例子中，MPP 被设置为 PRV_S，即从机器模式切换到超级模式。
}
