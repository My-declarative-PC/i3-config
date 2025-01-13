#!/bin/bash

if xrandr | grep -q "LVDS-1 connected"; then
  xrandr --output VGA-1  --pos "0x0" --primary \
         --output LVDS-1 --pos "0x900"
elif xrandr | grep -q "HDMI-2 connected"; then
  xrandr --output HDMI-2 --pos "0x0" --primary \
         --output VGA-1  --pos "-1920x0"
fi
