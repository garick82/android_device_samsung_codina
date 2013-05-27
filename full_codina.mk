PRODUCT_COPY_FILES := device/sample/etc/apns-full-conf.xml:system/etc/apns-conf.xml

$(call inherit-product, build/target/product/full_base_telephony.mk)

PRODUCT_NAME := full_codina
PRODUCT_DEVICE := codina
PRODUCT_BRAND := samsung
PRODUCT_MODEL := GT-I8160
PRODUCT_MANUFACTURER := samsung

$(call inherit-product, device/samsung/codina/device.mk)
