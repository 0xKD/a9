$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)

ifeq ($(TARGET_PREBUILT_KERNEL),)
	LOCAL_KERNEL := device/karbon/a9/kernel
else
	LOCAL_KERNEL := $(TARGET_PREBUILT_KERNEL)
endif

PRODUCT_LOCALES += hdpi

# Board-specific init - Edit
PRODUCT_COPY_FILES += \
    device/karbon/a9/vold.fstab:system/etc/vold.fstab \
    device/karbon/a9/gps.conf:system/etc/gps.conf

PRODUCT_NAME := full_a9
PRODUCT_DEVICE := a9
PRODUCT_BRAND := karbon
PRODUCT_MANUFACTURER := Karbon
PRODUCT_MODEL := Karbon A9
	
# Install the features available on this device.


# Software permissions
PRODUCT_COPY_FILES += \
    frameworks/base/data/etc/android.software.sip.voip.xml:system/etc/permissions/android.software.sip.voip.xml \
    frameworks/base/data/etc/android.software.sip.xml:system/etc/permissions/android.software.sip.xml
	
$(call inherit-product-if-exists, vendor/karbon/a9/a9-vendor.mk)
