#include "uart.h"
#define FW_JUMP_ADDR 0x80200000

//当前跳转过来，还是运行在M模式下的
int sbi_main()
{

uart_send_string("hello baimu !!!!\n");

while(1);


    return 0;
}