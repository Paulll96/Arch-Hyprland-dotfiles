#!/bin/bash

STATE="$HOME/.cache/waybar_stopwatch"

# Initialize if missing
if [[ ! -f "$STATE" ]]; then
    echo "0 0 0" > "$STATE"
fi

read running start elapsed < "$STATE"

if [[ "$running" -eq 1 ]]; then
    now=$(date +%s)
    elapsed=$((elapsed + now - start))
fi

printf '{"text":"⏱ %02d:%02d:%02d"}\n' \
    $((elapsed/3600)) \
    $(((elapsed%3600)/60)) \
    $((elapsed%60))
