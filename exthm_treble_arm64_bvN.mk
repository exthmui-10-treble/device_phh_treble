$(call inherit-product, vendor/vndk/vndk.mk)
$(call inherit-product, device/phh/treble/base.mk)
$(call inherit-product, vendor/exthm/config/common_full_phone.mk)

include build/make/target/product/aosp_arm64_ab.mk

PRODUCT_DEVICE := exthm_treble_arm64_ab
PRODUCT_MODEL := exTHmUI GSI on ARM64
PRODUCT_NAME := exthm_treble_arm64_bvN
PRODUCT_BRAND := google
PRODUCT_SYSTEM_BRAND := google

PRODUCT_CHARACTERISTICS := device

PRODUCT_ENFORCE_ARTIFACT_PATH_REQUIREMENTS :=

# PHH "secure"
PRODUCT_COPY_FILES += \
    device/phh/treble/empty:$(TARGET_COPY_OUT_SYSTEM)/etc/phh-secure

# Faceunlock
TARGET_FACE_UNLOCK := true
