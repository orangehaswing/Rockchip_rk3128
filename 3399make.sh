#!/bin/sh
#CROSS_COMPILE=aarch64-linux-gnu- make evb-rk3399_defconfig all 
#~/src/gerrit-rockchip/u-boot/tools/loaderimage --pack --uboot ./u-boot-dtb.bin rk3399_uboot.img
CROSS_COMPILE=/home/wing/proj/fireprime/u-boot/../prebuilts/gcc/linux-x86/aarch64/aarch64-linux-android-4.9/bin/aarch64-linux-android- make evb-rk3399_defconfig all
tools/loaderimage_armv8 --pack --uboot ./u-boot-dtb.bin rk3399_uboot.img
echo "IMG ready!"
