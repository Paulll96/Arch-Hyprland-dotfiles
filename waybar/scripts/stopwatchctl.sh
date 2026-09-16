#!/bin/bash

STATE="$HOME/.cache/waybar_stopwatch"

if [[ ! -f "$STATE" ]]; then
    echo "0 0 0" > "$STATE"
fi

read running start elapsed < "$STATE"

case "$1" in

toggle)

    if [[ "$running" -eq 0 ]]; then

        echo "1 $(date +%s) $elapsed" > "$STATE"

    else

        now=$(date +%s)
        elapsed=$((elapsed + now - start))

        echo "0 0 $elapsed" > "$STATE"

    fi
;;

reset)

    echo "0 0 0" > "$STATE"

;;

esac
