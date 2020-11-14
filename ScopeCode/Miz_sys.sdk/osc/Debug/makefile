################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/lvgl/src/lv_themes/subdir.mk
-include src/lvgl/src/lv_objx/subdir.mk
-include src/lvgl/src/lv_misc/subdir.mk
-include src/lvgl/src/lv_hal/subdir.mk
-include src/lvgl/src/lv_font/subdir.mk
-include src/lvgl/src/lv_draw/subdir.mk
-include src/lvgl/src/lv_core/subdir.mk
-include src/lvgl/porting/subdir.mk
-include src/TASK_TIMER/subdir.mk
-include src/Save_Load/subdir.mk
-include src/SYS/subdir.mk
-include src/LCD/subdir.mk
-include src/IIC/subdir.mk
-include src/GUI/subdir.mk
-include src/GPIO/subdir.mk
-include src/DMA/subdir.mk
-include src/DELAY/subdir.mk
-include src/subdir.mk
-include subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
osc.elf.size \


# All Target
all: pre-build main-build

# Main-build Target
main-build: osc.elf secondary-outputs

# Tool invocations
osc.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: ARM v7 gcc linker'
	arm-none-eabi-gcc -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -Wl,-build-id=none -specs=Xilinx.spec -Wl,-T -Wl,../src/lscript.ld -L../../osc_bsp/ps7_cortexa9_0/lib -o "osc.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

osc.elf.size: osc.elf
	@echo 'Invoking: ARM v7 Print Size'
	arm-none-eabi-size osc.elf  |tee "osc.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(EXECUTABLES)$(OBJS)$(S_UPPER_DEPS)$(C_DEPS)$(ELFSIZE) osc.elf
	-@echo ' '

pre-build:
	-a9-linaro-pre-build-step
	-@echo ' '

secondary-outputs: $(ELFSIZE)

.PHONY: all clean dependents
.SECONDARY: main-build pre-build

-include ../makefile.targets
