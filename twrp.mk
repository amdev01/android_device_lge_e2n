PRODUCT_COPY_FILES += device/lge/e2n/recovery.fstab:recovery/root/etc/recovery.fstab

RECOVERY_VARIANT := twrp

TW_THEME := portrait_mdpi
RECOVERY_SDCARD_ON_DATA := true
TW_NO_REBOOT_BOOTLOADER := true
TW_INCLUDE_CRYPTO := true
TW_NO_USB_STORAGE := true
TW_BRIGHTNESS_PATH := /sys/class/leds/lcd-backlight/brightness
RECOVERY_GRAPHICS_USE_LINELENGTH := true
