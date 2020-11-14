################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/lvgl/src/lv_themes/lv_theme.c \
../src/lvgl/src/lv_themes/lv_theme_alien.c \
../src/lvgl/src/lv_themes/lv_theme_default.c \
../src/lvgl/src/lv_themes/lv_theme_material.c \
../src/lvgl/src/lv_themes/lv_theme_mono.c \
../src/lvgl/src/lv_themes/lv_theme_nemo.c \
../src/lvgl/src/lv_themes/lv_theme_night.c \
../src/lvgl/src/lv_themes/lv_theme_templ.c \
../src/lvgl/src/lv_themes/lv_theme_zen.c 

OBJS += \
./src/lvgl/src/lv_themes/lv_theme.o \
./src/lvgl/src/lv_themes/lv_theme_alien.o \
./src/lvgl/src/lv_themes/lv_theme_default.o \
./src/lvgl/src/lv_themes/lv_theme_material.o \
./src/lvgl/src/lv_themes/lv_theme_mono.o \
./src/lvgl/src/lv_themes/lv_theme_nemo.o \
./src/lvgl/src/lv_themes/lv_theme_night.o \
./src/lvgl/src/lv_themes/lv_theme_templ.o \
./src/lvgl/src/lv_themes/lv_theme_zen.o 

C_DEPS += \
./src/lvgl/src/lv_themes/lv_theme.d \
./src/lvgl/src/lv_themes/lv_theme_alien.d \
./src/lvgl/src/lv_themes/lv_theme_default.d \
./src/lvgl/src/lv_themes/lv_theme_material.d \
./src/lvgl/src/lv_themes/lv_theme_mono.d \
./src/lvgl/src/lv_themes/lv_theme_nemo.d \
./src/lvgl/src/lv_themes/lv_theme_night.d \
./src/lvgl/src/lv_themes/lv_theme_templ.d \
./src/lvgl/src/lv_themes/lv_theme_zen.d 


# Each subdirectory must supply rules for building sources it contributes
src/lvgl/src/lv_themes/%.o: ../src/lvgl/src/lv_themes/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../osc_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


