#!/system/bin/sh
# Do NOT assume where your module will be located.
# ALWAYS use $MODDIR if you need to know where this script
# and module is placed.
# This will make sure your module will still work
# if Magisk change its mount point in the future
MODDIR=${0%/*}

# This script will be executed in late_start service mode

setenforce 0

echo 0 > /sys/module/subsystem_restart/parameters/enable_ramdumps
echo 0 > /sys/module/subsystem_restart/parameters/enable_mini_ramdumps

echo 0 > /sys/block/sda/queue/iostats

echo 0 > /proc/sys/kernel/sched_boost

sleep 30
sh /system/bin/845
sleep 5
sh /system/bin/845
