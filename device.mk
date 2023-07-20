#
# Copyright (C) 2023 The Android Open-Source Project
#
# SPDX-License-Identifier: Apache-2.0
#

$(call inherit-product, vendor/realme/RMX1971/RMX1971-vendor.mk)

# APEX
$(call inherit-product, $(SRC_TARGET_DIR)/product/updatable_apex.mk)

# Installs gsi keys into ramdisk, to boot a developer GSI with verified boot.
$(call inherit-product, $(SRC_TARGET_DIR)/product/developer_gsi_keys.mk)

# Soong
PRODUCT_SOONG_NAMESPACES += \
    $(LOCAL_PATH)
