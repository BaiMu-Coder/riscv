#include "asm/csr.h"
//#include "asm/sbi.h"
#include "uart.h"
#include "sbi_trap.h"
#include "printk.h"

#define FW_JUMP_ADDR 0x80200000

#define BANNER \
"	                                            ___   ___\n"\
"    //   ) )                    //   ) )  //   ) )    / /\n" \
"   //___/ /   ___       __     ((        //___/ /    / /\n"\
"  / __  (   //___) ) //   ) )    \\      / __  (     / /\n"\
" //    ) ) //       //   / /       ) ) //    ) )   / /\n" \
"//____/ / ((____   //   / / ((___ / / //____/ / __/ /___\n"





static inline void pmp_init(void)
{
    /* 允许 S 模式访问整个物理地址空间：R/W/X */
    write_csr(pmpaddr0, 0x3fffffffffffffull);
    write_csr(pmpcfg0, 0x0f);
}




/*
 * 运行在M模式
 */
 //M模式主函数入口
void sbi_main(void)
{
	unsigned long val;

	uart_init();

	init_printk_done(putchar);
	printk(BANNER);

	sbi_trap_init();   //设置 Mtvec寄存器，  就是设置Trap入口，  发生异常时，默认调到这个地址

	/* 设置跳转模式为S模式 */
	val = read_csr(mstatus);
	val = INSERT_FIELD(val, MSTATUS_MPP, PRV_S);  //设置trap之前的特权模式
	val = INSERT_FIELD(val, MSTATUS_MPIE, 0);     //设置trap之前的中断使能状态
	write_csr(mstatus, val);

	delegate_traps();    //把三个中断（软件中断、外部中断、时钟中断） 和  异常（系统调用、内存分页）   委托给S模式处理

	
	
	pmp_init();  //解决PMP，授权s模式访问内核所在RAN
	//PMP是硬件决定的，是CPU硬件里的最后一道物理地址权限检查器

	/* 设置M模式的Exception Program Counter，用于mret跳转 */
	write_csr(mepc, FW_JUMP_ADDR);
	/* 设置S模式异常向量表入口*/
	write_csr(stvec, FW_JUMP_ADDR);
	/* 关闭S模式的中断*/
	write_csr(sie, 0);
	/* 关闭S模式的页表转换 */
	write_csr(satp, 0);



	printk("xxxxxxxxxxxxxxxxxxxxxxxxx\n");

	/* 切换到S模式 */
	asm volatile("mret");
}
