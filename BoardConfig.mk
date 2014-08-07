#
# Copyright (C) 2013 The CyanogenMod Project
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

# inherit from common apq8064
-include device/oppo/apq8064-common/BoardConfigCommon.mk

# Kernel
TARGET_KERNEL_CONFIG := cyanogenmod_n1_defconfig

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_QCOM := true
BLUETOOTH_HCI_USE_MCT := true
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/oppo/n1/bluetooth

# Camera
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS
BOARD_FIX_FACE_DETECTION_SCORE := true

# Filesystem
BOARD_BOOTIMAGE_PARTITION_SIZE     := 10485760
BOARD_CACHEIMAGE_PARTITION_SIZE    := 536870912
BOARD_PERSISTIMAGE_PARTITION_SIZE  := 8388608
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 10485760
BOARD_SYSTEMIMAGE_PARTITION_SIZE   := 1073741824
BOARD_USERDATAIMAGE_PARTITION_SIZE := 3221209088  # 3221209088 - 16384 for crypto footer

# inherit from the proprietary version
-include vendor/oppo/n1/BoardConfigVendor.mk

# TWRP specific build flags
DEVICE_RESOLUTION := 1080x1920
#RECOVERY_SDCARD_ON_DATA := true
BOARD_HAS_NO_REAL_SDCARD := true
RECOVERY_GRAPHICS_USE_LINELENGTH := true
TARGET_RECOVERY_PIXEL_FORMAT := "RGBX_8888"
#TW_BRIGHTNESS_PATH := /sys/devices/platform/msm_fb.590337/leds/lcd-backlight/brightness
#TW_MAX_BRIGHTNESS := 255
#TW_BOARD_CUSTOM_GRAPHICS := ../../../device/oppo/n1/recovery/graphics.c
TW_NO_SCREEN_TIMEOUT := true
