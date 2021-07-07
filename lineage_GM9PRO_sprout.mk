#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := GM
PRODUCT_DEVICE := GM9PRO_sprout
PRODUCT_MANUFACTURER := General Mobile
PRODUCT_NAME := lineage_GM9PRO_sprout
PRODUCT_MODEL := GM 9 Pro

PRODUCT_GMS_CLIENTID_BASE := android-gm
TARGET_VENDOR := GM
TARGET_VENDOR_PRODUCT_NAME := GM9PRO_sprout
PRODUCT_BUILD_PROP_OVERRIDES += \
	PRIVATE_BUILD_DESC="gm9pro-user 9 PKQ1.180904.001 315 release-keys"

BUILD_FINGERPRINT := essential/mata/mata:8.1.0/OPM1.180104.092/224:user/release-keys
