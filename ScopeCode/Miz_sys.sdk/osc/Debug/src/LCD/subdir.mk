################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/LCD/pwm_config.c \
../src/LCD/vdma_config.c \
../src/LCD/vtc_config.c 

OBJS += \
./src/LCD/pwm_config.o \
./src/LCD/vdma_config.o \
./src/LCD/vtc_config.o 

C_DEPS += \
./src/LCD/pwm_config.d \
./src/LCD/vdma_config.d \
./src/LCD/vtc_config.d 


# Each subdirectory must supply rules for building sources it contributes
src/LCD/%.o: ../src/LCD/%.c
	@echo 'Building file: $<'
	@echo 'Invoking: ARM v7 gcc compiler'
	arm-none-eabi-gcc -Wall -O0 -g3 -c -fmessage-length=0 -MT"$@" -mcpu=cortex-a9 -mfpu=vfpv3 -mfloat-abi=hard -I../../osc_bsp/ps7_cortexa9_0/include -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@)" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


