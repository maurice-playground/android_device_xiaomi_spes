#
# Copyright (C) 2022 The LineageOS Project
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit from spes/spesn device
$(call inherit-product, device/xiaomi/spes/device.mk)

# Inherit some common stuff.
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)
TARGET_SCREEN_HEIGHT := 2400
TARGET_SCREEN_WIDTH := 1080

# Inherit my keys
$(call inherit-product, vendor/lineage-priv/keys/keys.mk)

# Product Specifics
PRODUCT_NAME := lineage_spes
PRODUCT_DEVICE := spes
PRODUCT_BRAND := Redmi
PRODUCT_MODEL := Redmi Note 11
PRODUCT_MANUFACTURER := Xiaomi

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi

# Build Flags
TARGET_OPTIMIZED_DEXOPT := false
BYPASS_CHARGE_SUPPORTED := false
TARGET_ENABLE_BLUR := true
TARGET_CUSTOM_UDFPS := false
USE_REALITY_ENGINE := true
WITH_PIXEL_LAUNCHER := false

# Customized GApps
WITH_GMS := true
TARGET_USE_WALLPAPERS := true
TARGET_DISABLE_MATLOG := true

# Fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BuildDesc="spes_global-user 13 TKQ1.221114.001 V816.0.11.0.TGKMIXM release-keys" \
    BuildFingerprint=Redmi/spes_global/spes:13/TKQ1.221114.001/V816.0.11.0.TGKMIXM:user/release-keys
