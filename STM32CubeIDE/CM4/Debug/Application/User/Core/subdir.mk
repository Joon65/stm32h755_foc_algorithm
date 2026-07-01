################################################################################
# Automatically-generated file. Do not edit!
# Toolchain: GNU Tools for STM32 (14.3.rel1)
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Src/main.c \
C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Src/stm32h7xx_hal_msp.c \
C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Src/stm32h7xx_it.c \
../Application/User/Core/syscalls.c \
../Application/User/Core/sysmem.c 

OBJS += \
./Application/User/Core/main.o \
./Application/User/Core/stm32h7xx_hal_msp.o \
./Application/User/Core/stm32h7xx_it.o \
./Application/User/Core/syscalls.o \
./Application/User/Core/sysmem.o 

C_DEPS += \
./Application/User/Core/main.d \
./Application/User/Core/stm32h7xx_hal_msp.d \
./Application/User/Core/stm32h7xx_it.d \
./Application/User/Core/syscalls.d \
./Application/User/Core/sysmem.d 


# Each subdirectory must supply rules for building sources it contributes
Application/User/Core/main.o: C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Src/main.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Inc" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/CMSIS/Device/ST/STM32H7xx/Include" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/CMSIS/Include" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/STM32H7xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32h7xx_hal_msp.o: C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Src/stm32h7xx_hal_msp.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Inc" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/CMSIS/Device/ST/STM32H7xx/Include" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/CMSIS/Include" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/STM32H7xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/stm32h7xx_it.o: C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Src/stm32h7xx_it.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Inc" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/CMSIS/Device/ST/STM32H7xx/Include" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/CMSIS/Include" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/STM32H7xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"
Application/User/Core/%.o Application/User/Core/%.su Application/User/Core/%.cyclo: ../Application/User/Core/%.c Application/User/Core/subdir.mk
	arm-none-eabi-gcc "$<" -mcpu=cortex-m4 -std=gnu11 -g3 -DDEBUG -DCORE_CM4 -DUSE_HAL_DRIVER -DSTM32H755xx -DUSE_PWR_DIRECT_SMPS_SUPPLY -c -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/STM32H7xx_HAL_Driver/Inc/Legacy" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/CM4/Core/Inc" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/CMSIS/Device/ST/STM32H7xx/Include" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/CMSIS/Include" -I"C:/workspace/tenic/tenic_motorcontrol_FOC_20260701/stm32h755_foc_algorithm/Drivers/STM32H7xx_HAL_Driver/Inc" -O0 -ffunction-sections -fdata-sections -Wall -fstack-usage -fcyclomatic-complexity -MMD -MP -MF"$(@:%.o=%.d)" -MT"$@" --specs=nano.specs -mfpu=fpv4-sp-d16 -mfloat-abi=hard -mthumb -o "$@"

clean: clean-Application-2f-User-2f-Core

clean-Application-2f-User-2f-Core:
	-$(RM) ./Application/User/Core/main.cyclo ./Application/User/Core/main.d ./Application/User/Core/main.o ./Application/User/Core/main.su ./Application/User/Core/stm32h7xx_hal_msp.cyclo ./Application/User/Core/stm32h7xx_hal_msp.d ./Application/User/Core/stm32h7xx_hal_msp.o ./Application/User/Core/stm32h7xx_hal_msp.su ./Application/User/Core/stm32h7xx_it.cyclo ./Application/User/Core/stm32h7xx_it.d ./Application/User/Core/stm32h7xx_it.o ./Application/User/Core/stm32h7xx_it.su ./Application/User/Core/syscalls.cyclo ./Application/User/Core/syscalls.d ./Application/User/Core/syscalls.o ./Application/User/Core/syscalls.su ./Application/User/Core/sysmem.cyclo ./Application/User/Core/sysmem.d ./Application/User/Core/sysmem.o ./Application/User/Core/sysmem.su

.PHONY: clean-Application-2f-User-2f-Core

