#
# Copyright (C) 2021 The RevengeOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_n_mr1.mk)

# Inherit some common RevengeOS stuff.
$(call inherit-product, vendor/revengeos/config/common.mk)

# Inherit from ulova device
$(call inherit-product, device/xiaomi/ulova/device.mk)

# Overlay
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay-revengeos

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := ulova
PRODUCT_NAME := revengeos_ulova
BOARD_VENDOR := Xiaomi
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi 4A / 5A / Note 5A / Y1
PRODUCT_MANUFACTURER := Xiaomi
TARGET_VENDOR := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="ugg-user 7.1.2 N2G47H V11.0.2.0.NDKMIXM release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := "xiaomi/ugg/ugg:7.1.2/N2G47H/V11.0.2.0.NDKMIXM:user/release-keys"

# RevengeOS
REVENGEOS_BUILDTYPE := OFFICIAL
