#
# Copyright (C) 2018 The Xiaomi-SDM660 Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

#
# This file sets variables that control the way modules are built
# thorughout the system. It should not be used to conditionally
# disable makefiles (the proper mechanism to control what gets
# included in a build is to use PRODUCT_PACKAGES in a product
# definition file).
#

# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit device configuration
$(call inherit-product, device/xiaomi/lavender/device.mk)

# Inherit some common XPerience stuff.
$(call inherit-product, vendor/xperienc/config/common.mk)


# Boot Animation
TARGET_BOOT_ANIMATION_RES := 1080

# Build Fingerprint
BUILD_FINGERPRINT := "google/coral/coral:13/TP1A.220624.014/8819323:user/release-keys"
PRODUCT_BUILD_PROP_OVERRIDES += \
    TARGET_DEVICE="lavender" \
    PRODUCT_NAME="lavender" \
    PRIVATE_BUILD_DESC="lavender-user 10 QKQ1.190910.002 V11.0.1.0.QFGMIXM release-keys"

# Device identifier
PRODUCT_NAME := xperience_lavender
PRODUCT_MANUFACTURER := Xiaomi
PRODUCT_PLATFORM := SDM660
PRODUCT_DEVICE := lavender
PRODUCT_BRAND := Xiaomi
PRODUCT_MODEL := Redmi Note 7

TARGET_VENDOR_PRODUCT_NAME := lavender

PRODUCT_GMS_CLIENTID_BASE := android-xiaomi
