# Copyright (C) 2010 The Android Open Source Project
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
# This file is the build configuration for a full Android
# build for grouper hardware. This cleanly combines a set of
# device-specific aspects (drivers) with a device-agnostic
# product configuration (apps).
#

# Sample: This is where we'd set a backup provider if we had one
# $(call inherit-product, device/sample/products/backup_overlay.mk)

# Inherit from the common Open Source product configuration
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

PRODUCT_NAME := aosp_shamu
PRODUCT_DEVICE := shamu
PRODUCT_BRAND := Android
PRODUCT_MODEL := AOSP on Shamu
PRODUCT_MANUFACTURER := motorola
#PRODUCT_RESTRICT_VENDOR_FILES := true

$(call inherit-product, device/moto/shamu/device.mk)

#Inherit blobs
$(call inherit-product-if-exists, vendor/motorola/shamu/device-vendor.mk)
