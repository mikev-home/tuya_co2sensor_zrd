# Add inputs and outputs from these tool invocations to the build variables
OUT_DIR += \
/platform/boot \
/platform/boot/8258 \
/platform/boot/826x \
/platform/boot/8278
 
OBJS += \
$(OUT_PATH)/platform/boot/link_cfg.o \
$(OUT_PATH)/platform/boot/8258/cstartup_8258.o \
$(OUT_PATH)/platform/boot/826x/cstartup_826x.o \
$(OUT_PATH)/platform/boot/8278/cstartup_8278.o 



# Each subdirectory must supply rules for building sources it contributes
$(OUT_PATH)/platform/boot/%.o: $(SDK_PATH)/platform/boot/%.S
	@echo 'Building file: $<'
	@$(CC) $(BOOT_FLAG) $(INCLUDE_PATHS) -c -o"$@" "$<"

