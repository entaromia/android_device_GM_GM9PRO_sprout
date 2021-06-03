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

# IRQ
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/msm_irqbalance.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance.conf \
    $(LOCAL_PATH)/configs/msm_irqbalance_sdm630.conf:$(TARGET_COPY_OUT_VENDOR)/etc/msm_irqbalance_sdm630.conf

# IRSC
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/sec_config:$(TARGET_COPY_OUT_VENDOR)/etc/sec_config

# Low Power Whitelist
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/qti_whitelist.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/sysconfig/qti_whitelist.xml

# Privapp Permissions
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/privapp-permissions-qti.xml:$(TARGET_COPY_OUT_SYSTEM)/etc/permissions/privapp-permissions-qti.xml
