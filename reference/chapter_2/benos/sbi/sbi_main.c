#include "asm/csr.h"
#include "uart.h"

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
	write_csr(mepc, FW_JUMP_ADDR);
	/* 设置S模式异常向量表入口*/
	write_csr(stvec, FW_JUMP_ADDR);
	/* 关闭S模式的中断*/
	write_csr(sie, 0);
	/* 关闭S模式的页表转换 */
	write_csr(satp, 0);
	uart_send_string("1\r\n");
	/* 切换到S模式 */
	asm volatile("mret");   //mret 是 机器（m）模式下的异常返回指令，它将会根据 mepc 中存储的地址返回到异常发生前的程序位置。
}
