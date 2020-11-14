################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/src/lv_draw/lv_draw.c \
../src/lvgl/src/lv_draw/lv_draw_arc.c \
../src/lvgl/src/lv_draw/lv_draw_basic.c \
../src/lvgl/src/lv_draw/lv_draw_img.c \
../src/lvgl/src/lv_draw/lv_draw_label.c \
../src/lvgl/src/lv_draw/lv_draw_line.c \
../src/lvgl/src/lv_draw/lv_draw_rect.c \
../src/lvgl/src/lv_draw/lv_draw_triangle.c \
../src/lvgl/src/lv_draw/lv_img_cache.c \
../src/lvgl/src/lv_draw/lv_img_decoder.c 

OBJS += \
./src/lvgl/src/lv_draw/lv_draw.o \
./src/lvgl/src/lv_draw/lv_draw_arc.o \
./src/lvgl/src/lv_draw/lv_draw_basic.o \
./src/lvgl/src/lv_draw/lv_draw_img.o \
./src/lvgl/src/lv_draw/lv_draw_label.o \
./src/lvgl/src/lv_draw/lv_draw_line.o \
./src/lvgl/src/lv_draw/lv_draw_rect.o \
./src/lvgl/src/lv_draw/lv_draw_triangle.o \
./src/lvgl/src/lv_draw/lv_img_cache.o \
./src/lvgl/src/lv_draw/lv_img_decoder.o 

C_DEPS += \
./src/lvgl/src/lv_draw/lv_draw.d \
./src/lvgl/src/lv_draw/lv_draw_arc.d \
./src/lvgl/src/lv_draw/lv_draw_basic.d \
./src/lvgl/src/lv_draw/lv_draw_img.d \
./src/lvgl/src/lv_draw/lv_draw_label.d \
./src/lvgl/src/lv_draw/lv_draw_line.d \
./src/lvgl/src/lv_draw/lv_draw_rect.d \
./src/lvgl/src/lv_draw/lv_draw_triangle.d \
./src/lvgl/src/lv_draw/lv_img_cache.d \
./src/lvgl/src/lv_draw/lv_img_decoder.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/src/lv_draw/%.o: ../src/lvgl/src/lv_draw/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../osc_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


