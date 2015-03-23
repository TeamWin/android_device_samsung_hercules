# Inherit device configuration
$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Enhanced NFC
$(call inherit-product, vendor/candy5/config/nfc_enhanced.mk)

# Inherit some common Candy5 stuff.
$(call inherit-product, vendor/candy5/config/common_full_phone.mk)

# Release name
PRODUCT_RELEASE_NAME := hercules

# Device identifier
PRODUCT_NAME := candy5_hercules
PRODUCT_DEVICE := hercules

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:5.0.2/LRX22G/T989UVMC6:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 5.0.2 LRX22G UVMC6 release-keys"

