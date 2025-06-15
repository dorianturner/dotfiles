#!/usr/bin/env bash

WALLPAPER_DIR="/etc/nixos/system/wayland/wallpaper/"
MONITOR="eDP-1"
TMP_CONFIG="/tmp/hyprpaper.conf"

# Pick a random wallpaper
WALLPAPER=$(find "$WALLPAPER_DIR" -type f | shuf -n 1)

# Generate temporary hyprpaper config
cat > "$TMP_CONFIG" <<EOF
preload = $WALLPAPER
wallpaper = $MONITOR,$WALLPAPER
EOF

# Kill existing hyprpaper if running
pkill hyprpaper

# Start hyprpaper with new config
hyprpaper -c "$TMP_CONFIG" &

