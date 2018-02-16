#
# Copyright (C) 2018 The TwrpBuilder Open-Source Project
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
#


LOCAL_PATH := device/asus/P01V_2

TARGET_BOARD_PLATFORM := sofia3g
TARGET_BOOTLOADER_BOARD_NAME := P01V_2

# Recovery
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 17825792 
BOARD_FLASH_BLOCK_SIZE := 1000000
BOARD_HAS_NO_REAL_SDCARD := true
TW_EXCLUDE_SUPERSU := true

# Kernel
TARGET_PREBUILT_KERNEL := device/asus/P01V_2/kernel
BOARD_KERNEL_CMDLINE := console=ttyS0,115200n8 idle=halt earlyprintk=xgold notsc androidboot.hardware=sofia3g nolapic_pm firmware_class.path=/system/vendor/firmware androidboot.selinux=enforcing nolapic_timer x86_intel_xgold_timer=soctimer_only loglevel=0 slub_max_order=0 mvpipe.at_dbg_port=1 vmalloc=336M androidboot.selinux=permissive
BOARD_KERNEL_BASE := 0x007f8000
BOARD_KERNEL_PAGESIZE := 4096
BOARD_MKBOOTIMG_ARGS := --ramdisk_offset 0xffc08000 --tags_offset 0xff808100

include device/generic/twrpbuilder/BoardConfig32.mk
