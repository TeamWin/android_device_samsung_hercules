$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Release name
PRODUCT_RELEASE_NAME := hercules

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common Slim stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

# Inherit torch settings
$(call inherit-product, vendor/slim/config/common_ledflash.mk)

# Copy boot animation
PRODUCT_COPY_FILES += \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

PRODUCT_NAME := slim_hercules
PRODUCT_DEVICE := hercules

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.0.4/IMM76D/UVLI4:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.0.4 IMM76D UVLI4 release-keys"
