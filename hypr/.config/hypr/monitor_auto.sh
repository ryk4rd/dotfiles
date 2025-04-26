#!/bin/bash

export XDG_RUNTIME_DIR="/run/user/$(id -u marcus)"

# Query monitors in JSON
MONITORS=$(hyprctl monitors -j)

# Check if DP-2 exists and is active
EXTERNAL_CONNECTED=$(echo "$MONITORS" | jq '.[] | select(.name == "DP-2" and .disabled == false)')

if [[ -n "$EXTERNAL_CONNECTED" ]]; then
    # External monitor active: disable laptop screen
    hyprctl keyword monitor "eDP-1,disable"
    hyprctl keyword monitor "DP-2,3440x1440@180,auto,1.25"
else
    # External monitor not active: enable laptop screen
    hyprctl keyword monitor "eDP-1,preferred,auto,2"
fi

