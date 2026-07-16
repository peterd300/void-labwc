#!/bin/sh
FILE=~/screenshots/screenshot-$(date +%Y%m%d-%H%M%S).png
grim -g "$(slurp)" "$FILE"
notify-send "Screenshot saved" "$FILE"
