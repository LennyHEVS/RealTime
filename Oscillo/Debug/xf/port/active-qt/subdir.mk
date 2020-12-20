################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CPP_SRCS += \
C:/Users/favre/3emeHES/PTR/RealTime/work/src/xf/port/active-qt/resourcefactory.cpp 

OBJS += \
./xf/port/active-qt/resourcefactory.o 

CPP_DEPS += \
./xf/port/active-qt/resourcefactory.d 


# Each subdirectory must supply rules for building sources it contributes
xf/port/active-qt/resourcefactory.o: C:/Users/favre/3emeHES/PTR/RealTime/work/src/xf/port/active-qt/resourcefactory.cpp
	@echo 'Building file: $<'
	@echo 'Invoking: MCU G++ Compiler'
	@echo $(PWD)
	arm-none-eabi-g++ -mcpu=cortex-m7 -mthumb -mfloat-abi=hard -mfpu=fpv5-sp-d16 '-D__weak=__attribute__((weak))' '-D__packed=__attribute__((__packed__))' -DUSE_HAL_DRIVER -DSTM32F746xx -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Inc" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/port/stm32cube-cmsis-freertos" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/port/default" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Drivers/STM32F7xx_HAL_Driver/Inc" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Drivers/STM32F7xx_HAL_Driver/Inc/Legacy" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Drivers/CMSIS/Device/ST/STM32F7xx/Include" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Drivers/CMSIS/Include" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/config" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/include" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/port" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/platform/f7-disco-gcc/mcu" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/platform/f7-disco-gcc" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ugfx" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ugfx/boards/base/STM32F746-Discovery" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ugfx/drivers/gdisp/STM32LTDC" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ugfx/src/gdisp/mcufont" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/ui-gen" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/mdw/ext-freqgen" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/event" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/port/default-cmsis-os" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Middlewares/Third_Party/FreeRTOS/Source" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Middlewares/Third_Party/FreeRTOS/Source/portable/GCC/ARM_CM7/r0p1" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/../src/xf/port/default-idf" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/src/config" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Middlewares/Third_Party/FreeRTOS/Source/include" -I"C:/Users/favre/3emeHES/PTR/RealTime/work/Oscillo/Middlewares/Third_Party/FreeRTOS/Source/CMSIS_RTOS"  -Og -g3 -Wall -fmessage-length=0 -ffunction-sections -c -fno-exceptions -fno-rtti -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" -o "$@" "$<"
	@echo 'Finished building: $<'
	@echo ' '


