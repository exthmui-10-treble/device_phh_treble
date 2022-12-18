$(call inherit-product, vendor/vndk/vndk.mk)
$(call inherit-product, device/phh/treble/base.mk)
$(call inherit-product, vendor/exthm/config/common_full_phone.mk)

include build/make/target/product/aosp_arm64.mk

PRODUCT_DEVICE := exthm_treble_arm64_a
PRODUCT_MODEL := Huawei General System
PRODUCT_NAME := exthm_huawei_general_avN
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google

PRODUCT_CHARACTERISTICS := device

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS :=

# HwCamera2
PRODUCT_PACKAGES += \
    HwCamera2

# PHH "secure"
PRODUCT_COPY_FILES += \
    device/phh/treble/empty:$(TARGET_COPY_OUT_SYSTEM)/etc/phh-secure

# Faceunlock
TARGET_FACE_UNLOCK := true
