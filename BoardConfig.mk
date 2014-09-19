# Vendor
BOARD_VENDOR := htc
TARGET_SPECIFIC_HEADER_PATH := device/htc/holiday/include

# Bootloader
TARGET_BOOTLOADER_BOARD_NAME := MSM8660
TARGET_NO_BOOTLOADER := true

# Platform
TARGET_BOARD_PLATFORM := msm8660
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

# Architecture
TARGET_ARCH := arm
TARGET_ARCH_VARIANT := armv7-a-neon
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi
TARGET_CPU_SMP := true
TARGET_CPU_VARIANT := scorpion

# Kernel
BOARD_KERNEL_BASE := 0x48000000
BOARD_PAGE_SIZE := 2048
BOARD_KERNEL_CMDLINE := console=ttyHSL0 androidboot.hardware=holiday no_console_suspend=1
TARGET_KERNEL_SOURCE := kernel/htc/holiday
TARGET_KERNEL_CONFIG := holiday_defconfig
TARGET_KERNEL_CUSTOM_TOOLCHAIN := linaro-4.9-cortex-a8

# QCOM
BOARD_USES_QCOM_HARDWARE := true
TARGET_QCOM_AUDIO_VARIANT := caf
TARGET_QCOM_MEDIA_VARIANT := holiday
TARGET_QCOM_DISPLAY_VARIANT := holiday

# Audio
BOARD_QCOM_TUNNEL_LPA_ENABLED := false
BOARD_USES_LEGACY_ALSA_AUDIO := true
BOARD_QCOM_VOIP_ENABLED := true
COMMON_GLOBAL_CFLAGS += -DHTC_ACOUSTIC_AUDIO 
COMMON_GLOBAL_CFLAGS += -DLEGACY_QCOM_VOICE

# Bluetooth
BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
BOARD_BLUEDROID_VENDOR_CONF := device/htc/holiday/bluetooth/vnd_msm8660.txt
BOARD_BLUETOOTH_BDROID_BUILDCFG_INCLUDE_DIR := device/htc/holiday/bluetooth

# GPS
BOARD_USES_QCOM_GPS := true
BOARD_VENDOR_QCOM_GPS_LOC_API_HARDWARE := holiday
BOARD_VENDOR_QCOM_GPS_LOC_API_AMSS_VERSION := 50000

# Graphics
TARGET_USES_ION := true
USE_OPENGL_RENDERER := true
TARGET_NO_HW_VSYNC := true
TARGET_DOESNT_USE_FENCE_SYNC := true
TARGET_RUNNING_WITHOUT_SYNC_FRAMEWORK := true
BOARD_EGL_NEEDS_FNW := true
TARGET_DISPLAY_INSECURE_MM_HEAP := true
BOARD_USE_MHEAP_SCREENSHOT := true
TARGET_ENABLE_AV_ENHANCEMENTS := true
TARGET_USES_POST_PROCESSING := true
TARGET_USES_C2D_COMPOSITION := true
NUM_FRAMEBUFFER_SURFACE_BUFFERS := 3
BOARD_EGL_CFG := device/htc/holiday/prebuilt/lib/egl/egl.cfg
COMMON_GLOBAL_CFLAGS += -DQCOM_NO_SECURE_PLAYBACK 
COMMON_GLOBAL_CFLAGS += -DREFRESH_RATE=60 
COMMON_GLOBAL_CFLAGS += -DHTC_RGBA_8888_OFFSET

# Camera
BOARD_USES_QCOM_LEGACY_CAM_PARAMS := true
BOARD_HAVE_HTC_FFC := true
TARGET_DISABLE_ARM_PIE := true
BOARD_NEEDS_MEMORYHEAPPMEM := true
USE_DEVICE_SPECIFIC_CAMERA := true
BOARD_USES_PMEM_CAMERA := true
COMMON_GLOBAL_CFLAGS += -DICS_CAMERA_BLOB 
COMMON_GLOBAL_CFLAGS += -DNO_UPDATE_PREVIEW 
COMMON_GLOBAL_CFLAGS += -DQCOM_BSP_CAMERA_ABI_HACK

# Wifi
BOARD_LEGACY_NL80211_STA_EVENTS := true
BOARD_HOSTAPD_DRIVER := NL80211
BOARD_HOSTAPD_PRIVATE_LIB := lib_driver_cmd_bcmdhd
BOARD_WLAN_DEVICE := bcmdhd
BOARD_WPA_SUPPLICANT_DRIVER := NL80211
BOARD_WPA_SUPPLICANT_PRIVATE_LIB := lib_driver_cmd_bcmdhd
WIFI_BAND := 802_11_ABG
WIFI_DRIVER_FW_PATH_STA := "/vendor/firmware/fw_bcmdhd.bin"
WIFI_DRIVER_FW_PATH_AP := "/vendor/firmware/fw_bcmdhd_apsta.bin"
WIFI_DRIVER_FW_PATH_P2P := "/vendor/firmware/fw_bcmdhd_p2p.bin"
WIFI_DRIVER_FW_PATH_PARAM := "/sys/module/bcmdhd/parameters/firmware_path"
WPA_SUPPLICANT_VERSION := VER_0_8_X

# FileSystem
TARGET_USERIMAGES_USE_EXT4 := true
BOARD_BOOTIMAGE_PARTITION_SIZE := 16777216
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 16776192
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 838860800
BOARD_USERDATAIMAGE_PARTITION_SIZE := 20044333056
BOARD_FLASH_BLOCK_SIZE := 131072
BOARD_VOLD_MAX_PARTITIONS := 37
BOARD_WANTS_EMMC_BOOT := true
BOARD_VOLD_MAX_PARTITIONS := 36

# Recovery
USE_SET_METADATA := true
TARGET_RECOVERY_PIXEL_FORMAT := "BGRA_8888"
TARGET_RECOVERY_FSTAB = device/htc/holiday/rootdir/fstab.holiday

# CWM
BOARD_HAS_NO_SELECT_BUTTON := true
BOARD_HAS_NO_MISC_PARTITION := true
BOARD_USE_CUSTOM_RECOVERY_FONT := \"roboto_15x24.h\"
BOARD_RECOVERY_SWIPE := true
BOARD_USES_MMCUTILS := true
BOARD_SDCARD_DEVICE_PRIMARY := /dev/block/mmcblk1p1
BOARD_SDCARD_DEVICE_SECONDARY := /dev/block/mmcblk1
BOARD_SDEXT_DEVICE := /dev/block/mmcblk1p2
TARGET_RECOVERY_LCD_BACKLIGHT_PATH := \"/sys/class/leds/lcd-backlight/brightness\"

# Misc
COMMON_GLOBAL_CFLAGS += -DHTCLOG

# Boot-animation
TARGET_BOOTANIMATION_PRELOAD := true
TARGET_BOOTANIMATION_TEXTURE_CACHE := true
TARGET_BOOTANIMATION_USE_RGB565 := true

# Lights
TARGET_PROVIDES_LIBLIGHT := true
TARGET_PROVIDES_LIBLIGHTS := true

# QCOM BSP
# TARGET_USES_QCOM_BSP := true
# COMMON_GLOBAL_CFLAGS += -DQCOM_BSP

# Flags
COMMON_GLOBAL_CFLAGS += -DQCOM_HARDWARE
COMMON_GLOBAL_CFLAGS += -DNEEDS_VECTORIMPL_SYMBOLS

# FB legacy
BOARD_EGL_NEEDS_LEGACY_FB := true

# OpenGL
# BOARD_EGL_WORKAROUND_BUG_10194508 := true

# Libril
BOARD_PROVIDES_LIBRIL := true

# SELinux
BOARD_SEPOLICY_DIRS += device/htc/holiday/sepolicy

BOARD_SEPOLICY_UNION += \
    app.te \
    bluetooth.te \
    device.te \
    domain.te \
    drmserver.te \
    file_contexts \
    files \
    file.te \
    hci_init.te \
    healthd.te \
    init.te \
    init_shell.te \
    keystore.te \
    kickstart.te \
    netd.te \
    mediaserver.te \
    rild.te \
    surfaceflinger.te \
    system.te \
    ueventd.te \
    untrusted_app.te \
    vold.te \
    wpa.te \
    wpa_socket.te

# Hardware tunables
BOARD_HARDWARE_CLASS := device/htc/holiday/cmhw

# Overlays
DEVICE_PACKAGE_OVERLAYS += device/htc/holiday/overlay

# USB
TARGET_USE_CUSTOM_LUN_FILE_PATH := "/sys/class/android_usb/android0/f_mass_storage/lun%d/file"
