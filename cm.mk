# Release name
PRODUCT_RELEASE_NAME := steelhead

# Boot animation
TARGET_BOOTANIMATION_NAME := horizontal-1280x720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_media.mk)

# Enhanced NFC
$(call inherit-product, vendor/cm/config/nfc_enhanced.mk)

# Inherit device configuration
$(call inherit-product, device/google/steelhead/full_steelhead.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := steelhead
PRODUCT_NAME := cm_steelhead
PRODUCT_BRAND := Google
PRODUCT_MODEL := Nexus Q
PRODUCT_MANUFACTURER := Google

#Set build fingerprint / ID / Product Name ect.
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tungsten BUILD_FINGERPRINT="google/tungsten/phantasm:4.0.4/IAN67H/384240:user/release-keys" PRIVATE_BUILD_DESC="tungsten-user 4.0.4 IAN67H 384240 release-keys"
