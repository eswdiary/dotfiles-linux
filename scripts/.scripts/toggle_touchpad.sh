#!/bin/bash

DEVICE="ELAN1203:00 04F3:307A Touchpad"
STATE=$(xinput list-props "$DEVICE" | grep "Device Enabled" | awk '{print $NF}')

if [ "$STATE" -eq 1 ]; then
    xinput disable "$DEVICE"
    notify-send "Touchpad disabled"
else
    xinput enable "$DEVICE"
    notify-send "Touchpad enabled"
fi
