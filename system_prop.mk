# Art
PRODUCT_PROPERTY_OVERRIDES += \
    dalvik.vm.dex2oat-flags=--no-watch-dog

# Audio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qc.sdk.audio.ssr=false \
    ro.qc.sdk.audio.fluencetype=none \
    persist.audio.fluence.voicecall=true \
    persist.audio.fluence.voicerec=false \
    persist.audio.fluence.speaker=true \
    tunnel.audio.encode = false \
    audio.offload.buffer.size.kb=32 \
    av.offload.enable=false \
    use.voice.path.for.pcm.voip=true

#CNE
PRODUCT_PROPERTY_OVERRIDES += \
    persist.cne.feature=1

# Display
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sf.lcd_density=240 \
    persist.hwc.mdpcomp.enable=true \
    ro.opengles.version=196608 \
    debug.sf.hw=1

# FM
PRODUCT_PROPERTY_OVERRIDES += \
    ro.fm.transmitter=false \
    audio.offload.gapless.enabled=true

# GPS
PRODUCT_PROPERTY_OVERRIDES += \
    persist.gps.qc_nlp_in_use=0 \
    ro.gps.agps_provider=1 \
    ro.qc.sdk.izat.premium_enabled=0 \
    ro.qc.sdk.izat.service_mask=0x0

# Media
PRODUCT_PROPERTY_OVERRIDES += \
    mm.enable.qcom_parser=168563 \
    media.aac_51_output_enabled=true

# NITZ
PRODUCT_PROPERTY_OVERRIDES += \
    persist.rild.nitz_plmn="" \
    persist.rild.nitz_long_ons_0="" \
    persist.rild.nitz_long_ons_1="" \
    persist.rild.nitz_long_ons_2="" \
    persist.rild.nitz_long_ons_3="" \
    persist.rild.nitz_short_ons_0="" \
    persist.rild.nitz_short_ons_1="" \
    persist.rild.nitz_short_ons_2="" \
    persist.rild.nitz_short_ons_3=""

# Qualcomm
PRODUCT_PROPERTY_OVERRIDES += \
    ro.qualcomm.cabl=0 \
    ro.vendor.extension_library=/vendor/lib/libqc-opt.so \

# Radio
PRODUCT_PROPERTY_OVERRIDES += \
    ro.use_data_netmgrd=true \
    persist.data.netmgrd.qos.enable=false \
    persist.radio.apm_sim_not_pwdn=1 \
    ro.telephony.default_network=9 \
    rild.libpath=/system/vendor/lib/libril-qc-qmi-1.so \
    telephony.lteOnCdmaDevice=0

# Reduce Background apps limit
PRODUCT_PROPERTY_OVERRIDES += \
    ro.sys.fw.bg_apps_limit=21

# Time
PRODUCT_PROPERTY_OVERRIDES += \
    persist.timed.enable=true
