################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/Users/favre/3emeHES/PTR/RealTime/work/src/platform/f7-disco-gcc/ext-26pin/ext_26pin.c 

OBJS += \
./platform/f7-disco-gcc/ext-26pin/ext_26pin.o 

C_DEPS += \
./platform/f7-disco-gcc/ext-26pin/ext_26pin.d 


# Each subdirectory must supply rules for building sources it contributes
platform/f7-disco-gcc/ext-26pin/ext_26pin.o: C:/Users/favre/3emeHES/PTR/RealTime/work/src/platform/f7-disco-gcc/ext-26pin/ext_26pin.c
	@echo 'Building file: $<'
	@echo 'Invoking: MCU GCC Compiler'
	@echo $(PWD)
	arm-none-eabi-gcc -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F746xx -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Inc" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Drivers/CMSIS/Include" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/config" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/include" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/port" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/port/default-idf" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/platform/f7-disco-gcc/mcu" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/platform/f7-disco-gcc" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ugfx" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ugfx/boards/base/STM32F746-Discovery" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ugfx/drivers/gdisp/STM32LTDC" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ugfx/src/gdisp/mcufont" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/ui-gen" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ext-freqgen" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/event"  -O0 -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fmessage-length=0 -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


