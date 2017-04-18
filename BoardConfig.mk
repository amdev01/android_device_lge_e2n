#
# Copyright (C) 2017 The LineageOS Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# inherit from the proprietary version
-include vendor/lge/e2n/BoardConfigVendor.mk

BOARD_VENDOR := lge

LOCAL_PATH := device/lge/e2n

TARGET_OTA_ASSERT_DEVICE := f60,e2,e2n,LG-D390n,e2n_global_com

# Platform
TARGET_BOARD_PLATFORM := msm8916
TARGET_BOARD_PLATFORM_GPU := qcom-adreno306

# CPU
TARGET_ARCH := arm
TARGET_BOARD_SUFFIX := _32
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a53
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8916
TARGET_NO_BOOTLOADER := true

# Kernel
BOARD_CUSTOM_BOOTIMG := true
BOARD_CUSTOM_BOOTIMG_MK := device/lge/e2n/mkbootimg.mk
BOARD_KERNEL_CMDLINE := console=ttyHSL0,115200,n8 androidboot.console=ttyHSL0 user_debug=31 msm_rtb.filter=0x3F ehci-hcd.park=3 androidboot.bootdevice=7824900.sdhci androidboot.hardware=e2n androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x80000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_KERNEL_SEPARATED_DT := true
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x02000000 --tags_offset 0x00000100
TARGET_KERNEL_CONFIG := lineage_e2n_defconfig
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/$(HOST_OS)-x86/arm/arm-eabi-4.8/bin
TARGET_KERNEL_CROSS_COMPILE_PREFIX := arm-eabi-
TARGET_KERNEL_SOURCE := kernel/lge/e2

# Audio
BOARD_USES_ALSA_AUDIO := true
AUDIO_FEATURE_ENABLED_MULTI_VOICE_SESSIONS := true
AUDIO_FEATURE_ENABLED_NEW_SAMPLE_RATE := true
AUDIO_FEATURE_ENABLED_COMPRESS_VOIP := false
USE_CUSTOM_AUDIO_POLICY := 1

# Bluetooth
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/lge/e2n/bluetooth
BOARD_HAVE_BLUETOOTH := true

# Camera
USE_DEVICE_SPECIFIC_CAMERA := true
TARGET_NEEDS_PLATFORM_TEXT_RELOCATIONS := true
TARGET_HAS_LEGACY_CAMERA_HAL1 := true
BOARD_GLOBAL_CFLAGS += -DCAMERA_VENDOR_L_COMPAT

# Display
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
TARGET_USES_C2D_COMPOSITION := true
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true

MAX_EGL_CACHE_KEY_SIZE := 12*1024
MAX_EGL_CACHE_SIZE := 2048*1024

HAVE_ADRENO_SOURCE:= false
OVERRIDE_RS_DRIVER:= libRSDriver_adreno.so
TARGET_USE_COMPAT_GRALLOC_PERFORM := true

# Fonts
EXTENDED_FONT_FOOTPRINT := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true

# Init
TARGET_PLATFORM_DEVICE_BASE := /devices/soc.0/

# Offmode Charging
BOARD_CHARGING_CMDLINE_NAME := "androidboot.mode"
BOARD_CHARGING_CMDLINE_VALUE := "chargerlogo"

# Partitions
BOARD_BOOTIMAGE_PARTITION_SIZE := 26424115
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 26424115
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1937768448
BOARD_USERDATAIMAGE_PARTITION_SIZE := 1538260992
BOARD_CACHEIMAGE_PARTITION_SIZE := 274726912
BOARD_FLASH_BLOCK_SIZE := 131072

# Recovery
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_NO_SECURE_DISCARD := true
BOARD_HAS_NO_REAL_SDCARD := true
BOARD_RECOVERY_SWIPE := true
BOARD_SUPPRESS_EMMC_WIPE := true
TARGET_RECOVERY_FSTAB := device/lge/e2n/rootdir/etc/fstab.e2n
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TARGET_USERIMAGES_USE_EXT4 := true

# Power
TARGET_POWERHAL_VARIANT := qcom

# Qualcomm support
BOARD_USES_QCOM_HARDWARE := true

# RIL
BOARD_GLOBAL_CFLAGS += -DUSE_RIL_VERSION_10
BOARD_GLOBAL_CPPFLAGS += -DUSE_RIL_VERSION_10
TARGET_RIL_VARIANT := caf

# SDClang
TARGET_USE_SDCLANG := true

# SELinux
#include device/qcom/sepolicy/sepolicy.mk
#BOARD_SEPOLICY_DIRS += device/lge/e2n/sepolicy

# Time services
BOARD_USES_QC_TIME_SERVICES := true

# Wifi
BOARD_HAS_QCOM_WLAN := true
BOARD_WLAN_DEVICE := qcwcn
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_$(BOARD_WLAN_DEVICE)
TARGET_USES_WCNSS_CTRL := true
TARGET_USES_QCOM_WCNSS_QMI := true
WIFI_DRIVER_FW_PATH_AP := "ap"
WIFI_DRIVER_FW_PATH_STA := "sta"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# TWRP Support - Optional
ifeq ($(WITH_TWRP),true)
-include device/lge/e2n/twrp.mk
endif
