#!/bin/sh
CROSS_COMPILE=/home/wing/proj/fireprime/u-boot/../prebuilts/gcc/linux-x86/arm/arm-eabi-4.8/bin/arm-eabi- make evb-rk3128_defconfig all
tools/loaderimage_armv7 --pack --uboot ./u-boot-dtb.bin rk3128_uboot.img
echo "IMG ready!"
tools/mkimage -n rk3188 -T rksd -d spl/u-boot-spl-dtb.bin u-boot.out
cat u-boot-dtb.bin >>u-boot.out
cp u-boot.out ~/u-boot-next/
echo "spl file ready!"
