################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/src/lv_core/lv_disp.c \
../src/lvgl/src/lv_core/lv_group.c \
../src/lvgl/src/lv_core/lv_indev.c \
../src/lvgl/src/lv_core/lv_obj.c \
../src/lvgl/src/lv_core/lv_refr.c \
../src/lvgl/src/lv_core/lv_style.c 

OBJS += \
./src/lvgl/src/lv_core/lv_disp.o \
./src/lvgl/src/lv_core/lv_group.o \
./src/lvgl/src/lv_core/lv_indev.o \
./src/lvgl/src/lv_core/lv_obj.o \
./src/lvgl/src/lv_core/lv_refr.o \
./src/lvgl/src/lv_core/lv_style.o 

C_DEPS += \
./src/lvgl/src/lv_core/lv_disp.d \
./src/lvgl/src/lv_core/lv_group.d \
./src/lvgl/src/lv_core/lv_indev.d \
./src/lvgl/src/lv_core/lv_obj.d \
./src/lvgl/src/lv_core/lv_refr.d \
./src/lvgl/src/lv_core/lv_style.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/src/lv_core/%.o: ../src/lvgl/src/lv_core/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../osc_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


