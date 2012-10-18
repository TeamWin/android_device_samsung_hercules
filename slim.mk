$(call inherit-product, device/samsung/hercules/full_hercules.mk)

# Release name
PRODUCT_RELEASE_NAME := T989

# Preload bootanimation
TARGET_BOOTANIMATION_PRELOAD := true

# Inherit some common slim stuff.
$(call inherit-product, vendor/slim/config/gsm.mk)

# Enhanced NFC
$(call inherit-product, vendor/slim/config/nfc_enhanced.mk)

# Inherit some common CM stuff.
$(call inherit-product, vendor/slim/config/common_full_phone.mk)

# Inherit device settings
$(call inherit-product, vendor/slim/config/common_sgs.mk)

#copy boot animation
PRODUCT_COPY_FILES +=  \
    vendor/slim/prebuilt/hdpi/bootanimation.zip:system/media/bootanimation.zip

#copy 00check
PRODUCT_COPY_FILES += \
	vendor/slim/prebuilt/common/etc/init.d/00check:system/etc/init.d/00check

PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=SGH-T989 TARGET_DEVICE=SGH-T989 BUILD_FINGERPRINT="samsung/SGH-T989/SGH-T989:4.0.4/IMM76D/UVLH1:user/release-keys" PRIVATE_BUILD_DESC="SGH-T989-user 4.0.4 IMM76D UVLH1 release-keys"

#TARGET_BOOTANIMATION_NAME := vertical-800x1280

PRODUCT_NAME := slim_hercules
PRODUCT_DEVICE := hercules

