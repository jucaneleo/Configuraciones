#!/bin/zsh

xrandr --output DisplayPort-0 --off --output DisplayPort-1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output DisplayPort-2 --off --output HDMI-A-0 --off
xrandr -r 144
nitrogen --restore
picom -b
udiskie &
