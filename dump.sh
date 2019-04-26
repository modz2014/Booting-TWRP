#!/bin/bash


adb reboot bootloader

wait 5

##to change twrp.img file name to the same one you downloaded##

fastboot boot twrp.img


dd if=/dev/block/mmcblk0p15 of=/sdcard/boot.img
dd if=/dev/block/mmcblk0p16 of=/sdcard/recovery.img
dd if=/dev/block/mmcblk0p19 of=/sdcard/system.img
