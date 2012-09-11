# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/languages_full.mk)
# This is where we'd set a backup provider if we had one
#$(call inherit-product, device/sample/products/backup_overlay.mk)
$(call inherit-product, device/karbon/a9/a9.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full.mk)

# Galaxy S uses high-density artwork where available
PRODUCT_LOCALES += hdpi

# Discard inherited values and use our own instead.
PRODUCT_NAME := full_a9
PRODUCT_DEVICE := a9
PRODUCT_BRAND := Karbon
PRODUCT_MANUFACTURER := Karbon
PRODUCT_MODEL := Karbon A9
