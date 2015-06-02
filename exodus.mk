# Inherit some common stuff.
$(call inherit-product, vendor/exodus/config/common_full_phone.mk)

# Enhanced NFC
$(call inherit-product, vendor/exodus/config/nfc_enhanced.mk)

DEVICE_PACKAGE_OVERLAYS += device/motorola/qcom-common/overlay-cm

# Media
PRODUCT_COPY_FILES += \
    device/motorola/msm8960-common/config/media_codecs.xml:system/etc/media_codecs.xml \
    frameworks/av/media/libstagefright/data/media_codecs_ffmpeg.xml:system/etc/media_codecs_ffmpeg.xml

# Boot animation
TARGET_SCREEN_WIDTH := 720
TARGET_SCREEN_HEIGHT := 1280

PRODUCT_NAME := exodus_xt926
TARGET_VENDOR_PRODUCT_NAME := XT926_verizon
TARGET_VENDOR_DEVICE_NAME := vanquish

$(call inherit-product, device/motorola/xt926/full_xt926.mk)

PRODUCT_BUILD_PROP_OVERRIDES += \
    BUILD_FINGERPRINT=motorola/XT926_verizon/vanquish:4.4.2/KDA20.62-15.1/15:user/release-keys \
    PRIVATE_BUILD_DESC="vanquish_vzw-user 4.4.2 KDA20.62-15.1 15 release-keys"
