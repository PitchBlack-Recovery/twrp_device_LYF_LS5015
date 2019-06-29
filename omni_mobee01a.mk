#
# Copyright (C) 2017 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

# Specify phone tech before including full_phone
#$(call inherit-product, vendor/omni/config/gsm.mk)

$(call inherit-product, device/LYF/mobee01a/full_mobee01a.mk)

# Inherit some common Omni stuff.
$(call inherit-product, vendor/pb/config/common.mk)

PRODUCT_NAME := omni_mobee01a
BOARD_VENDOR := LYF

PRODUCT_GMS_CLIENTID_BASE := android-ckt

TARGET_VENDOR_PRODUCT_NAME := LS-5015
TARGET_VENDOR_DEVICE_NAME := LS-5015
PRODUCT_BUILD_PROP_OVERRIDES += TARGET_DEVICE=LS-5015 PRODUCT_NAME=LS-5015

# Build fingerprint
PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT="LYF/LS-5015/LS-5015:6.0.1/MMB29M/434:user/release-keys" \
PRIVATE_BUILD_DESC="mobee01a_msm8916_64-user 6.0.1 MMB29M 701 release-keys"
