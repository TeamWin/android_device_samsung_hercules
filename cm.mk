# Release name
PRODUCT_RELEASE_NAME := hercules

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/samsung/hercules/device_hercules.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := hercules
PRODUCT_NAME := cm_hercules
PRODUCT_BRAND := Samsung
PRODUCT_MODEL := hercules
PRODUCT_MANUFACTURER := Samsung
