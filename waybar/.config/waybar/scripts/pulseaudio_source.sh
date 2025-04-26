#!/bin/bash

ICON="🎙️"

get_default_source() {
    pactl get-default-source
}

list_sources() {
    pactl list short sources | awk '{print $2}'
}

set_source() {
    pactl set-default-source "$1"
}

case "$1" in
    click-right)
        CHOICE=$(list_sources | wofi --dmenu --prompt "Select source")
        [ -n "$CHOICE" ] && set_source "$CHOICE"
        ;;
    *)
        SOURCE=$(get_default_source)
        echo "{\"text\": \"$ICON $SOURCE\", \"tooltip\": \"Current input source: $SOURCE\"}"
        ;;
esac
