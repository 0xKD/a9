#!/bin/sh

DEVICE=a9
MANUFACTURER=karbon

# Creating directories
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/app
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wifi
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/bluetooth
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keychars
mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keylayout


# Bins
adb pull /system/bin/qmuxd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/brcm_patchram_plus ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/wl.. ../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# etc/firmware
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/brcm_bt.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/wifimac ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvram_bcm4330b2.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/fw_bcm4330.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/fw_bcm4330_apsta.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware

# WiFi
adb pull /system/etc/wifi/wpa_supplicant.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/wifi
 
# Bluetooth
adb pull /system/etc/bluetooth/blacklist.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/bluetooth
adb pull /system/etc/bluetooth/auto_pairing.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/bluetooth
adb pull /system/etc/bluetooth/audio.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/bluetooth
adb pull /system/etc/bluetooth/input.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/bluetooth

# Init scripts
adb pull /system/etc/init.goldfish.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/init.qcom.wifi.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/init.qcom.bt.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/init.qcom.fm.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/init.qcom.coex.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/init.qcom.post_boot.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/init.qcom.composition_type.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/init.qcom.sdio.sh ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc


# etc
adb pull /system/etc/gps.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/vold.fstab ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/dbus.conf ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc
adb pull /system/etc/01_qcomm_omx.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc

# lib/egl
adb pull /system/lib/egl/egl.cfg ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libEGL_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLES_android.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv1_CM_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libGLESv2_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl
adb pull /system/lib/egl/libq3dtools_adreno200.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/egl

# hw
adb pull /system/lib/hw/copybit.msm7k.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gps.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gralloc.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/sensors.msm7k.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/gralloc.msm7k.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/libloc_eng_v01.default.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw
adb pull /system/lib/hw/lights.msm7k.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib/hw

# Audio
adb pull /system/lib/libaudio.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioalsa.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioeffect_jni.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioeq.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudioflinger.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libaudiopolicy.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

adb pull /system/lib/libauth.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdiag.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdsm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libdss.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

adb pull /system/lib/libgsdi_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgsl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libgstk_exp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmgsdilib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libnv.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboem_rapi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboncrpc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libpbmlib.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmi.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqmiservices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libqueue.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# RIL
adb pull /system/lib/libril.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libril-qc-1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libril-qcril-hook-oem.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# OpenSLES - Done
adb pull /system/lib/libOpenSLES.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# libwms
adb pull /system/lib/libwms.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libwmsts.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# libloc
adb pull /system/lib/libloc_api-rpc-qc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libloc_ext.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libloc_ext_v01.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# libmm
adb pull /system/lib/libmmipl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libmmjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libjpeg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Camera
adb pull /system/lib/libcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcamera_client.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libcameraservice.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/liboemcamera.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Keychars
adb pull /system/usr/keychars/7x27a_kp.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keychars
adb pull /system/usr/keychars/qwerty2.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keychars
adb pull /system/usr/keychars/qwerty.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keychars
adb pull /system/usr/keychars/surf_keypad.kcm.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keychars

# Keylayout
adb pull /system/usr/keylayout/surf_keypad.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keylayout
adb pull /system/usr/keylayout/AVRCP.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keylayout
adb pull /system/usr/keylayout/7x27a_kp.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keylayout
adb pull /system/usr/keylayout/qwerty.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keylayout
adb pull /system/usr/keylayout7k_handset.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keylayout

# omx
adb pull /system/lib/libmm-adspsvc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAacEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAdpcmDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrRtpDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxAmrwbDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxCore.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxEvrcHwDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxH264Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMp3Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxMpeg4Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxOn2Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelp13Enc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxQcelpHwDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxVidEnc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxVp8Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmaDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxWmvDec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libOmxrv9Dec.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib