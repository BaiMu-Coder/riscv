#pragma once 

#define MIE_SSIE 0x0002  //使能S模式下的软件中断
#define MIE_MSIE 0x0008  //使能M模式下的软件中断
#define MIE_STIE 0x0020  //使能S模式下的时钟中断
#define MIE_MTIE 0x0080  //使能M模式下的时钟中断
#define MIE_SEIE 0x0200  //使能S模式下的外部中断
#define MIE_MEIE 0x0800  //使能M模式下的外部中断

 


#define INSERT_FIELD(val, which, fieldval) ( ((val) & ~(which))  |  ((fieldval) * (  (which) & ~( (which)-1 )  ) ) )
//((val) & ~(which)) 清零which对应位
// (which) & ~( (which)-1 ) 提取which最右边1在什么位置，即只保留最右边的第一个1 其他位置零
// ((fieldval) * (  (which) & ~( (which)-1 )  ) )    所以这意思就是 把 fieldval 左移几位， 其实就是把fieldval 移动到 which最右边1的那个位置上


#define PRV_U				(0UL)
#define PRV_S				(1UL)
#define PRV_M				(3UL)

#define MSTATUS_MPP_SHIFT	11                       //
#define MSTATUS_MPP	(PRV_M << MSTATUS_MPP_SHIFT)      //mstatus寄存器的11 12位：M模式下中断之前的特权模式
//UL表示无符号长整型
#define MSTATUS_MPIE	0x00000080UL    //MPIE临时保存中断的使能状态


/*
 * 在带参数的宏，#号作为一个预处理运算符,
 * 可以把记号转换成字符串
 *
 * 下面这句话会在预编译阶段变成：
 *  asm volatile("csrr %0, " "reg" : "=r" (__val)); __val; });
 * 
//  C 语言规则：相邻的字符串字面量会在编译时自动连接。   然后就拼成了一个命令
 * 
 */

////////////////////////////////// GNU C 的“语句表达式 + 内联汇编”宏写法/////////////////////////////////////////////
// 这里的 ({ ... }) 叫 statement expression（语句表达式），是 GCC 的扩展：
// 花括号里写一堆语句
// 最后一行 __v; 的值，就是整个 ({ ... }) 这个表达式的值
// r表示使用一个通用寄存器

#define read_csr(csr)						    \
({								                \
	register unsigned long __v;				    \
	__asm__ __volatile__ ("csrr %0, " #csr		\
			      : "=r" (__v)                  \
				  :		                       	\
			      : "memory");			        \
	__v;						             	\
})
 
#define write_csr(csr, val)				        	\
({								                    \
	unsigned long __v = (unsigned long)(val);		\
	__asm__ __volatile__ ("csrw " #csr ", %0"		\
			      :                                 \
				  : "rK" (__v)			            \
			      : "memory");			            \
})







