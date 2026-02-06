#pragma once


//读一个内存的值
#define read_gpr(gpr)						    \
({								                \
	register unsigned long __v;	                \
	unsigned long __g = (unsigned long)(gpr);   \
	__asm__ __volatile__ ("lb %0, (%1)"      	\
			      : "=r" (__v)                   \
				  :	"r" (__g)	               	\
			      : "memory");			        \
	__v;						             	\
})


//往一个内存写值
#define write_gpr(val,gpr)				        	\
({								                    \
	unsigned char __v = (unsigned char)(val);	    \
    unsigned long __g = (unsigned long)(gpr);     \
	__asm__ __volatile__ ("sb %0, (%1)"		\
			      :                                 \
				  : "r" (__v) , "r"(__g)             \
			      : "memory");			            \
})

