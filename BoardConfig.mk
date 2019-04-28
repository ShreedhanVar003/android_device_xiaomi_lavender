DEVICE_PATH := device/xiaomi/lavender
BOARD_VENDOR := xiaomi

# Security patch level
VENDOR_SECURITY_PATCH := 2021-10-01

# HIDL
DEVICE_MANIFEST_FILE := $(DEVICE_PATH)/manifest.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.atrace@1.0-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.cas@1.1-service.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/android.hardware.gnss@2.0-service-qti.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/manifest_android.hardware.drm@1.2-service.widevine.xml
DEVICE_MANIFEST_FILE += $(DEVICE_PATH)/vendor.qti.gnss@3.0-service.xml
DEVICE_MATRIX_FILE := $(DEVICE_PATH)/compatibility_matrix.xml
DEVICE_FRAMEWORK_COMPATIBILITY_MATRIX_FILE := $(DEVICE_PATH)/framework_compatibility_matrix.xml

# Properties
TARGET_ODM_PROP += $(DEVICE_PATH)/odm.prop
TARGET_PRODUCT_PROP += $(DEVICE_PATH)/product.prop
TARGET_SYSTEM_PROP += $(DEVICE_PATH)/system.prop
TARGET_VENDOR_PROP += $(DEVICE_PATH)/vendor.prop

# Releasetools
TARGET_RELEASETOOLS_EXTENSIONS := $(DEVICE_PATH)

# Verified Boot
BOARD_AVB_ENABLE := true
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --set_hashtree_disabled_flag
BOARD_AVB_MAKE_VBMETA_IMAGE_ARGS += --flags 3
BOARD_AVB_RECOVERY_KEY_PATH := external/avb/test/data/testkey_rsa2048.pem
BOARD_AVB_RECOVERY_ALGORITHM := SHA256_RSA2048
BOARD_AVB_RECOVERY_ROLLBACK_INDEX := $(PLATFORM_SECURITY_PATCH_TIMESTAMP)
BOARD_AVB_RECOVERY_ROLLBACK_INDEX_LOCATION := 1

-include vendor/xiaomi/lavender/BoardConfigVendor.mk
