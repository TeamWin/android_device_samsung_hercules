# Boot animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Inherit device configuration
$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.3/JZO54K/T989UVMC6:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.3 IMM76D UVMC6 release-keys"

# Device identifier
PRODUCT_NAME := cm_hercules
PRODUCT_DEVICE := hercules
