#!/bin/sh

# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/common/generate-blob-scripts.sh - DO NOT EDIT

DEVICE=steelhead
MANUFACTURER=google

mkdir -p ../../../vendor/$MANUFACTURER/$DEVICE/proprietary
adb pull /system/vendor/bin/pvrsrvinit ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/pvrsrvinit
chmod 755 ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/pvrsrvinit
adb pull /system/vendor/firmware/sledadk_controller.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/sledadk_controller.bin
adb pull /system/vendor/firmware/smc_pa_wvdrm.ift ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/smc_pa_wvdrm.ift
adb pull /system/vendor/firmware/bcm4330.hcd ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/bcm4330.hcd
adb pull /system/vendor/firmware/ducati-m3.bin ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/ducati-m3.bin
adb pull /system/vendor/firmware/libpn544_fw.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpn544_fw.so
adb pull /system/vendor/etc/smc_normal_world_android_cfg.ini  ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/smc_normal_world_android_cfg.ini
adb pull /system/vendor/lib/drm/libdrmwvmplugin.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libdrmwvmplugin.so
# Maybe take out hwcomposer?
adb pull /system/vendor/lib/hw/hwcomposer.omap4.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/hwcomposer.omap4.so
###
adb pull /system/vendor/lib/libWVStreamControlAPI_L1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libWVStreamControlAPI_L1.so
adb pull /system/vendor/lib/libwvdrm_L1.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libwvdrm_L1.so
adb pull /system/vendor/lib/libwvm.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libwvm.so
adb pull /system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libEGL_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libGLESv2_POWERVR_SGX540_120.so
adb pull /system/vendor/lib/hw/gralloc.omap4.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/gralloc.omap4.so
adb pull /system/vendor/lib/libglslcompiler.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libglslcompiler.so
adb pull /system/vendor/lib/libIMGegl.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libIMGegl.so
adb pull /system/vendor/lib/libpvr2d.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpvr2d.so
adb pull /system/vendor/lib/libpvrANDROID_WSEGL.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libpvrANDROID_WSEGL.so
adb pull /system/vendor/lib/libPVRScopeServices.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libPVRScopeServices.so
adb pull /system/vendor/lib/libsrv_init.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsrv_init.so
adb pull /system/vendor/lib/libsrv_um.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libsrv_um.so
adb pull /system/vendor/lib/libusc.so ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/libusc.so

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/device-vendor-blobs.mk
# Copyright (C) 2010 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

# All the blobs necessary for steelhead, derived from maguro
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/pvrsrvinit:system/vendor/bin/pvrsrvinit \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/bcm4330.hcd:system/vendor/firmware/bcm4330.hcd \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/ducati-m3.bin:system/vendor/firmware/ducati-m3.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpn544_fw.so:system/vendor/firmware/libpn544_fw.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libEGL_POWERVR_SGX540_120.so:system/vendor/lib/egl/libEGL_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv1_CM_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv1_CM_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libGLESv2_POWERVR_SGX540_120.so:system/vendor/lib/egl/libGLESv2_POWERVR_SGX540_120.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/gralloc.omap4.so:system/vendor/lib/hw/gralloc.omap4.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libglslcompiler.so:system/vendor/lib/libglslcompiler.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libIMGegl.so:system/vendor/lib/libIMGegl.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvr2d.so:system/vendor/lib/libpvr2d.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libpvrANDROID_WSEGL.so:system/vendor/lib/libpvrANDROID_WSEGL.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libPVRScopeServices.so:system/vendor/lib/libPVRScopeServices.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_init.so:system/vendor/lib/libsrv_init.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libsrv_um.so:system/vendor/lib/libsrv_um.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libusc.so:system/vendor/lib/libusc.so

# Blobs unique to steelhead
PRODUCT_COPY_FILES += \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/sledadk_controller.bin:system/vendor/firmware/sledadk_controller.bin \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/smc_pa_wvdrm.ift:system/vendor/firmware/smc_pa_wvdrm.ift \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/smc_normal_world_android_cfg.ini:system/vendor/etc/smc_normal_world_android_cfg.ini \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libdrmwvmplugin.so:system/vendor/lib/drm/libdrmwvmplugin.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/hwcomposer.omap4.so:system/vendor/lib/hw/hwcomposer.omap4.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libWVStreamControlAPI_L1.so:system/vendor/lib/libWVStreamControlAPI_L1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwvdrm_L1.so:system/vendor/lib/libwvdrm_L1.so \\
    vendor/__MANUFACTURER__/__DEVICE__/proprietary/libwvm.so:system/vendor/lib/libwvm.so

EOF

(cat << EOF) | sed s/__DEVICE__/$DEVICE/g | sed s/__MANUFACTURER__/$MANUFACTURER/g > ../../../vendor/$MANUFACTURER/$DEVICE/proprietary/Android.mk
# Copyright (C) 2011 The Android Open Source Project
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This file is generated by device/__MANUFACTURER__/__DEVICE__/extract-files.sh - DO NOT EDIT

ifeq (\$(TARGET_DEVICE),steelhead)
LOCAL_PATH:=\$(call my-dir)

endif

EOF

./setup-makefiles.sh
