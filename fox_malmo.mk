#
# Copyright (C) 2025 The Android Open Source Project
# Copyright (C) 2025 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common TWRP stuff.
$(call inherit-product, vendor/twrp/config/common.mk)


DEVICE_PATH := device/motorola/malmo

# Inherit from malmo device
$(call inherit-product, $(DEVICE_PATH)/device.mk)

# Include TWRP props
$(call inherit-product, $(DEVICE_PATH)/twrp.mk)

# Include Fox props
$(call inherit-product, $(DEVICE_PATH)/fox.mk)

PRODUCT_DEVICE := malmo
PRODUCT_NAME := fox_malmo
PRODUCT_BRAND := motorola
PRODUCT_MODEL := Moto G85 5G
PRODUCT_MANUFACTURER := motorola

PRODUCT_GMS_CLIENTID_BASE := android-motorola

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="Asteroids-user 14 UKQ1.241011.001 2503021856 release-keys"

BUILD_FINGERPRINT := Nothing/Asteroids/Asteroids:14/UKQ1.241011.001/2503021856:user/release-keys

 OF_SCREEN_H := 2376
 OF_STATUS_INDENT_LEFT := 20
 OF_STATUS_INDENT_RIGHT := 20
 OF_OPTIONS_LIST_NUM := 6
 OF_USE_GREEN_LED := 0

 OF_ENABLE_ALL_PARTITION_TOOLS := 1
 OF_WORKAROUND_BACKUP_BUG := 1
 OF_USE_AIDL_BOOT_CONTROL := 1
 OF_FORCE_DATA_FORMAT_F2FS := 1
 OF_UNBIND_SDCARD_F2FS := 1
 OF_WIPE_METADATA_AFTER_DATAFORMAT := 1
 OF_DYNAMIC_FULL_SIZE := 15354134528
 OF_DISPLAY_FORMAT_FILESYSTEMS_DEBUG_INFO := 1
 OF_FORCE_PREBUILT_KERNEL := 1
 OF_NO_RELOAD_AFTER_DECRYPTION := 1
 OF_NO_TREBLE_COMPATIBILITY_CHECK := 1
 OF_AB_DEVICE_WITH_RECOVERY_PARTITION := 1
 OF_RECOVERY_AB_FULL_REFLASH_RAMDISK := 1
 OF_ENABLE_FRP_ADDON := 1

 OF_USE_LZ4_COMPRESSION := 1
 OF_ENABLE_FS_COMPRESSION := 1
