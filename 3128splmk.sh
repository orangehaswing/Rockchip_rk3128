#!/bin/sh
tools/mkimage -n rk3288 -T rksd -d spl/u-boot-spl-dtb.bin out
cat u-boot-dtb.bin >>out
cp out ~/u-boot-next/
echo "IMG ready!"
#sudo upgrade_tool db  /home/wing/u-boot-next/tools/rk_tools/bin/rk31/RK3288UbootLoader_V2.30.06.bin
#sudo upgrade_tool wl 64 u-boot.out
#sudo upgrade_tool rd
