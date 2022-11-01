# Copyright (C) 2014 The CyanogenMod Project
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

LOCAL_PATH := device/samsung/j3xnlte

# Overlays
DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Inherit from vendor tree
$(call inherit-product-if-exists, vendor/samsung/sharkls-common/j3xnlte-vendor.mk)

# Inherit from scx30g_v2-common device configuration
$(call inherit-product, device/samsung/sharkls-common/common.mk)

DEVICE_PACKAGE_OVERLAYS += $(LOCAL_PATH)/overlay

# Boot animation
TARGET_SCREEN_HEIGHT := 960
TARGET_SCREEN_WIDTH := 540

# Media config
MEDIA_CONFIGS := \
	$(LOCAL_PATH)/media/media_profiles.xml

PRODUCT_COPY_FILES += \
	$(foreach f,$(MEDIA_CONFIGS),$(f):system/etc/$(notdir $(f)))

# Camera HAL
PRODUCT_PACKAGES += \
	camera.sc8830

# Rootdir files
ROOTDIR_FILES := \
	$(LOCAL_PATH)/rootdir/init.sc8830.rc \
	$(LOCAL_PATH)/rootdir/init.sc8830.usb.rc \
	$(LOCAL_PATH)/rootdir/init.j3xnlte_base.rc \
	$(LOCAL_PATH)/rootdir/ueventd.sc8830.rc

PRODUCT_COPY_FILES += \
	$(foreach f,$(ROOTDIR_FILES),$(f):root/$(notdir $(f)))

# Permissions
PERMISSIONS_XML_FILES := \
	frameworks/native/data/etc/android.hardware.sensor.compass.xml
	    frameworks/native/data/etc/com.android.nfc_extras.xml:system/etc/permissions/com.android.nfc_extras.xml \
    frameworks/native/data/etc/android.hardware.nfc.xml:system/etc/permissions/android.hardware.nfc.xml \
    frameworks/native/data/etc/android.hardware.nfc.hce.xml:system/etc/permissions/android.hardware.nfc.hce.xml \
    frameworks/native/data/etc/com.nxp.mifare.xml:system/etc/permissions/com.nxp.mifare.xml

PRODUCT_COPY_FILES += \
	    $(LOCAL_PATH)/configs/nfc/libnfc-brcm.conf:system/etc/libnfc-brcm.conf \
    $(LOCAL_PATH)/configs/nfc/libnfc-nxp.conf:system/etc/libnfc-nxp.conf \
    $(LOCAL_PATH)/configs/nfc/nfcee_access.xml:system/etc/nfcee_access.xml
	$(foreach f,$(PERMISSIONS_XML_FILES),$(f):system/etc/permissions/$(notdir $(f)))

# OTA server
PRODUCT_PROPERTY_OVERRIDES += \
	cm.updater.uri=ftp://138.122.227.241/cm/UNOFFICIAL

# Set those variables here to overwrite the inherited values.
PRODUCT_NAME := full_j3xnlte
PRODUCT_DEVICE := j3xnlte
PRODUCT_BRAND := samsung
PRODUCT_MANUFACTURER := samsung
PRODUCT_MODEL := SM-J320FN
