################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/src/lv_hal/lv_hal_disp.c \
../src/lvgl/src/lv_hal/lv_hal_indev.c \
../src/lvgl/src/lv_hal/lv_hal_tick.c 

OBJS += \
./src/lvgl/src/lv_hal/lv_hal_disp.o \
./src/lvgl/src/lv_hal/lv_hal_indev.o \
./src/lvgl/src/lv_hal/lv_hal_tick.o 

C_DEPS += \
./src/lvgl/src/lv_hal/lv_hal_disp.d \
./src/lvgl/src/lv_hal/lv_hal_indev.d \
./src/lvgl/src/lv_hal/lv_hal_tick.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/src/lv_hal/%.o: ../src/lvgl/src/lv_hal/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../osc_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


