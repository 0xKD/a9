USE_CAMERA_STUB := true

# inherit from the proprietary version
-include vendor/karbon/a9/BoardConfigVendor.mk

QCOM_TARGET_PRODUCT := msm7627a
# Cam / BT


TARGET_NO_KERNEL := false
TARGET_NO_RECOVERY := false
TARGET_NO_BOOTLOADER := true
TARGET_NO_RADIOIMAGE := true

TARGET_BOARD_PLATFORM := msm7k
TARGET_CPU_ABI := armeabi-v7a
TARGET_CPU_ABI2 := armeabi

TARGET_BOOTLOADER_BOARD_NAME := 7x27
TARGET_BOARD_PLATFORM_GPU := qcom-adreno200

TARGET_BOOTLOADER_BOARD_NAME := a9
TARGET_RECOVERY_INITRC := device/karbon/a9/recovery.rc

# Kernel
TARGET_PREBUILT_KERNEL := device/karbon/a9/kernel

BOARD_HAVE_BLUETOOTH := true
BOARD_HAVE_BLUETOOTH_BCM := true
# GPU - Edit
BOARD_USES_QCOM_HARDWARE := true
BOARD_USES_ADRENO_200 := true

# From A70 - Edit
BOARD_USES_QCOM_LIBS := true
BOARD_USES_QCOM_LIBRPC := true

# Keymapping 
BOARD_CUSTOM_RECOVERY_KEYMAPPING := ../../device/karbon/a9/recovery_ui.c

BOARD_KERNEL_CMDLINE := androidboot.hardware=qcom loglevel=1
BOARD_KERNEL_BASE := 0x00200000
BOARD_KERNEL_PAGESIZE := 2048

# fix this up by examining /proc/mtd on a running device
BOARD_BOOTIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_RECOVERYIMAGE_PARTITION_SIZE := 0x00a00000
BOARD_SYSTEMIMAGE_PARTITION_SIZE := 0x0f800000
BOARD_USERDATAIMAGE_PARTITION_SIZE := 0x24fe0000
BOARD_FLASH_BLOCK_SIZE := 131072

#BOARD_HAS_NO_SELECT_BUTTON := true
# Use this flag if the board has a ext4 partition larger than 2gb
#BOARD_HAS_LARGE_FILESYSTEM := true
TARGET_OTA_ASSERT_DEVICE := a9
# From Geeksphone one
#DISPLAY_BUILD_NUMBER := true