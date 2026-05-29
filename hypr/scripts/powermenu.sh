#!/bin/bash

chosen=$(printf "󰐥 Shutdown\n󰜉 Reboot\n󰤄 Suspend\n󰍃 Logout\n󰌾 Lock" | \
rofi -dmenu -i \
-theme ~/.config/rofi/themes/powermenu.rasi \
-theme-str 'inputbar { enabled: false; }')

case "$chosen" in
    "󰐥 Shutdown")
        systemctl poweroff
        ;;
    "󰜉 Reboot")
        systemctl reboot
        ;;
    "󰤄 Suspend")
    nohup hyprlock >/dev/null 2>&1 &
    sleep 1
    systemctl suspend
    ;;   
	"󰍃 Logout")
        hyprctl dispatch exit
        ;;
    "󰌾 Lock")
        hyprlock
        ;;
esac
