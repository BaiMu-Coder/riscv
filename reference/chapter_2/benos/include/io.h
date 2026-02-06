
#ifndef _P_IO_H
#define _P_BASE_H


#if 1
#define __arch_getl(a)			(*(volatile unsigned int *)(a))
#define __arch_putl(v,a)		(*(volatile unsigned int *)(a) = (v))

#define __arch_getb(a)			(*(volatile unsigned char *)(a))
#define __arch_putb(v,a)		(*(volatile unsigned char *)(a) = (v))

#define dmb()		__asm__ __volatile__ ("" : : : "memory")
#define __iormb()	dmb()
#define __iowmb()	dmb()
// 这些宏定义的目的就是确保内存操作的顺序性和一致性，避免内存操作的重排序，尤其是在多核处理器中，保证内存操作的正确顺序。
// 这在嵌入式编程和硬件相关开发中非常重要，尤其是在直接与硬件交互时（例如设备寄存器的读写），避免编译器和硬件乱序执行造成错误。

#define readl(c)	({ unsigned int  __v = __arch_getl(c); __iormb(); __v; })
#define writel(v,c)	({ unsigned int  __v = v; __iowmb(); __arch_putl(__v,c);})

#define readb(c)	({ unsigned char  __v = __arch_getb(c); __iormb(); __v; })
#define writeb(v,c)	({ unsigned char  __v = v; __iowmb(); __arch_putb(__v,c);})
#else
static inline void writel(unsigned int value, unsigned int addr)
{
	*(volatile unsigned int *)addr = value;
}

static inline unsigned int readl(unsigned int addr)
{
	return *(volatile unsigned int *)addr;
}
#endif

static inline void delay(unsigned int n)
{
	while(n--)
		;
}















#endif

