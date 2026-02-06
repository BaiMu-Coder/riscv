#include "uart.h"
#include "common.h"
#include "asm/uart.h"
#include "asm/csr.h"

//初始化16650,只输出
void uart_init()
{
   unsigned int divisor= UART16550_CLOCK / (16*UART_DEFAULT_BAUD);

   //关中断
   write_gpr(0,UART_IER);

   //设置波特率
   write_gpr(0x80,UART_LCR);
   write_gpr(divisor,UART_DLL);
   write_gpr(divisor>>8,UART_DLM);

   /*8 bits, no parity, one stop bit  数据控制寄存器*/ 
   write_gpr(0x3,UART_LCR);


   /* 使能FIFO，清空FIFO，设置14字节threshold*/   //你图里这个是 16550 UART 的 FCR（FIFO Control Register，FIFO 控制寄存器）。
	// 一句话：它负责把 UART 从“单字节缓冲”切换成“带 FIFO 的收发队列”，并控制 FIFO 的开关、清空、触发阈值和 DMA 模式。
	write_gpr(0xc7, UART_FCR);  // 1100 0111
}



void uart_send(const char c)
{
	while(  ( read_gpr(UART_LSR) & UART_LSR_EMPTY  ) == 0)
		;

	write_gpr(c, UART_DAT);  //把数据写进 数据寄存器

}


void uart_send_string(const char *str)
{
for(int i=0;str[i]!='\0';++i)
 uart_send(str[i]);
}

