#!/bin/sh
CROSS_COMPILE=aarch64-linux-gnu- CFLAGS='-gdwarf-3' make evb-rk3399_defconfig all -j8 
cp rk3399tag.bin spl_tag.bin
cat spl/u-boot-spl.bin >> spl_tag.bin
tools/mkimage -n rk3399 -T rksd -d spl_tag.bin  spl_idb.img
cp board/rockchip/evb_rk3399/fit_spl_atf.its fit4spl.its
tools/mkimage -f fit4spl.its -E rk3399_bl3x.itb
echo "IMG ready!"
