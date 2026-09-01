#
# Copyright (C) 2018 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
TARGET_SUPPORTS_OMX_SERVICE := false
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from kebab device
$(call inherit-product, device/oneplus/kebab/device.mk)

# Inherit some common Lineage stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

PRODUCT_NAME := lineage_kebab
PRODUCT_DEVICE := kebab
PRODUCT_MANUFACTURER := OnePlus
PRODUCT_BRAND := OnePlus
PRODUCT_MODEL := KB2005

PRODUCT_GMS_CLIENTID_BASE := android-oneplus

# Lunaris
TARGET_CUSTOM_UDFPS := true
USE_REALITY_ENGINE := true

# SurfaceFlinger Refresh Rates
$(call soong_config_set,surfaceflinger,frame_rate_category_high,120)
$(call soong_config_set,surfaceflinger,frame_rate_category_min,60)

# GMS & App Suite
WITH_GMS := true
TARGET_USE_MAPS := true
TARGET_USE_FILES := true
TARGET_USE_GPHOTOS := true
TARGET_USE_WALLPAPERS := true

# Maintainer & Properties
PRODUCT_PRODUCT_PROPERTIES += \
    ro.lunaris.maintainer=zenzeros

PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="OnePlus8T-user 14 UKQ1.230924.001 R.1a46c89-1_1 release-keys" \
    BuildFingerprint=OnePlus/OnePlus8T/OnePlus8T:14/UKQ1.230924.001/R.1a46c89-1_1:user/release-keys \
    DeviceName=OnePlus8T \
    DeviceProduct=OnePlus8T \
    SystemDevice=OnePlus8T \
    SystemName=OnePlus8T
