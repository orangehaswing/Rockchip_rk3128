#!/bin/sh

~/src/upgrade_tool/upgrade_tool DB ./rk_tools/3399/rk3399miniloader_V040601_emmc100M_DDR200.bin
~/src/upgrade_tool/upgrade_tool WL 64 spl_idb.img
~/src/upgrade_tool/upgrade_tool WL 512 rk3399_bl3x.itb
#~/src/upgrade_tool/upgrade_tool WL 512 u-boot.bin
~/src/upgrade_tool/upgrade_tool RD
