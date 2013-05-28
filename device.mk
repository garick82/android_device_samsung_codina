LOCAL_PATH := device/samsung/codina
DEVICE_PACKAGE_OVERLAYS := $(LOCAL_PATH)/overlay

PRODUCT_AAPT_CONFIG := normal hdpi
PRODUCT_AAPT_PREF_CONFIG := hdpi

PRODUCT_TAGS += dalvik.gc.type-precise

PRODUCT_PACKAGES += \
    audio.primary.montblanc \
    audio.a2dp.default \
    libaudiohw_legacy

PRODUCT_COPY_FILES += \
    frameworks/native/data/etc/handheld_core_hardware.xml:system/etc/permissions/handheld_core_hardware.xml \
    frameworks/native/data/etc/android.hardware.bluetooth.xml:system/etc/permissions/android.hardware.bluetooth.xml \
    frameworks/native/data/etc/android.hardware.camera.autofocus.xml:system/etc/permissions/android.hardware.camera.autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.flash-autofocus.xml:system/etc/permissions/android.hardware.camera.flash-autofocus.xml \
    frameworks/native/data/etc/android.hardware.camera.front.xml:system/etc/permissions/android.hardware.camera.front.xml \
    frameworks/native/data/etc/android.hardware.location.gps.xml:system/etc/permissions/android.hardware.location.gps.xml \
    frameworks/native/data/etc/android.hardware.sensor.accelerometer.xml:system/etc/permissions/android.hardware.sensor.accelerometer.xml \
    frameworks/native/data/etc/android.hardware.sensor.compass.xml:system/etc/permissions/android.hardware.sensor.compass.xml \
    frameworks/native/data/etc/android.hardware.sensor.gyroscope.xml:system/etc/permissions/android.hardware.sensor.gyroscope.xml \
    frameworks/native/data/etc/android.hardware.sensor.proximity.xml:system/etc/permissions/android.hardware.sensor.proximity.xml \
    frameworks/native/data/etc/android.hardware.telephony.gsm.xml:system/etc/permissions/android.hardware.telephony.gsm.xml \
    frameworks/native/data/etc/android.hardware.touchscreen.multitouch.jazzhand.xml:system/etc/permissions/android.hardware.touchscreen.multitouch.jazzhand.xml \
    frameworks/native/data/etc/android.hardware.usb.accessory.xml:system/etc/permissions/android.hardware.usb.accessory.xml \
    frameworks/native/data/etc/android.hardware.usb.host.xml:system/etc/permissions/android.hardware.usb.host.xml \
    frameworks/native/data/etc/android.hardware.wifi.direct.xml:system/etc/permissions/android.hardware.wifi.direct.xml \
    frameworks/native/data/etc/android.hardware.wifi.xml:system/etc/permissions/android.hardware.wifi.xml \
    frameworks/native/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/native/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml

# Ramdisk
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/kernel:kernel \
    $(LOCAL_PATH)/prebuilt/root/default.prop:root/default.prop \
    $(LOCAL_PATH)/prebuilt/root/init.samsungcodina.rc:root/init.samsungcodina.rc \
    $(LOCAL_PATH)/prebuilt/root/init.samsungcodina.usb.rc:root/init.samsungcodina.usb.rc \
    $(LOCAL_PATH)/prebuilt/root/ueventd.samsungcodina.rc:root/ueventd.samsungcodina.rc \
    $(LOCAL_PATH)/prebuilt/root/fstab.samsungcodina:root/fstab.samsungcodina \
    $(LOCAL_PATH)/prebuilt/root/lib/modules/j4fs.ko:root/lib/modules/j4fs.ko \
    $(LOCAL_PATH)/prebuilt/root/lib/modules/param.ko:root/lib/modules/param.ko

# Display
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/lib/hw/hwcomposer.montblanc.so:system/lib/hw/hwcomposer.montblanc.so \
    $(LOCAL_PATH)/prebuilt/system/lib/hw/gralloc.montblanc.so:system/lib/hw/gralloc.montblanc.so	

# Mali-400
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/lib/egl/libEGL_mali.so:system/lib/egl/libEGL_mali.so \
    $(LOCAL_PATH)/prebuilt/system/lib/egl/libGLESv1_CM_mali.so:system/lib/egl/libGLESv1_CM_mali.so \
    $(LOCAL_PATH)/prebuilt/system/lib/egl/libGLESv2_mali.so:system/lib/egl/libGLESv2_mali.so \
    $(LOCAL_PATH)/prebuilt/system/lib/libMali.so:system/lib/libMali.so \
    $(LOCAL_PATH)/prebuilt/system/lib/libUMP.so:system/lib/libUMP.so

# Wifi
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/configs/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf

PRODUCT_PROPERTY_OVERRIDES += \
    wifi.interface=wlan0 \
    wifi.supplicant_scan_interval=15

# Misc
PRODUCT_COPY_FILES += \
    $(LOCAL_PATH)/prebuilt/system/etc/vold.fstab:system/etc/vold.fstab \
    $(LOCAL_PATH)/prebuilt/system/etc/media_codecs.xml:system/etc/media_codecs.xml \
    $(LOCAL_PATH)/prebuilt/system/etc/media_profiles.xml:system/etc/media_profiles.xml

$(call inherit-product, frameworks/native/build/phone-xhdpi-1024-dalvik-heap.mk)
