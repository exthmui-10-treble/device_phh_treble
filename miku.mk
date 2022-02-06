# Inherit some common Miku stuff
$(call inherit-product, vendor/miku/build/product/miku_product.mk)
-include vendor/miku/build/core/config.mk

# Kernel
TARGET_NO_KERNEL := true

# Maintaier
MIKU_MASTER := xiaoleGun