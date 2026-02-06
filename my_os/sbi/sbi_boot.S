#include <asm/csr.h>
.section .text.boot
.global _start

_start:
//关闭M模式的中断
li t0, MIE_SSIE|MIE_MSIE|MIE_STIE|MIE_MTIE|MIE_SEIE|MIE_MEIE
csrs mie , t0


//开栈区
la sp,stacks_start
li t0,4096
add sp,sp,t0


tail sbi_main

.data
.align 12
.global stacks_start
stacks_start:
    .skip 4096


.end