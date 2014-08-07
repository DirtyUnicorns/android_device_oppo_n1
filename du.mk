$(call inherit-product, device/oppo/n1/full_n1.mk)

# Inherit some common DU stuff
$(call inherit-product, vendor/du/config/gsm.mk)

# Inherit some common DU stuff.
$(call inherit-product, vendor/du/config/common.mk)

PRODUCT_NAME := du_n1
PRODUCT_DEVICE := n1
PRODUCT_GMS_CLIENTID_BASE := android-oppo

TARGET_VENDOR_PRODUCT_NAME := DU
TARGET_VENDOR_DEVICE_NAME := N1
