#!/usr/bin/env bash

IFS=$'\n'

if [ "$@" ]; then
    choice="$*"

    if [[ $choice == *"disable" ]]; then
        choice=$(echo $choice | sed 's/ disable//g')

        if swaymsg output $choice disable --quiet; then
            notify-send -t 2000 -r 2 -u low "Disabled: $choice"
        else
            notify-send -t 2000 -r 2 -u critical "Error disabling $choice"
        fi

    elif [[ $choice == *"enable" ]]; then
        choice=$(echo $choice | sed 's/ enable//g')

        if swaymsg output $choice enable --quiet; then
            notify-send -t 2000 -r 2 -u low "Enabled: $choice"
        else
            notify-send -t 2000 -r 2 -u critical "Error enabling $choice"
        fi
    fi
else
    echo -en "\x00prompt\x1fSelect display\n"
    for x in $(swaymsg -t get_outputs | jq -r '. | map(.name) | join("\n")' | sort -r); do
        echo "$x disable" | xargs
        echo "$x enable" | xargs
    done
fi
