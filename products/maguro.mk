# Inherit AOSP device configuration for maguro.
$(call inherit-product, device/samsung/maguro/full_maguro.mk)

# Inherit common product files.
$(call inherit-product, vendor/DEMENTED-Droid/products/common.mk)

# Setup device specific product configuration.
PRODUCT_NAME := DEMENTED_Droid_maguro
PRODUCT_BRAND := google
PRODUCT_DEVICE := maguro
PRODUCT_MODEL := Galaxy Nexus
PRODUCT_MANUFACTURER := samsung

PRODUCT_BUILD_PROP_OVERRIDES := PRODUCT_NAME=yakju BUILD_FINGERPRINT=google/yakju/maguro:4.2.2/JDQ39/573038:user/release-keys PRIVATE_BUILD_DESC="yakju-user 4.2.2 JDQ39 573038 release-keys" BUILD_NUMBER=573038

# Inherit common build.prop overrides
-include vendor/DEMENTED-Droid/products/common_versions.mk

# DEMENTED-Droid SPEED FREEK init.d and build.prop tweaks
include vendor/DEMENTED-Droid/products/speed_freek.mk

# Copy maguro specific prebuilt files
PRODUCT_COPY_FILES +=  \
    vendor/DEMENTED-Droid/proprietary/tuna/app/Thinkfree.apk:system/app/Thinkfree.apk \
    vendor/DEMENTED-Droid/proprietary/tuna/media/bootanimation.zip:system/media/bootanimation.zip \
    vendor/DEMENTED-Droid/proprietary/tuna/media/audio/notifications/Nexus.mp3:system/media/audio/notifications/Nexus.mp3 \
    vendor/DEMENTED-Droid/proprietary/tuna/media/audio/notifications/Simple_High.mp3:system/media/audio/notifications/Simple_High.mp3 \
    vendor/DEMENTED-Droid/proprietary/tuna/media/audio/ringtones/AIB2.m4a:system/media/audio/ringtones/AIB2.m4a \
    vendor/DEMENTED-Droid/proprietary/tuna/media/audio/ringtones/Halo.m4a:system/media/audio/ringtones/Halo.m4a \
    vendor/DEMENTED-Droid/proprietary/common/app/Wallet.apk:system/app/Wallet.apk \
    vendor/DEMENTED-Droid/proprietary/maguro/vendor/etc/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini 

# Inherit media effect blobs
-include vendor/DEMENTED-Droid/products/common_media_effects.mk

# Inherit Face lock security blobs
-include vendor/DEMENTED-Droid/products/common_facelock.mk

# Inherit drm blobs
-include vendor/DEMENTED-Droid/products/common_drm_phone.mk

# Inherit speech recognition blobs
-include vendor/DEMENTED-Droid/products/common_speech_recognition.mk
