#!/bin/bash
# Save as ~/.config/hypr/scripts/battery_monitor.sh
CACHE_FILE="$HOME/.cache/battery_alert"
if [ "$(cat /sys/class/power_supply/BAT1/status)" != "Discharging" ]; then
    rm -f "$CACHE_FILE"
    exit 0
fi
if [ ! -f "$CACHE_FILE" ] && [ "$(cat /sys/class/power_supply/BAT1/capacity)" -le 15 ]; then
    paplay /usr/share/sounds/Pop/stereo/alert/battery-low.oga
    touch "$CACHE_FILE"
elif [ "$(cat /sys/class/power_supply/BAT1/capacity)" -gt 15 ]; then
    rm -f "$CACHE_FILE"
fi
