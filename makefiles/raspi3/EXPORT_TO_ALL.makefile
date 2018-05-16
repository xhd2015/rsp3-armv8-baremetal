# DOCME 如何定义工程之间共享的变量

USER_RAM_START := 0x1000
# DOCME 这里，0x200000应当是最后一个不可用的字节
USER_RAM_SIZE  := 0x1ff000
USER_STACK_SIZE := 0x3000
USER_CODE_SIZE  := 0x20000
USER_INITRAM_SIZE := 0x1000
KERNEL_ADDRESS := $(shell echo "$$(($(RAM_START) + $(DTB_SIZE) + $(STACK_SIZE)))")
USER_SPACE_SIZE := $(shell echo "$$(($(USER_CODE_SIZE) + $(USER_INITRAM_SIZE)))")

# 默认情况下，编译第一部分代码
CODE_PART      ?= 1
# 代码生成包括： CODE, INITRAM,USER_SPACE
SINGLE_GEN_SIZE      :=  $(shell echo "$$((20*1024*1024))")
CODE_OFFSET          :=  $(SINGLE_GEN_SIZE)

# size参数
AHEAD_CODE_SIZE      :=  $(shell echo "$$(( (2 - $(CODE_PART))* \
	    $(SINGLE_GEN_SIZE) ))")
CODE_SIZE            :=  $(shell echo "$$((10*1024*1024))")  #10M
DATA_SIZE            :=   $(shell echo "$$(( $(RAM_SIZE) - $(DTB_SIZE) - \
		$(STACK_SIZE) - $(AHEAD_CODE_SIZE) - $(CODE_SIZE) - $(INITRAM_SIZE) -\
		$(USER_SPACE_SIZE) - $(VIDEO_RAM_SIZE)))")

# start参数
DTB_START            :=  $(shell echo "$$(( $(RAM_START) + $(IMAGE_BASE) ))")
STACK_START          :=  $(shell echo "$$(( $(DTB_START) + $(DTB_SIZE)))")
AHEAD_CODE_START     :=  $(shell echo "$$(( $(STACK_START) + $(STACK_SIZE)))")
CODE_START           :=  $(shell echo "$$(( $(AHEAD_CODE_START) + $(AHEAD_CODE_SIZE)))")
INITRAM_START        :=  $(shell echo "$$(( $(CODE_START) + $(CODE_SIZE)))")
USER_SPACE_START     :=  $(shell echo "$$(( $(INITRAM_START) + $(INITRAM_SIZE)))")
DATA_START           :=  $(shell echo "$$(($(USER_SPACE_START) + $(USER_SPACE_SIZE)))")  
VIDEO_RAM_START      :=  $(shell echo "$$(( $(RAM_SIZE) - $(VIDEO_RAM_SIZE) +\
		$(RAM_START)))")

EXPORT_ALL += USER_RAM_START USER_RAM_SIZE  USER_STACK_SIZE USER_CODE_SIZE \
	 USER_INITRAM_SIZE