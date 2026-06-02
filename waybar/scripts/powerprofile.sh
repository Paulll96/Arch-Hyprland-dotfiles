#!/bin/bash

PROFILE=$(cat /sys/firmware/acpi/platform_profile)

case "$PROFILE" in
    quiet)
        echo '{"text":"󰌪","tooltip":"Quiet"}'
        ;;
    balanced)
        echo '{"text":"󰗑","tooltip":"Balanced"}'
        ;;
    performance)
        echo '{"text":"󰓅","tooltip":"Performance"}'
        ;;
esac
