# Copyright (C) 2009 The CyanogenMod Project
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

# inherit from common D2
-include device/samsung/d2-common/BoardConfigCommon.mk

# inherit from the proprietary version
-include vendor/samsung/d2vzw/BoardConfigVendor.mk

# Assert
TARGET_OTA_ASSERT_DEVICE := d2vzw

# Kernel
TARGET_KERNEL_SOURCE        := kernel/samsung/d2
TARGET_KERNEL_CONFIG        := lk_defconfig
BOARD_KERNEL_CMDLINE        := androidboot.hardware=qcom user_debug=31
BOARD_KERNEL_BASE           := 0x80200000
BOARD_FORCE_RAMDISK_ADDRESS := 0x81500000
BOARD_KERNEL_PAGESIZE       := 2048

TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00A00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 1572864000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 28651290624
BOARD_FLASH_BLOCK_SIZE := 131072

# Kexec
TARGET_RELEASETOOL_OTA_FROM_TARGET_SCRIPT := device/samsung/d2vzw/kexec-releasetools/ota_from_target_files

# Boot Animation
TARGET_BOOTANIMATION_USE_RGB565 := true

