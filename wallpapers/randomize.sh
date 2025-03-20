#!/bin/bash

WALLPAPER_DIR=~/.config/hypr/wallpapers/
# Finds basename of currently active wallpaper
CURRENT_PAPER=$(basename "$(hyprctl hyprpaper listactive)")
#Set WALLPAPER as a wallpaper path other than the currently active one
WALLPAPER=$(find "$WALLPAPER_DIR" -type f \( -name "wallpaper*" -a ! -name "$CURRENT_PAPER" \) | shuf -n 1)

hyprctl hyprpaper wallpaper "DP-3,$WALLPAPER"
