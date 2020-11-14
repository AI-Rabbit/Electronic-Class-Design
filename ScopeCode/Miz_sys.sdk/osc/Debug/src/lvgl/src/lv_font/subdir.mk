################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/src/lv_font/lv_font.c \
../src/lvgl/src/lv_font/lv_font_fmt_txt.c \
../src/lvgl/src/lv_font/lv_font_roboto_12.c \
../src/lvgl/src/lv_font/lv_font_roboto_16.c \
../src/lvgl/src/lv_font/lv_font_roboto_22.c \
../src/lvgl/src/lv_font/lv_font_roboto_28.c \
../src/lvgl/src/lv_font/lv_font_unscii_8.c 

OBJS += \
./src/lvgl/src/lv_font/lv_font.o \
./src/lvgl/src/lv_font/lv_font_fmt_txt.o \
./src/lvgl/src/lv_font/lv_font_roboto_12.o \
./src/lvgl/src/lv_font/lv_font_roboto_16.o \
./src/lvgl/src/lv_font/lv_font_roboto_22.o \
./src/lvgl/src/lv_font/lv_font_roboto_28.o \
./src/lvgl/src/lv_font/lv_font_unscii_8.o 

C_DEPS += \
./src/lvgl/src/lv_font/lv_font.d \
./src/lvgl/src/lv_font/lv_font_fmt_txt.d \
./src/lvgl/src/lv_font/lv_font_roboto_12.d \
./src/lvgl/src/lv_font/lv_font_roboto_16.d \
./src/lvgl/src/lv_font/lv_font_roboto_22.d \
./src/lvgl/src/lv_font/lv_font_roboto_28.d \
./src/lvgl/src/lv_font/lv_font_unscii_8.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/src/lv_font/%.o: ../src/lvgl/src/lv_font/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../osc_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


