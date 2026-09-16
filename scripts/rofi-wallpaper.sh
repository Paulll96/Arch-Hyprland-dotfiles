#!/bin/bash

WALLDIR="$HOME/Pictures/wallpapers"
THUMBDIR="$HOME/.cache/wallpaper-thumbs"

choice=$(for img in "$WALLDIR"/*; do
    name=$(basename "$img")
    thumb="$THUMBDIR/$name.png"

    if [ ! -f "$thumb" ]; then
     magick "$img" \
    -resize 320x180^ \
    -gravity center \
    -extent 320x180 \
    "$thumb"
    fi

    echo -en "$name\0icon\x1f$thumb\n"
done| rofi -dmenu \
    -show-icons \
    -theme ~/.config/rofi/themes/wallpaper.rasi
    -i \
    -p "Wallpaper")

[ -z "$choice" ] && exit

bash -ic "walltheme '$WALLDIR/$choice'"
