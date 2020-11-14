################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/porting/lv_port_disp.c \
../src/lvgl/porting/lv_port_disp_template.c \
../src/lvgl/porting/lv_port_fs_template.c \
../src/lvgl/porting/lv_port_indev.c \
../src/lvgl/porting/lv_port_indev_template.c 

OBJS += \
./src/lvgl/porting/lv_port_disp.o \
./src/lvgl/porting/lv_port_disp_template.o \
./src/lvgl/porting/lv_port_fs_template.o \
./src/lvgl/porting/lv_port_indev.o \
./src/lvgl/porting/lv_port_indev_template.o 

C_DEPS += \
./src/lvgl/porting/lv_port_disp.d \
./src/lvgl/porting/lv_port_disp_template.d \
./src/lvgl/porting/lv_port_fs_template.d \
./src/lvgl/porting/lv_port_indev.d \
./src/lvgl/porting/lv_port_indev_template.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/porting/%.o: ../src/lvgl/porting/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../osc_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


