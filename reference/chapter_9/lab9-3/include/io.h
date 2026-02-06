
#ifndef _P_IO_H
#define _P_BASE_H

#if 1
#define __arch_getl(a)			(*(volatile unsigned int *)(a))
#define __arch_putl(v,a)		(*(volatile unsigned int *)(a) = (v))

#define __arch_getb(a)			(*(volatile unsigned char *)(a))
#define __arch_putb(v,a)		(*(volatile unsigned char *)(a) = (v))

#define __arch_getq(a)			(*(volatile unsigned long *)(a))
#define __arch_putq(v,a)		(*(volatile unsigned long *)(a) = (v))


#define dmb()		__asm__ __volatile__ ("" : : : "memory")        //这段代码 不是等价于 volatile，它是一个编译器内存屏障：防止编译器重排 MMIO 相关的内存操作；但它不保证硬件层面的顺序。
// 它告诉编译器：这儿可能动了任何内存，所以编译器必须把它当成一道“栅栏”：
// 屏障前的内存操作必须在前
// 屏障后的内存操作必须在后
// 所以它更像“禁止重排”，不是“强制访问”。
// 简单粗暴一句：
// volatile 主要管“别删/别合并这次访问”；memory clobber 主要管“别跨这条线乱调顺序”。


#define __iormb()	dmb()
#define __iowmb()	dmb()

#define readl(c)	({ unsigned int  __v = __arch_getl((unsigned long)c); __iormb(); __v; })
#define writel(v,c)	({ unsigned int  __v = v; __iowmb(); __arch_putl(__v, (unsigned long)c);})

#define readb(c)	({ unsigned char  __v = __arch_getb(c); __iormb(); __v; })
#define writeb(v,c)	({ unsigned char  __v = v; __iowmb(); __arch_putb(__v,c);})

#define readq(c)	({ unsigned long  __v = __arch_getq(c); __iormb(); __v; })
#define writeq(v,c)	({ unsigned long  __v = v; __iowmb(); __arch_putq(__v,c);})
#else
static inline void writel(unsigned int value, unsigned int addr)
{
	*(volatile unsigned int *)(unsigned long)addr = value;
}

static inline unsigned int readl(unsigned int addr)
{
	return *(volatile unsigned int *)(unsigned long)addr;
}

static inline void writeb(char value, char addr)
{
	*(volatile unsigned char *)addr = value;
}

static inline unsigned char readb(char addr)
{
	return *(volatile unsigned char *)addr;
}
#endif

static inline void delay(unsigned int n)
{
	while(n--)
		;
}

#endif
