# Copyright (C) 2012 The CyanogenMod Project
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
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# WARNING: This line must come *before* including the proprietary
# variant, so that it gets overwritten by the parent (which goes
# against the traditional rules of inheritance).
USE_CAMERA_STUB := true

# inherit from common celox
-include device/samsung/celox-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/hercules/BoardConfigVendor.mk

TARGET_BOOTLOADER_BOARD_NAME := MSM8660_SURF

# Assert
TARGET_OTA_ASSERT_DEVICE := SGH-T989,hercules

# Kernel
#TARGET_KERNEL_CONFIG        := cyanogenmod_hercules_defconfig
#TARGET_KERNEL_SOURCE        := kernel/samsung/msm8660-common

# Assert minimum baseband version
TARGET_BOARD_INFO_FILE ?= device/samsung/hercules/board-info.txt

# cat /proc/emmc
#dev:        size     erasesize name
#mmcblk0p22: 00fffc00 00000200 "recovery"
#mmcblk0p8: 01000000 00000200 "boot"
#mmcblk0p24: 5ffffc00 00000200 "system"
#mmcblk0p26: 13fffe00 00000200 "cache"
#mmcblk0p25: 9ffffe00 00000200 "userdata"

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072

BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/samsung/hercules/bluetooth

#TWRP config
DEVICE_RESOLUTION := 480x800
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
TW_NO_REBOOT_BOOTLOADER := true
TW_INTERNAL_STORAGE_PATH := "/sdcard"
TW_INTERNAL_STORAGE_MOUNT_POINT := "sdcard"
TW_EXTERNAL_STORAGE_PATH := "/external_sd"
TW_EXTERNAL_STORAGE_MOUNT_POINT := "external_sd"
BOARD_HAS_NO_REAL_SDCARD := true
TW_INCLUDE_CRYPTO := true
TW_CRYPTO_FS_TYPE := "ext4"
TW_CRYPTO_REAL_BLKDEV := "/dev/block/mmcblk0p25"
TW_CRYPTO_MNT_POINT := "/data"
TW_CRYPTO_FS_OPTIONS := "noauto_da_alloc"
TW_CRYPTO_FS_FLAGS := "0x00000006"
TW_CRYPTO_KEY_LOC := "/efs/metadata"
TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.196609/leds/lcd-backlight/brightness
TW_MAX_BRIGHTNESS := 255

TARGET_CPU_VARIANT := cortex-a9
HAVE_SELINUX := true

