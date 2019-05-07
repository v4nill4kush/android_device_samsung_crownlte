# Copyright (C) 2018 The LineageOS Project
# SPDX-License-Identifier: Apache-2.0

DEVICE_PATH := device/samsung/crownlte

# Assert
TARGET_OTA_ASSERT_DEVICE := crownltexx,crownlteks,crownlte

# Kernel
TARGET_KERNEL_CONFIG := exynos9810-crownlte_defconfig

# Bluetooth
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := $(DEVICE_PATH)/bluetooth

# Inherit common board flags
include device/samsung/universal9810-common/BoardConfigCommon.mk

# Use mke2fs to create ext4 images
TARGET_USES_MKE2FS := true

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)/releasetools

# SELinux
BOARD_SEPOLICY_VERS := 27.0

# Set default locale
PRODUCT_LOCALES := en-GB
