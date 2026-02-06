.section ".text.boot"    //这个设置能保证在我 当前文件编译为.o文件  中这个段里面

.globl _start
_start:
	/* Mask all interrupts */
	csrw sie, zero  //sie寄存器用来单独使能和关闭S模型下的中断   只是关掉“各个中断源的使能位”。
 
	/* set the stack of SP, size 4KB  建栈*/    //就是给tail kernel_main 之后要执行的 C 代码用的     
	//临时启动栈：支撑你跑到可以初始化内存、调度、每核栈的阶段，之后内核通常会显示换栈，进入正常运行栈
	la sp, stacks_start
	li t0, 4096
	add sp, sp, t0   //sp指向高地址，也就是栈顶  
    li a0,50
	call uart_send
	li a0,10
	call uart_send

	/* goto C */
	tail kernel_main   //尾调用，永不返回，跳转不保存返回地址      连接器会去找到找个函数入口

.section .data
.align  12    //2的12次方  4kb    栈的要求是 大小 和 sp 要16字节对齐
.global stacks_start 
stacks_start:  //这个就是栈底
	.skip 4096
