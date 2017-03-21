#!/bin/sh
#CROSS_COMPILE=aarch64-linux-gnu- make evb-rk3399_defconfig all 
#~/src/gerrit-rockchip/u-boot/tools/loaderimage --pack --uboot ./u-boot-dtb.bin rk3399_uboot.img

CROSS_COMPILE=/home/wing/proj/fireprime/u-boot/../prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi- make evb-rk3288_defconfig all
tools/loaderimage_armv7 --pack --uboot ./u-boot-dtb.bin rk3288_uboot.img
echo "IMG ready!"
