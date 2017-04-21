#!/bin/sh

#fix fn key
echo 2 > /sys/module/hid_apple/parameters/fnmode
#swap command/alt
echo 1 > /sys/module/hid_apple/parameters/swap_opt_cmd


#F13 = Insert
if [ -n "${DISPLAY+x}" ]; then
    echo "keycode 191 = Insert" | xmodmap -
fi


