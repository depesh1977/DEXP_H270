#
# Copyright (C) 2021 The Android Open Source Project
# Copyright (C) 2021 SebaUbuntu's TWRP device tree generator
#
# SPDX-License-Identifier: Apache-2.0
#

# Inherit from those products. Most specific first.
$(call inherit-product-if-exists, $(SRC_TARGET_DIR)/product/embedded.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)
#$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

# Inherit from TM-5075 device
#$(call inherit-product, device/gstone/TM-5075/device.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/omni/config/common.mk)
#$(call inherit-product, vendor/omni/config/gsm.mk)

# Device identifier. This must come after all inclusions
PRODUCT_DEVICE := H270
PRODUCT_NAME := omni_H270
PRODUCT_BRAND := DEXP
PRODUCT_MODEL := H270
PRODUCT_MANUFACTURER := H270

PRODUCT_GMS_CLIENTID_BASE := android-atlas

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRIVATE_BUILD_DESC="s7067e_1g-user 8.1.0 OPM2.171019.012 13422 release-keys"

BUILD_FINGERPRINT := DEXP/H270/H270:8.1.0/OPM2.171019.012/13422:user/release-keys
