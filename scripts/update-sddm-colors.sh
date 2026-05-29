#!/bin/bash

CONF="/usr/share/sddm/themes/sddm-astronaut-theme/Themes/hyprland_kath.conf"
COLORS="$HOME/.config/rofi/colors.rasi"
WALL="$HOME/.cache/current-wallpaper.png"

PRIMARY=$(grep "primary:" "$COLORS" | head -1 | awk '{print $2}' | tr -d ';')
SURFACE=$(grep "surface:" "$COLORS" | head -1 | awk '{print $2}' | tr -d ';')
ON_SURFACE=$(grep "on-surface:" "$COLORS" | head -1 | awk '{print $2}' | tr -d ';')

sed -i \
-e "s|^Background=.*|Background=\"$WALL\"|" \
-e "s/^HeaderTextColor=.*/HeaderTextColor=\"$PRIMARY\"/" \
-e "s/^DateTextColor=.*/DateTextColor=\"$PRIMARY\"/" \
-e "s/^TimeTextColor=.*/TimeTextColor=\"$PRIMARY\"/" \
-e "s/^LoginButtonBackgroundColor=.*/LoginButtonBackgroundColor=\"$PRIMARY\"/" \
-e "s/^LoginButtonTextColor=.*/LoginButtonTextColor=\"$SURFACE\"/" \
-e "s/^FormBackgroundColor=.*/FormBackgroundColor=\"$SURFACE\"/" \
-e "s/^BackgroundColor=.*/BackgroundColor=\"$SURFACE\"/" \
-e "s/^LoginFieldTextColor=.*/LoginFieldTextColor=\"$ON_SURFACE\"/" \
-e "s/^PasswordFieldTextColor=.*/PasswordFieldTextColor=\"$ON_SURFACE\"/" \
-e "s/^UserIconColor=.*/UserIconColor=\"$PRIMARY\"/" \
-e "s/^PasswordIconColor=.*/PasswordIconColor=\"$PRIMARY\"/" \
-e "s/^SystemButtonsIconsColor=.*/SystemButtonsIconsColor=\"$PRIMARY\"/" \
-e "s/^SessionButtonTextColor=.*/SessionButtonTextColor=\"$PRIMARY\"/" \
-e "s/^VirtualKeyboardButtonTextColor=.*/VirtualKeyboardButtonTextColor=\"$PRIMARY\"/" \
-e "s/^WarningColor=.*/WarningColor=\"$PRIMARY\"/" \
"$CONF"
