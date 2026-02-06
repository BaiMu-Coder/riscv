# 这个 Makefile 是为一个基于 RISC-V 的操作系统项目（benos）编写的，用于构建操作系统镜像、SBI（Supervisory Boot Infrastructure）固件和启动映像，
# 并在不同的虚拟平台（如 QEMU 和 NEMU）上运行它们。下面是对这个 Makefile 中各部分内容的详细解释：
#注释在命令后面的一定注意 空格的影响
GNU ?= riscv64-linux-gnu# ?= 条件赋值语句  意思是 如果没有定义，就默认使用riscv64-linux-gnu

COPS += -save-temps=obj -g -O0 -Wall -nostdlib -nostdinc -Iinclude -mcmodel=medany -mabi=lp64 -march=rv64imafd -fno-PIE -fomit-frame-pointer

board ?= qemu

ifeq ($(board), qemu)
COPS += -DCONFIG_BOARD_QEMU
else ifeq ($(board), nemu)
COPS += -DCONFIG_BOARD_NEMU
endif

##############
#  build benos  操作系统相关文件
##############
BUILD_DIR = build_src
SRC_DIR = src

all : clean benos.bin mysbi.bin benos_payload.bin   #设置默认的目标 

# Check if verbosity is ON for build process
CMD_PREFIX_DEFAULT := @

# V ?= 1
ifeq ($(V), 1)
	CMD_PREFIX :=
else
	CMD_PREFIX := $(CMD_PREFIX_DEFAULT)
endif

clean :
	rm -rf $(BUILD_DIR) $(SBI_BUILD_DIR) *.bin  *.map *.elf

$(BUILD_DIR)/%_c.o: $(SRC_DIR)/%.c
	$(CMD_PREFIX)mkdir -p $(BUILD_DIR); echo " CC   $@" ;  $(GNU)-gcc  $(COPS)  -c $< -o $@    
#（$@ 为目标文件，即 .o 文件）  $<表示源文件 ； $@表示目标文件

$(BUILD_DIR)/%_s.o: $(SRC_DIR)/%.S
	$(CMD_PREFIX)mkdir -p $(BUILD_DIR); echo " AS   $@"; $(GNU)-gcc $(COPS) -c $< -o $@

#进行文件收集
C_FILES = $(wildcard $(SRC_DIR)/*.c)     #使用wildcard函数列出 SRC_DIR目录下的所有.c文件
ASM_FILES = $(wildcard $(SRC_DIR)/*.S)
OBJ_FILES = $(C_FILES:$(SRC_DIR)/%.c=$(BUILD_DIR)/%_c.o)   #OBJ_FILES：通过替换规则，将.c文件转换为对应的 .o 目标文件路径，并将汇编文件 .S 也转换为 .o 目标文件路径。
OBJ_FILES += $(ASM_FILES:$(SRC_DIR)/%.S=$(BUILD_DIR)/%_s.o)

DEP_FILES = $(OBJ_FILES:%.o=%.d)  #生成.d依赖文件  .d 文件记录每个目标文件的依赖关系（例如它们依赖的头文件）
-include $(DEP_FILES)

benos.bin: $(SRC_DIR)/linker.ld $(OBJ_FILES)#  目标：依赖文件      makefile会自动先去吧依赖文件处理好了，在执行下面的命令，所以就会跑上去，编译c文件
	$(CMD_PREFIX)$(GNU)-ld -T $(SRC_DIR)/linker.ld -o $(BUILD_DIR)/benos.elf  $(OBJ_FILES) -Map benos.map; echo " LD $(BUILD_DIR)/benos.elf" 
	$(CMD_PREFIX)$(GNU)-objcopy $(BUILD_DIR)/benos.elf -O binary benos.bin; echo " OBJCOPY benos.bin"
	$(CMD_PREFIX)cp $(BUILD_DIR)/benos.elf benos.elf
#1####  $(OBJ_FILES)所有需要链接的文件    -Map benos.map生成链接映射文件benos.map，它记录了链接过程中各个部分的内存布局信息
#2####  -O binary benos.bin  将 ELF 件 benos.elf 转换为二进制文件 benos.bin。这个二进制文件将是最终的操作系统镜像，用于加载到虚拟机或实际硬件中。
#3####  cp $(BUILD_DIR)/benos.elf benos.elf：将生成的 ELF 文件 benos.elf 从构建目录 $(BUILD_DIR) 复制到当前目录。



##############
#  build SBI
##############
SBI_BUILD_DIR = build_sbi
SBI_SRC_DIR = sbi
$(SBI_BUILD_DIR)/%_c.o: $(SBI_SRC_DIR)/%.c
	$(CMD_PREFIX)mkdir -p $(SBI_BUILD_DIR); echo " CC   $@" ; $(GNU)-gcc $(COPS) -c $< -o $@

$(SBI_BUILD_DIR)/%_s.o: $(SBI_SRC_DIR)/%.S
	$(CMD_PREFIX)mkdir -p $(SBI_BUILD_DIR); echo " AS   $@"; $(GNU)-gcc $(COPS) -c $< -o $@

SBI_C_FILES = $(wildcard $(SBI_SRC_DIR)/*.c)
SBI_ASM_FILES = $(wildcard $(SBI_SRC_DIR)/*.S)
SBI_OBJ_FILES = $(SBI_C_FILES:$(SBI_SRC_DIR)/%.c=$(SBI_BUILD_DIR)/%_c.o)
SBI_OBJ_FILES += $(SBI_ASM_FILES:$(SBI_SRC_DIR)/%.S=$(SBI_BUILD_DIR)/%_s.o) 

# DEP_FILES = $(SBI_OBJ_FILES:%.o=%.d)
# -include $(DEP_FILES)

mysbi.bin: $(SBI_SRC_DIR)/sbi_linker.ld  $(SBI_OBJ_FILES) 
	$(CMD_PREFIX)$(GNU)-ld -T $(SBI_SRC_DIR)/sbi_linker.ld -o $(SBI_BUILD_DIR)/mysbi.elf  $(SBI_OBJ_FILES) -Map mysbi.map; echo " LD $(SBI_BUILD_DIR)/mysbi.elf"
	$(CMD_PREFIX)$(GNU)-objcopy $(SBI_BUILD_DIR)/mysbi.elf -O binary mysbi.bin; echo " OBJCOPY mysbi.bin"
	$(CMD_PREFIX)cp $(SBI_BUILD_DIR)/mysbi.elf mysbi.elf



######################
#  build benos payload  构建操作系统的负载部分：系统启动过程中需要加载的二进制文件  这个负载部分可能包含操作系统启动时的初始化代码、驱动程序或其他必需的操作系统组件。
######################
benos_payload.bin: $(SBI_SRC_DIR)/sbi_linker_payload.ld $(SBI_OBJ_FILES) $(OBJ_FILES)
	$(CMD_PREFIX)$(GNU)-ld -T $(SBI_SRC_DIR)/sbi_linker_payload.ld -o $(SBI_BUILD_DIR)/benos_payload.elf  $(SBI_OBJ_FILES) -Map benos_payload.map; echo " LD $(SBI_BUILD_DIR)/benos_payload.elf"
	$(CMD_PREFIX)$(GNU)-objcopy $(SBI_BUILD_DIR)/benos_payload.elf -O binary benos_payload.bin; echo " OBJCOPY benos_payload.bin"
	$(CMD_PREFIX)cp $(SBI_BUILD_DIR)/benos_payload.elf benos_payload.elf

##############
#  run qemu

# .bin 文件 是一个无头的纯二进制文件，适用于直接加载到内存中运行，通常在操作系统加载过程中作为最终的镜像文件使用。
##############

ifeq ($(board), qemu)
QEMU_FLAGS  += -nographic -machine virt -m 128M
# -nographic：不显示图形界面，QEMU 将以命令行模式运行。
# -machine virt：指定虚拟机的类型为 virt，这通常是一个通用的虚拟平台类型。
# -m 128M：为虚拟机分配 128MB 的内存。

QEMU_BIOS = -bios mysbi.bin  -device loader,file=benos.bin,addr=0x80200000  #这是一个包含 QEMU 启动时所需的 BIOS 和设备加载选项的变量。
# -bios mysbi.bin：指定 QEMU 启动时使用的 BIOS 文件 mysbi.bin。  这个文件通常用于硬件初始化和引导操作系统。
# BIOS 文件是虚拟机启动时加载的固件，通常用于进行硬件初始化和引导操作系统
# -device loader,file=benos.bin,addr=0x80200000：指定一个设备加载器，将 benos.bin 作为文件加载到虚拟机中，并将其加载到地址 0x80200000。当虚拟机启动时，它会从这个地址开始执行操作系统镜像。


run:
	qemu-system-riscv64 $(QEMU_FLAGS) $(QEMU_BIOS) -kernel benos.elf
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





debug:
	qemu-system-riscv64 $(QEMU_FLAGS) $(QEMU_BIOS) -kernel benos.elf -S -s
# -S：使 QEMU 在启动时暂停，等待调试器连接。
# -s：在默认的端口（通常是 localhost:1234）上启用 GDB 远程调试支持。

payload:
	qemu-system-riscv64 $(QEMU_FLAGS) -bios none -device loader,file=benos_payload.bin,addr=0x80000000
# payload 目标用于运行操作系统的负载部分。
# -bios none：不加载任何 BIOS，直接加载操作系统的负载文件。
# -device loader,file=benos_payload.bin,addr=0x80000000：将 benos_payload.bin 作为设备加载到虚拟机中，加载到地址 0x80000000。


else ifeq ($(board), nemu)
run:
	riscv64-nemu-interpreter -b benos_payload.bin
debug:
	riscv64-nemu-interpreter benos_payload.bin
endif




  
# 2. 为什么使用 .bin 文件
  
# 尽管直接加载 ELF 文件是可行的，但使用 .bin 文件有其特殊的用途和优点：

# .bin 文件 是 二进制格式的镜像文件，没有任何额外的元数据，如符号表、调试信息等。这使得 .bin 文件更小，加载速度可能更快。

# .bin 文件通常用于操作系统的实际部署，因为它的格式更简单，适合直接加载到内存中。它通常是在嵌入式系统或虚拟化环境中使用的格式。

# 在实际的硬件环境中，操作系统通常会被编译成 .bin 文件，因为硬件通常不需要调试信息或符号信息，它只需要直接执行二进制代码。

# 3. .elf 与 .bin 的选择

# 开发与调试阶段：如果您在开发和调试操作系统，直接使用 .elf 文件可能更方便，因为它包含了更多的元数据（例如符号表），可以帮助调试工具（如 GDB）进行调试。

# 生产与部署阶段：如果您准备将操作系统部署到实际硬件或虚拟化环境中，使用 .bin 文件更为常见，因为它格式简单，启动速度更快，且不包含不必要的调试信息。

# 4. 总结：

# 直接加载 ELF 文件 是完全可行的，并且对于开发、调试等场景是更常见的做法。您可以将 -kernel benos.elf 用于直接启动操作系统内核。

# 使用 .bin 文件 主要是为了简化启动过程，它适用于生产环境和嵌入式系统，可以减少镜像文件的大小，避免包含调试信息。

# 所以，如果只是调试和测试，您完全可以跳过 .bin 文件，直接使用 .elf 文件，像这样：






