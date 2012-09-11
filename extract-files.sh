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
adb pull /system/bin/wl ../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/rild ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/vold ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin
adb pull /system/bin/bluetoothd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# rmt_storage
adb pull /system/bin/rmt_storage ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bin

# etc/firmware
adb pull /system/etc/firmware/yamato_pfp.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/yamato_pm4.fw ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/brcm_bt.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/wifimac ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware
adb pull /system/etc/firmware/nvram_bcm4330b2.txt ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/etc/firmware

# Alleged WiFi
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

adb pull /system/lib/libacc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

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
adb pull /system/usr/keylayout/7k_handset.kl ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/usr/keylayout

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

# Pull Opencore libs
adb pull /system/lib/libopencorehw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_author.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_common.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_downloadreg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_download.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4localreg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_mp4local.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_net_support.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_player.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtspreg.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libopencore_rtsp.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Shared libs
adb pull /system/lib/libomx_amrenc_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_amrdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_avcdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_mp3dec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_m4vdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libomx_aacdec_sharedlibrary.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

# Stagefright
adb pull /system/lib/libstagefright_enc_common.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_avc_common.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_color_conversion.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefrighthw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_amrnb_common.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_omx.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib
adb pull /system/lib/libstagefright_foundation.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/lib

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g > ../../../vendor/karbon/$DEVICE/$DEVICE-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project \\
# \\
# Licensed under the Apache License, Version 2.0 (the "License"); \\
# you may not use this file except in compliance with the License. \\
# You may obtain a copy of the License at: \\
# \\
#      http://www.apache.org/licenses/LICENSE-2.0 \\
# \\
# Unless required by applicable law or agreed to in writing, software \\
# distributed under the License is distributed on an "AS IS" BASIS, \\
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. \\
# See the License for the specific language governing permissions and \\
# limitations under the License.: \\

# This file is generated by device/karbon/__DEVICE__/extract-files.sh - DO NOT EDIT \\

# All the blobs necessary for a9
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/bin/qmuxd:/system/bin/qmuxd \\
	vendor/karbon/__DEVICE__/proprietary/bin/brcm_patchram_plus:/system/bin/brcm_patchram_plus \\
	vendor/karbon/__DEVICE__/proprietary/bin/wl:/system/bin/wl \\
	vendor/karbon/__DEVICE__/proprietary/bin/rild:/system/bin/rild \\
	vendor/karbon/__DEVICE__/proprietary/bin/vold:/system/bin/vold \\
	vendor/karbon/__DEVICE__/proprietary/bin/bluetoothd:/system/bin/bluetoothd \\
	vendor/karbon/__DEVICE__/proprietary/bin/rmt_storage:/system/bin/rmt_storage

# Firmwares: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/etc/firmware/yamato_pfp.fw:/system/etc/firmware/yamato_pfp.fw \\
	vendor/karbon/__DEVICE__/proprietary/etc/firmware/yamato_pm4.fw:/system/etc/firmware/yamato_pm4.fw \\
	vendor/karbon/__DEVICE__/proprietary/etc/firmware/brcm_bt.hcd:/system/etc/firmware/brcm_bt.hcd \\
	vendor/karbon/__DEVICE__/proprietary/etc/firmware/wifimac:/system/etc/firmware/wifimac \\
	vendor/karbon/__DEVICE__/proprietary/etc/firmware/nvram_bcm4330b2.txt:/system/etc/firmware/nvram_bcm4330b2.txt

# WiFi: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/etc/firmware/fw_bcm4330.bin:/system/etc/firmware/fw_bcm4330.bin \\
	vendor/karbon/__DEVICE__/proprietary/etc/firmware/fw_bcm4330_apsta.bin:/system/etc/firmware/fw_bcm4330_apsta.bin \\
	vendor/karbon/__DEVICE__/proprietary/etc/wifi/wpa_supplicant.conf:/system/etc/wifi/wpa_supplicant.conf

# Bluetooth: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/etc/bluetooth/blacklist.conf:/system/etc/bluetooth/blacklist.conf \\
	vendor/karbon/__DEVICE__/proprietary/etc/bluetooth/auto_pairing.conf:/system/etc/bluetooth/auto_pairing.conf \\
	vendor/karbon/__DEVICE__/proprietary/etc/bluetooth/audio.conf:/system/etc/bluetooth/audio.conf \\
	vendor/karbon/__DEVICE__/proprietary/etc/bluetooth/input.conf:/system/etc/bluetooth/input.conf

# etc: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/etc/gps.conf:/system/etc/gps.conf \\
	vendor/karbon/__DEVICE__/proprietary/etc/vold.fstab:/system/etc/vold.fstab \\
	vendor/karbon/__DEVICE__/proprietary/etc/dbus.conf:/system/etc/dbus.conf \\
	vendor/karbon/__DEVICE__/proprietary/etc/01_qcomm_omx.cfg:/system/etc/01_qcomm_omx.cfg \\
	vendor/karbon/__DEVICE__/proprietary/lib/libacc.so:/system/lib/libacc.so

# lib/egl: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/egl/egl.cfg:/system/lib/egl/egl.cfg \\
	vendor/karbon/__DEVICE__/proprietary/lib/egl/libEGL_adreno200.so:/system/lib/egl/libEGL_adreno200.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/egl/libGLES_android.so:/system/lib/egl/libGLES_android.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/egl/libGLESv1_CM_adreno200.so:/system/lib/egl/libGLESv1_CM_adreno200.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/egl/libGLESv2_adreno200.so:/system/lib/egl/libGLESv2_adreno200.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/egl/libq3dtools_adreno200.so:/system/lib/egl/libq3dtools_adreno200.so

# hw: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/hw/copybit.msm7k.so:/system/lib/hw/copybit.msm7k.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/hw/gps.default.so:/system/lib/hw/gps.default.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/hw/gralloc.default.so:/system/lib/hw/gralloc.default.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/hw/sensors.msm7k.so:/system/lib/hw/sensors.msm7k.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/hw/gralloc.msm7k.so:/system/lib/hw/gralloc.msm7k.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/hw/libloc_eng_v01.default.so:/system/lib/hw/libloc_eng_v01.default.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/hw/lights.msm7k.so:/system/lib/hw/lights.msm7k.so

# Audio: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libaudio.so:/system/lib/libaudio.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libaudioalsa.so:/system/lib/libaudioalsa.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libaudioeffect_jni.so:/system/lib/libaudioeffect_jni.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libaudioeq.so:/system/lib/libaudioeq.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libaudioflinger.so:/system/lib/libaudioflinger.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libaudiopolicy.so:/system/lib/libaudiopolicy.so

PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libauth.so:/system/lib/libauth.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libcm.so:/system/lib/libcm.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libdiag.so:/system/lib/libdiag.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libdl.so:/system/lib/libdl.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libdsm.so:/system/lib/libdsm.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libdss.so:/system/lib/libdss.so

PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libgsdi_exp.so:/system/lib/libgsdi_exp.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libgsl.so:/system/lib/libgsl.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libgstk_exp.so:/system/lib/libgstk_exp.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libmmgsdilib.so:/system/lib/libmmgsdilib.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libnv.so:/system/lib/libnv.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/liboem_rapi.so:/system/lib/liboem_rapi.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/liboncrpc.so:/system/lib/liboncrpc.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libpbmlib.so:/system/lib/libpbmlib.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libqmi.so:/system/lib/libqmi.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libqmiservices.so:/system/lib/libqmiservices.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libqueue.so:/system/lib/libqueue.so

# RIL: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libril.so:/system/lib/libril.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libril-qc-1.so:/system/lib/libril-qc-1.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libril-qcril-hook-oem.so:/system/lib/libril-qcril-hook-oem.so

# OpenSLES - Done: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOpenSLES.so:/system/lib/libOpenSLES.so \\

# libwms: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libwms.so:/system/lib/libwms.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libwmsts.so:/system/lib/libwmsts.so

# libloc: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libloc_api-rpc-qc.so:/system/lib/libloc_api-rpc-qc.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libloc_ext.so:/system/lib/libloc_ext.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libloc_ext_v01.so:/system/lib/libloc_ext_v01.so

# libmm: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libmmipl.so:/system/lib/libmmipl.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libmmjpeg.so:/system/lib/libmmjpeg.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libjpeg.so:/system/lib/libjpeg.so
# Camera: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libcamera.so:/system/lib/libcamera.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libcamera_client.so:/system/lib/libcamera_client.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libcameraservice.so:/system/lib/libcameraservice.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/liboemcamera.so:/system/lib/liboemcamera.so

# Keychars: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/usr/keychars/7x27a_kp.kcm.bin:/system/usr/keychars/7x27a_kp.kcm.bin \\
	vendor/karbon/__DEVICE__/proprietary/usr/keychars/qwerty2.kcm.bin:/system/usr/keychars/qwerty2.kcm.bin \\
	vendor/karbon/__DEVICE__/proprietary/usr/keychars/qwerty.kcm.bin:/system/usr/keychars/qwerty.kcm.bin \\
	vendor/karbon/__DEVICE__/proprietary/usr/keychars/surf_keypad.kcm.bin:/system/usr/keychars/surf_keypad.kcm.bin

# Keylayout: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/usr/keylayout/surf_keypad.kl:/system/usr/keylayout/surf_keypad.kl \\
	vendor/karbon/__DEVICE__/proprietary/usr/keylayout/AVRCP.kl:/system/usr/keylayout/AVRCP.kl \\
	vendor/karbon/__DEVICE__/proprietary/usr/keylayout/7x27a_kp.kl:/system/usr/keylayout/7x27a_kp.kl \\
	vendor/karbon/__DEVICE__/proprietary/usr/keylayout/qwerty.kl:/system/usr/keylayout/qwerty.kl \\
	vendor/karbon/__DEVICE__/proprietary/usr/keylayout/7k_handset.kl:/system/usr/keylayout/7k_handset.kl

# omx: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libmm-adspsvc.so:/system/lib/libmm-adspsvc.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxAacDec.so:/system/lib/libOmxAacDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxAacEnc.so:/system/lib/libOmxAacEnc.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxAdpcmDec.so:/system/lib/libOmxAdpcmDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxAmrDec.so:/system/lib/libOmxAmrDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxAmrEnc.so:/system/lib/libOmxAmrEnc.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxAmrRtpDec.so:/system/lib/libOmxAmrRtpDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxAmrwbDec.so:/system/lib/libOmxAmrwbDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxEvrcDec.so:/system/lib/libOmxEvrcDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxEvrcEnc.so:/system/lib/libOmxEvrcEnc.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxEvrcHwDec.so:/system/lib/libOmxEvrcHwDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxH264Dec.so:/system/lib/libOmxH264Dec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxMp3Dec.so:/system/lib/libOmxMp3Dec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxMpeg4Dec.so:/system/lib/libOmxMpeg4Dec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxOn2Dec.so:/system/lib/libOmxOn2Dec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxQcelp13Dec.so:/system/lib/libOmxQcelp13Dec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxQcelp13Enc.so:/system/lib/libOmxQcelp13Enc.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxQcelpHwDec.so:/system/lib/libOmxQcelpHwDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxVidEnc.so:/system/lib/libOmxVidEnc.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxVp8Dec.so:/system/lib/libOmxVp8Dec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxWmaDec.so:/system/lib/libOmxWmaDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxWmvDec.so:/system/lib/libOmxWmvDec.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libOmxrv9Dec.so:/system/lib/libOmxrv9Dec.so

# Pull Opencore libs: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencorehw.so:/system/lib/libopencorehw.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_author.so:/system/lib/libopencore_author.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_common.so:/system/lib/libopencore_common.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_downloadreg.so:/system/lib/libopencore_downloadreg.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_download.so:/system/lib/libopencore_download.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_mp4localreg.so:/system/lib/libopencore_mp4localreg.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_mp4local.so:/system/lib/libopencore_mp4local.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_net_support.so:/system/lib/libopencore_net_support.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_player.so:/system/lib/libopencore_player.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_rtspreg.so:/system/lib/libopencore_rtspreg.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libopencore_rtsp.so:/system/lib/libopencore_rtsp.so

# Shared libs: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libomx_amrenc_sharedlibrary.so:/system/lib/libomx_amrenc_sharedlibrary.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libomx_amrdec_sharedlibrary.so:/system/lib/libomx_amrdec_sharedlibrary.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libomx_avcdec_sharedlibrary.so:/system/lib/libomx_avcdec_sharedlibrary.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libomx_mp3dec_sharedlibrary.so:/system/lib/libomx_mp3dec_sharedlibrary.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libomx_m4vdec_sharedlibrary.so:/system/lib/libomx_m4vdec_sharedlibrary.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libomx_sharedlibrary.so:/system/lib/libomx_sharedlibrary.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libomx_aacdec_sharedlibrary.so:/system/lib/libomx_aacdec_sharedlibrary.so

# Stagefright: \\
PRODUCT_COPY_FILES += \\
	vendor/karbon/__DEVICE__/proprietary/lib/libstagefright_enc_common.so:/system/lib/libstagefright_enc_common.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libstagefright_avc_common.so:/system/lib/libstagefright_avc_common.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libstagefright_color_conversion.so:/system/lib/libstagefright_color_conversion.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libstagefrighthw.so:/system/lib/libstagefrighthw.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libstagefright.so:/system/lib/libstagefright.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libstagefright_amrnb_common.so:/system/lib/libstagefright_amrnb_common.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libstagefright_omx.so:/system/lib/libstagefright_omx.so \\
	vendor/karbon/__DEVICE__/proprietary/lib/libstagefright_foundation.so:/system/lib/libstagefright_foundation.so
EOF

./setup-makefiles.sh
