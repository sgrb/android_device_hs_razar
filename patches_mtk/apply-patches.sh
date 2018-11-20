#!/bin/bash

set -ex

apply() {
    git reset --hard && git clean -fd && git apply $1
}

cd ../../../..
cd system/core
apply  ../../device/hs/razar/patches_mtk/system_core.patch
cd ../..
cd bionic
apply  ../device/hs/razar/patches_mtk/bionic.patch
cd ..
cd system/sepolicy
apply  ../../device/hs/razar/patches_mtk/system_sepolicy.patch
cd ../..
cd frameworks/av
apply  ../../device/hs/razar/patches_mtk/frameworks_av.patch
cd ..
cd native
apply  ../../device/hs/razar/patches_mtk/frameworks_native.patch
cd ..
cd base
apply  ../../device/hs/razar/patches_mtk/frameworks_base.patch
cd ..
cd opt/telephony
apply  ../../../device/hs/razar/patches_mtk/frameworks_opt_telephony.patch
cd ../../..
cd packages/apps/Snap
apply  ../../../device/hs/razar/patches_mtk/snap.patch
cd ..
cd FMRadio
apply  ../../../device/hs/razar/patches_mtk/fmradio.patch
cd ../../..
cd system/netd
apply  ../../device/hs/razar/patches_mtk/system_netd.patch
cd ../..
cd vendor/cmsdk
apply  ../../device/hs/razar/patches_mtk/vendor_cmsdk.patch
cd ../..

