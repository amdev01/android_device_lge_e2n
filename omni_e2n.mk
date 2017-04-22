$(call inherit-product, device/lge/e2n/full_e2n.mk)

PRODUCT_NAME := omni_e2n

PRODUCT_BUILD_PROP_OVERRIDES += \
    PRODUCT_DEVICE="e2n" \
    PRODUCT_NAME="e2n_global_com" \
    BUILD_FINGERPRINT="lge/e2n_global_com/e2n:4.4.4/KTU84P.A1417598230/1417598230:user/release-keys" \
    PRIVATE_BUILD_DESC="e2n_global_com-user 4.4.4 KTU84P.A1417598230 1417598230 release-keys"
