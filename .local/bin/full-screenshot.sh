
#!/bin/sh
FILE=~/screenshots/screenshot-$(date +%Y%m%d-%H%M%S).png
grim  "$FILE"
notify-send "Full screenshot saved" "$FILE"
