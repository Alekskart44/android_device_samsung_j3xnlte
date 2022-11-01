## Specify phone tech before including full_phone	
$(call inherit-product, vendor/cm/config/telephony.mk)

# Release name
PRODUCT_RELEASE_NAME := j3xnlte

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_mini_phone.mk)

# Inherit device configuration
$(call inherit-product, $(LOCAL_PATH)/j3xnlte.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := j3xnlte
PRODUCT_NAME := lineage_j3xnlte
PRODUCT_BRAND := samsung
PRODUCT_MODEL := SM-J320FN
PRODUCT_MANUFACTURER := samsung
PRODUCT_CHARACTERISTICS := phone

PRODUCT_GMS_CLIENTID_BASE := android-samsung

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_NAME=j3xnltexx \
    PRIVATE_BUILD_DESC="j3xnltexx-user 5.1.1 LMY47V J320FNXXU0ARB1 release-keys"

BUILD_FINGERPRINT := samsung/j3xnltexx/j3xnlte:5.1.1/LMY47V/J320FNXXU0ARB1:user/release-keys