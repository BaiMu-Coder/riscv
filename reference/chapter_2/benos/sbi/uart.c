#include "asm/uart.h"
#include "io.h"

void uart_send(char c)
{
	while((readb(UART_LSR) & UART_LSR_EMPTY) == 0)
		;

	writeb(c, UART_DAT);  //把数据写进 数据寄存器
}

void uart_send_string(char *str)
{
	int i;

	for (i = 0; str[i] != '\0'; i++)
		uart_send((char) str[i]);
}



static unsigned int uart16550_clock = 1843200;   // a common base clock
#define UART_DEFAULT_BAUD  115200


//初始化16550   只输出
void uart_init(void)
{
	unsigned int divisor = uart16550_clock / (16 * UART_DEFAULT_BAUD);   //Divisior=输入时钟频率/(16×所需波特率)

	/* disable interrupt */ 
	writeb(0, UART_IER);

	/* Enable DLAB (set baud rate divisor)   波特率设置*/
	writeb(0x80, UART_LCR);
	writeb((unsigned char)divisor, UART_DLL);
	writeb((unsigned char)(divisor >> 8), UART_DLM);

	/*8 bits, no parity, one stop bit  数据控制寄存器*/ 
	writeb(0x3, UART_LCR);

	/* 使能FIFO，清空FIFO，设置14字节threshold*/   //你图里这个是 16550 UART 的 FCR（FIFO Control Register，FIFO 控制寄存器）。
	// 一句话：它负责把 UART 从“单字节缓冲”切换成“带 FIFO 的收发队列”，并控制 FIFO 的开关、清空、触发阈值和 DMA 模式。
	writeb(0xc7, UART_FCR);  // 1100 0111
}
