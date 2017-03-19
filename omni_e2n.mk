# Inherit some common OMNI stuff.
#$(call inherit-product, vendor/omni/config/common_full_phone.mk)

# Inherit device configuration
$(call inherit-product, device/lge/e2n/device.mk)

## Device identifier. This must come after all inclusions
PRODUCT_DEVICE := e2n
PRODUCT_NAME := omni_e2n
PRODUCT_BRAND := lge
PRODUCT_MODEL := e2n
PRODUCT_MANUFACTURER := lge
