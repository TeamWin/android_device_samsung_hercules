$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Release name
PRODUCT_RELEASE_NAME := hercules

# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

PRODUCT_NAME := slim_hercules
PRODUCT_DEVICE := hercules

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.3/JZO54K/T989UVMC6:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.3 IMM76D UVMC6 release-keys"
