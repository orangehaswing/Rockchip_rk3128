#!/bin/sh

../../upgrade_tool/upgrade_tool UL ../../upgrade_tool/rk3399miniloader_V040601_emmc100M_DDR200.bin
../../upgrade_tool/upgrade_tool DI uboot uboot.img ../../upgrade_tool/parameter.txt
../../upgrade_tool/upgrade_tool RD
