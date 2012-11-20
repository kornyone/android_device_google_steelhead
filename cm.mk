# Release name
PRODUCT_RELEASE_NAME := steelhead

# Boot animation
TARGET_SCREEN_HEIGHT := 1280
TARGET_SCREEN_WIDTH := 720

# Inherit some common CM stuff.
$(call inherit-product, vendor/cm/config/common_full_tablet_wifionly.mk)

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
PRODUCT_BUILD_PROP_OVERRIDES += PRODUCT_NAME=tungsten BUILD_FINGERPRINT="google/tungsten/phantasm:4.1.2/JZO54K/485486:user/release-keys" PRIVATE_BUILD_DESC="tungsten-user 4.1.2 JZO54K 485486 release-keys"
