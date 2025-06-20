#!/bin/bash
# Set volume for Audient iD14
SINK_NAME="alsa_output.usb-Audient_Audient_iD14-00.pro-output-0"
if pactl list sinks | grep -q "$SINK_NAME"; then
    pactl set-sink-volume "$SINK_NAME" 100%
    amixer -c 4 sset Speaker Front 100%
fi
