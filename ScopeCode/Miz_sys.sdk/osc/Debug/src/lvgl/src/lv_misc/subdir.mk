################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/src/lv_misc/lv_anim.c \
../src/lvgl/src/lv_misc/lv_area.c \
../src/lvgl/src/lv_misc/lv_async.c \
../src/lvgl/src/lv_misc/lv_circ.c \
../src/lvgl/src/lv_misc/lv_color.c \
../src/lvgl/src/lv_misc/lv_fs.c \
../src/lvgl/src/lv_misc/lv_gc.c \
../src/lvgl/src/lv_misc/lv_ll.c \
../src/lvgl/src/lv_misc/lv_log.c \
../src/lvgl/src/lv_misc/lv_math.c \
../src/lvgl/src/lv_misc/lv_mem.c \
../src/lvgl/src/lv_misc/lv_task.c \
../src/lvgl/src/lv_misc/lv_templ.c \
../src/lvgl/src/lv_misc/lv_txt.c \
../src/lvgl/src/lv_misc/lv_utils.c 

OBJS += \
./src/lvgl/src/lv_misc/lv_anim.o \
./src/lvgl/src/lv_misc/lv_area.o \
./src/lvgl/src/lv_misc/lv_async.o \
./src/lvgl/src/lv_misc/lv_circ.o \
./src/lvgl/src/lv_misc/lv_color.o \
./src/lvgl/src/lv_misc/lv_fs.o \
./src/lvgl/src/lv_misc/lv_gc.o \
./src/lvgl/src/lv_misc/lv_ll.o \
./src/lvgl/src/lv_misc/lv_log.o \
./src/lvgl/src/lv_misc/lv_math.o \
./src/lvgl/src/lv_misc/lv_mem.o \
./src/lvgl/src/lv_misc/lv_task.o \
./src/lvgl/src/lv_misc/lv_templ.o \
./src/lvgl/src/lv_misc/lv_txt.o \
./src/lvgl/src/lv_misc/lv_utils.o 

C_DEPS += \
./src/lvgl/src/lv_misc/lv_anim.d \
./src/lvgl/src/lv_misc/lv_area.d \
./src/lvgl/src/lv_misc/lv_async.d \
./src/lvgl/src/lv_misc/lv_circ.d \
./src/lvgl/src/lv_misc/lv_color.d \
./src/lvgl/src/lv_misc/lv_fs.d \
./src/lvgl/src/lv_misc/lv_gc.d \
./src/lvgl/src/lv_misc/lv_ll.d \
./src/lvgl/src/lv_misc/lv_log.d \
./src/lvgl/src/lv_misc/lv_math.d \
./src/lvgl/src/lv_misc/lv_mem.d \
./src/lvgl/src/lv_misc/lv_task.d \
./src/lvgl/src/lv_misc/lv_templ.d \
./src/lvgl/src/lv_misc/lv_txt.d \
./src/lvgl/src/lv_misc/lv_utils.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/src/lv_misc/%.o: ../src/lvgl/src/lv_misc/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../osc_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


