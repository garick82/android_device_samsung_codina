# Specify phone tech before including full_phone
$(call inherit-product, vendor/cm/config/gsm.mk)

# Release
PRODUCT_RELEASE_NAME := GT-I8160

# Boot Animation
TARGET_SCREEN_HEIGHT := 800
TARGET_SCREEN_WIDTH := 480

# Common GSM stuff
$(call inherit-product, vendor/cm/config/common_full_phone.mk)

# Device config
$(call inherit-product, device/samsung/codina/full_codina.mk)

# Device Identifier
PRODUCT_DEVICE := codina
PRODUCT_NAME := cm_codina
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I8160
PRODUCT_MANUFACTURER := samsung
