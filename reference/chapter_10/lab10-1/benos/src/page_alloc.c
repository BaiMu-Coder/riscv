#include <mm.h>
#include <printk.h>
#include "asm/memory.h"

#define NR_PAGES (TOTAL_MEMORY / PAGE_SIZE)

static unsigned short mem_map[NR_PAGES] = {0,};

static unsigned long phy_start_address;



//把给定物理内存区间按页对齐后，统计出总可用内存和空闲页数，并记录对齐后的物理起始地址。
void mem_init(unsigned long start_mem, unsigned long end_mem)
{
	unsigned long nr_free_pages = 0; //可用页数
	unsigned long free;              //可用内存的大小

	start_mem = PAGE_ALIGN(start_mem);
	phy_start_address = start_mem;
	end_mem &= PAGE_MASK;
	free = end_mem - start_mem;

	while (start_mem < end_mem) {
		nr_free_pages++;
		start_mem += PAGE_SIZE;
	}

	printk("Memory: %uKB available, %u free pages\n", free/1024, nr_free_pages);
}



unsigned long get_free_page(void)
{
	int i;

	for (i = 0; i < NR_PAGES; i++) {
		if (mem_map[i] == 0) {
			mem_map[i] = 1;
			return phy_start_address + i * PAGE_SIZE;
		}
	}
	return 0;
}

void free_page(unsigned long p)
{
	mem_map[(p - phy_start_address)/PAGE_SIZE] = 0;
}
