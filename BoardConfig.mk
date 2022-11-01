# Copyright (C) 2014 The CyanogenMod Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Inherit from scx30g_v2 common configs
-include device/samsung/sharkls-common/BoardConfigCommon.mk

# Inherit from the proprietary version
-include vendor/samsung/j3xnlte/BoardConfigVendor.mk

TARGET_ARCH := arm
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true
TARGET_BOARD_PLATFORM := sc8830
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_VARIANT := cortex-a7
TARGET_CPU_SMP := true
ARCH_ARM_HAVE_TLS_REGISTER := true
WITH_SU := true

# Remove "system.new.dat" format.System files are now in "system" folder of the ROM Package.(Easy for development purpose)
BLOCK_BASED_OTA := false

BOARD_NEEDS_MEMORYHEAPION_SPRD := true
BOARD_USE_EMMC := true

DEVICE_RESOLUTION := 720x1280

TARGET_BOOTLOADER_BOARD_NAME := SC9830I

# Include path
TARGET_SPECIFIC_HEADER_PATH := $(PLATFORM_PATH)/include

TARGET_KERNEL_SOURCE := kernel/samsung/sharkls
TARGET_KERNEL_HAVE_EXFAT := true
TARGET_KERNEL_HAVE_NTFS := true

# Camera
#zsl capture
TARGET_BOARD_CAMERA_CAPTURE_MODE := false

#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false

#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false

#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false

#support hal1.0,hal3.2
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0

# camera sensor type
CAMERA_SENSOR_TYPE_BACK := "s5k4h5yc_mipi"
CAMERA_SENSOR_TYPE_FRONT := "s5k5e3yx_mipi"

# select camera 2M,3M,5M,8M
CAMERA_SUPPORT_SIZE := 8M
FRONT_CAMERA_SUPPORT_SIZE := 5M
TARGET_BOARD_NO_FRONT_SENSOR := false
TARGET_BOARD_CAMERA_FLASH_CTRL := false

# WIFI configs
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
WPA_SUPPLICANT_VERSION      := VER_2_1_DEVEL
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_sprdwl
BOARD_HOSTAPD_DRIVER        := NL80211
BOARD_HOSTAPD_PRIVATE_LIB   := lib_driver_cmd_sprdwl
BOARD_WLAN_DEVICE           := sc2341
WIFI_DRIVER_FW_PATH_PARAM   := "/data/misc/wifi/fwpath"
WIFI_DRIVER_FW_PATH_STA     := "sta_mode"
WIFI_DRIVER_FW_PATH_P2P     := "p2p_mode"
WIFI_DRIVER_FW_PATH_AP      := "ap_mode"
WIFI_DRIVER_MODULE_PATH     := "/system/lib/modules/sprdwl.ko"
WIFI_DRIVER_MODULE_NAME     := "sprdwl"

#######################################################
# camera configs
USE_CAMERA_STUB := true
BOARD_USE_SPRD_COLORFORMAT := true
#back camera rotation capture
TARGET_BOARD_BACK_CAMERA_ROTATION := false
#front camera rotation capture
TARGET_BOARD_FRONT_CAMERA_ROTATION := false
# camera sensor type
CAMERA_SENSOR_TYPE_BACK := "s5k4h5yc_mipi"
CAMERA_SENSOR_TYPE_FRONT := "s5k5e3yx_mipi"
# select camera 2M,3M,5M,8M
CAMERA_SUPPORT_SIZE := 8M
FRONT_CAMERA_SUPPORT_SIZE := 5M
TARGET_BOARD_CAMERA_SMJ320 := true
TARGET_BOARD_NO_FRONT_SENSOR := false
TARGET_BOARD_CAMERA_FLASH_CTRL := false
#read otp method 1:from kernel 0:from user
TARGET_BOARD_CAMERA_READOTP_METHOD := 1
#face detect
TARGET_BOARD_CAMERA_FACE_DETECT := true
TARGET_BOARD_CAMERA_FD_LIB := omron
#hdr
TARGET_BOARD_CAMERA_HDR_CAPTURE := true
#sensor interface
TARGET_BOARD_BACK_CAMERA_INTERFACE := mipi
TARGET_BOARD_FRONT_CAMERA_INTERFACE := mipi
#select camera zsl cap mode
TARGET_BOARD_CAMERA_CAPTURE_MODE := true
#select camera zsl force cap mode
TARGET_BOARD_CAMERA_FORCE_ZSL_MODE := true
#sprd zsl feature
TARGET_BOARD_CAMERA_SPRD_PRIVATE_ZSL := false
#rotation capture
TARGET_BOARD_CAMERA_ROTATION_CAPTURE := false
#select camera not support autofocus
TARGET_BOARD_CAMERA_NO_AUTOFOCUS_DEV := false
#uv denoise enable
TARGET_BOARD_CAMERA_CAPTURE_DENOISE := false
#y denoise enable
TARGET_BOARD_CAMERA_Y_DENOISE := true
#select continuous auto focus
TARGET_BOARD_CAMERA_CAF := true
TARGET_BOARD_CAMERA_NO_FLASH_DEV := false
#image angle in different project
TARGET_BOARD_CAMERA_ADAPTER_IMAGE := 0
#pre_allocate capture memory
TARGET_BOARD_CAMERA_PRE_ALLOC_CAPTURE_MEM := true
#sc8830g isp ver 0;sc9630 isp ver 1;sp9832a_2h11 isp version 2
TARGET_BOARD_CAMERA_ISP_SOFTWARE_VERSION := 2
#set hal version to 1.0
TARGET_USES_MEDIA_EXTENSIONS := true
TARGET_BOARD_CAMERA_HAL_VERSION := 1.0
#support auto anti-flicker
TARGET_BOARD_CAMERA_ANTI_FLICKER := true
#multi cap memory mode
TARGET_BOARD_MULTI_CAP_MEM := true
#low capture memory
TARGET_BOARD_LOW_CAPTURE_MEM := true
#select the vcm chip driver BU64241GWZ
TARGET_VCM_BU64241GWZ := true
#select mipi d-phy mode(none, phya, phyb, phyab)
TARGET_BOARD_FRONT_CAMERA_MIPI := phyb
TARGET_BOARD_BACK_CAMERA_MIPI := phya
#select ccir pclk src(source0, source1)
TARGET_BOARD_FRONT_CAMERA_CCIR_PCLK := source0
TARGET_BOARD_BACK_CAMERA_CCIR_PCLK := source0
#third lib
TARGET_BOARD_USE_THRID_LIB := true
TARGET_BOARD_USE_THIRD_AWB_LIB_A := true
TARGET_BOARD_USE_ALC_AE_AWB := false
TARGET_BOARD_USE_THIRD_AF_LIB_A := true

#######################################################

# FM
BOARD_HAVE_SPRD_FM := true

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
SPRD_WCNBT_CHISET := marlin
BOARD_SPRD_WCNBT_MARLIN := true

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(PLATFORM_PATH)/configs/bluetooth
BOARD_BLUEDROID_VENDOR_CONF := $(PLATFORM_PATH)/configs/bluetooth/libbt_vndcfg.txt

# NFC
BOARD_NFC_CHIPSET := pn548
TARGET_USES_NQ_NFC := true

# SELinux
BOARD_SEPOLICY_DIRS += \
    $(PLATFORM_PATH)/sepolicy

# include SPRD_MODULES
-include $(PLATFORM_PATH)/modules.mk

TARGET_KERNEL_MODULES := SPRD_MODULES
TARGET_IGNORE_RO_BOOT_REVISION := true

BOARD_KERNEL_CMDLINE := console=ttyS1,115200n8
BOARD_KERNEL_BASE := 0x00000000
BOARD_KERNEL_PAGESIZE := 2048
BOARD_MKBOOTIMG_ARGS := --kernel_offset 0x00008000 --ramdisk_offset 0x01000000 --tags_offset 0x00000100 --cmdline 'console=ttyS1,115200n8'

BOARD_CUSTOM_BOOTIMG_MK := $(PLATFORM_PATH)/bootimg.mk
BOARD_KERNEL_SEPARATED_DT := true
KERNEL_TOOLCHAIN := $(ANDROID_BUILD_TOP)/prebuilts/gcc/linux-x86/arm/linaro-6.2/bin

# build.prop
TARGET_SYSTEM_PROP := $(PLATFORM_PATH)/system.prop

# Resolution
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Assert
TARGET_OTA_ASSERT_DEVICE := SM-J320FN,SM-J320F,j3xnlte,j3xnltexx,j2xlte,j2xltedd,j3xlte
