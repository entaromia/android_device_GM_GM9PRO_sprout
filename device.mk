#
# Copyright (C) 2021 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit vendor
$(call inherit-product, vendor/GM/GM9PRO_sprout/GM9PRO_sprout-vendor.mk)

# Properties
include $(LOCAL_PATH)/vendor_prop.mk
$(call inherit-product, $(SRC_TARGET_DIR)/product/product_launched_with_o_mr1.mk)

# A/B
AB_OTA_UPDATER := true

AB_OTA_PARTITIONS += \
    system \
    vendor \
    boot

