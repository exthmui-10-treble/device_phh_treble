# Inherit some common Miku stuff
$(call inherit-product, vendor/miku/build/product/miku_product.mk)
-include vendor/miku/build/core/config.mk

# Kernel
TARGET_NO_KERNEL := true

# Maintaier
MIKU_MASTER := xiaoleGun

# OTA json
PRODUCT_SYSTEM_DEFAULT_PROPERTIES += \
	ro.system.ota.json_url=https://gist.githubusercontent.com/xiaoleGun/4e8f9c8473f6a5dd1e261d6edd345a61/raw/cca987a26558b157f1811a7971e1df4ccab6f793/ota.json

# Browser
ifeq ($(TARGET_PRODUCT), miku_treble_arm64_bgN)
PRODUCT_PACKAGES += \
    Chrome
else
PRODUCT_PACKAGES += \
    Via
endif
