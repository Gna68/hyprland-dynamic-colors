#!/bin/bash

WALLPAPER="$1"

if [ -z "$WALLPAPER" ]; then
    echo "Usage: wallchange.sh /path/to/wallpaper"
    exit 1
fi

swww img "$WALLPAPER"

wallust run "$WALLPAPER"

kitty @ set-colors -a ~/.config/kitty/kitty-themes/01-Wallust.conf
