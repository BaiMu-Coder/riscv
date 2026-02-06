GNU ?= riscv64-linux-gnu
GCC  :=$(GNU)-gcc
COPS := -save-temps=obj -g -O0 -Wall -nostdlib
COPS += -mcmodel=medany -mabi=lp64 -march=rv64imafd
COPS += -fno-PIE -fomit-frame-pointer -Wno-builtin-declaration-mismatch
COPS += -DCONFIG_BOARD_QEMU
COPS += -Iinclude
BUILD_ROOT := build
CMD_PREFIX := @



all:clean mysbi.bin


clean:
	rm -rf $(BUILD_ROOT)  *.bin  *.map *.elf 


##############   
#  build  common
##############
COMMON_BUILD_DIR:=$(BUILD_ROOT)/common
COMMON_DIR := common
$(COMMON_BUILD_DIR)/%.o:$(COMMON_DIR)/%.c 
	$(CMD_PREFIX)mkdir -p $(COMMON_BUILD_DIR); echo " CC   $@" ; $(GCC) -c $(COPS) $^ -o $@

COMMON_FILES := $(wildcard $(COMMON_DIR)/*.c) 



##############   
#  build SBI
##############
SBI_BUILD_DIR:=$(BUILD_ROOT)/sbi
SBI_SOURCE_DIR:=sbi



$(SBI_BUILD_DIR)/%.o:$(SBI_SOURCE_DIR)/%.c 
	$(CMD_PREFIX)mkdir -p $(SBI_BUILD_DIR); echo " CC   $@" ; $(GCC) -c $(COPS) $^ -o $@  
#  $<：表示第一个依赖文件   
#  $^：表示所有依赖文件   
#  $@：表示目标文件   

$(SBI_BUILD_DIR)/%.o: $(SBI_SOURCE_DIR)/%.S
	$(CMD_PREFIX)mkdir -p $(SBI_BUILD_DIR); echo " CC   $@" ; $(GCC) -c $(COPS) $< -o $@

#进行文件收集
C_FILES = $(wildcard $(SBI_SOURCE_DIR)/*.c)     #使用wildcard函数列出 SRC_DIR目录下的所有.c文件
ASM_FILES = $(wildcard $(SBI_SOURCE_DIR)/*.S)

SBI_OBJ_FILES = $(C_FILES:$(SBI_SOURCE_DIR)/%.c=$(SBI_BUILD_DIR)/%.o)   #OBJ_FILES：通过替换规则，将.c文件转换为对应的 .o 目标文件路径，并将汇编文件 .S 也转换为 .o 目标文件路径。
SBI_OBJ_FILES += $(ASM_FILES:$(SBI_SOURCE_DIR)/%.S=$(SBI_BUILD_DIR)/%.o)
SBI_OBJ_FILES += $(COMMON_FILES:$(COMMON_DIR)/%.c=$(COMMON_BUILD_DIR)/%.o)


#wildcard是Makefile的文件查找函数，它的特点是：在Makefile解析阶段（还没开始编译时）就执行，只返回当前已存在的文件。

mysbi.bin:$(SBI_SOURCE_DIR)/sbi_linker.ld $(SBI_OBJ_FILES) 
	$(CMD_PREFIX)$(GNU)-ld -T $(SBI_SOURCE_DIR)/sbi_linker.ld -o $(SBI_BUILD_DIR)/mysbi.elf  $(SBI_OBJ_FILES) -Map mysbi.map; echo " LD $(SBI_BUILD_DIR)/mysbi.elf"
	$(CMD_PREFIX)$(GNU)-objcopy $(SBI_BUILD_DIR)/mysbi.elf -O binary mysbi.bin; echo " OBJCOPY mysbi.bin"
	$(CMD_PREFIX)cp $(SBI_BUILD_DIR)/mysbi.elf mysbi.elf





QEMU_FLAGS  += -nographic -machine virt -m 128M
# -nographic：不显示图形界面，QEMU 将以命令行模式运行。
# -machine virt：指定虚拟机的类型为 virt，这通常是一个通用的虚拟平台类型。
# -m 128M：为虚拟机分配 128MB 的内存。

QEMU_BIOS = -bios mysbi.bin    #这是一个包含 QEMU 启动时所需的 BIOS 和设备加载选项的变量。
# -bios mysbi.bin：指定 QEMU 启动时使用的 BIOS 文件 mysbi.bin。  这个文件通常用于硬件初始化和引导操作系统。
# BIOS 文件是虚拟机启动时加载的固件，通常用于进行硬件初始化和引导操作系统
# -device loader,file=benos.bin,addr=0x80200000：指定一个设备加载器，将 benos.bin 作为文件加载到虚拟机中，并将其加载到地址 0x80200000。当虚拟机启动时，它会从这个地址开始执行操作系统镜像。


run:
	qemu-system-riscv64 $(QEMU_FLAGS) $(QEMU_BIOS) 
# qemu-system-riscv64：运行 RISC-V 架构的 QEMU 模拟器。
# $(QEMU_FLAGS)：将前面设置的 QEMU 配置标志传递给 QEMU。
# $(QEMU_BIOS)：传递启动时需要加载的 BIOS 文件和设备选项。
# -kernel benos.elf：指定要加载到虚拟机中的操作系统内核文件 benos.elf。	   elf文件通常是操作系统内核的构建产物，它是一个完整的、可以执行的程序，包含了所有的程序代码和数据


#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################
# 启动时，QEMU 会加载 mysbi.bin 作为 BIOS 文件，执行硬件初始化并启动虚拟机。

# 接着，benos.bin 文件被加载到内存的指定地址（0x80200000），这个文件可能是操作系统或某些固件。

# 然后，benos.elf（操作系统内核）被加载并执行，通常它会开始运行操作系统的初始化代码，初始化硬件和内核，最终进入系统的正常运行模式。
#######################################################################################################################################
#######################################################################################################################################
#######################################################################################################################################

