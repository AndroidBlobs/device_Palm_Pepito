# Inherit from those products. Most specific first.
$(call inherit-product, $(SRC_TARGET_DIR)/product/core_64_bit.mk)
$(call inherit-product, $(SRC_TARGET_DIR)/product/full_base_telephony.mk)

# Inherit some common Lineage stuff
$(call inherit-product, vendor/lineage/config/common_full_phone.mk)

# Inherit from Pepito device
$(call inherit-product, $(LOCAL_PATH)/device.mk)

PRODUCT_BRAND := Palm
PRODUCT_DEVICE := Pepito
PRODUCT_MANUFACTURER := Palm
PRODUCT_NAME := lineage_Pepito
PRODUCT_MODEL := Pepito

PRODUCT_GMS_CLIENTID_BASE := android-Palm
TARGET_VENDOR := Palm
TARGET_VENDOR_PRODUCT_NAME := Pepito
PRODUCT_BUILD_PROP_OVERRIDES += PRIVATE_BUILD_DESC="Pepito-user 8.1.0 OPM1.171019.019 v1AMD-0 release-keys"

# Set BUILD_FINGERPRINT variable to be picked up by both system and vendor build.prop
BUILD_FINGERPRINT := Palm/PVG100/Pepito:8.1.0/OPM1.171019.019/v1AMD-0:user/release-keys
