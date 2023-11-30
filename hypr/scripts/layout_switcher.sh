#!/bin/sh

KEYBOARDS=$(hyprctl devices | grep -i keyboard | awk '{print $1}')

for KEYBOARD in $KEYBOARDS; do
    hyprctl switchxkblayout $KEYBOARD next
done

notify-send "Keyboard layout switched"
