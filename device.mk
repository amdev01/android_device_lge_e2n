# Ramdisk
PRODUCT_PACKAGES += \
    fstab.e2n \
    init.betae.rc \
    init.class_main.sh \
    init.e2n.rc \
    init.e2n_product.rc \
    init.lge.cmm.usb.sh \
    init.lge.sensors.rc \
    init.lge.svelte.rc \
    init.lge.usb.rc \
    init.lge.usb.sh \
    init.mdm.sh \
    init.qcom.class_core.sh \
    init.qcom.early_boot.sh \
    init.qcom.rc \
    init.qcom.sh \
    init.qcom.ssr.sh \
    init.qcom.syspart_fixup.sh \
    init.target.rc \
    set_emmc_size.sh \
    ueventd.e2n.rc

# Offmode Charging
PRODUCT_PACKAGES += \
    charger_res_e2n \
    charger_e2n

# Wifi
PRODUCT_PACKAGES += \
    hostapd \
    hostapd_default.conf \
    libwcnss_qmi \
    libwpa_client \
    wcnss_service \
    wpa_supplicant

PRODUCT_COPY_FILES += \
    device/lge/e2n/wcnss/WCNSS_cfg.dat:system/etc/firmware/wlan/prima/WCNSS_cfg.dat \
    device/lge/e2n/wcnss/WCNSS_qcom_cfg.ini:system/etc/wifi/WCNSS_qcom_cfg.ini \
    device/lge/e2n/wcnss/WCNSS_qcom_wlan_nv.bin:system/etc/firmware/wlan/prima/WCNSS_qcom_wlan_nv.bin \
		device/lge/e2n/wcnss/p2p_supplicant.conf:system/etc/wifi/p2p_supplicant.conf \
    device/lge/e2n/wcnss/p2p_supplicant_overlay.conf:system/etc/wifi/p2p_supplicant_overlay.conf \
		device/lge/e2n/wcnss/wpa_supplicant.conf:system/etc/wifi/wpa_supplicant.conf \
    device/lge/e2n/wcnss/wpa_supplicant_overlay.conf:system/etc/wifi/wpa_supplicant_overlay.conf
