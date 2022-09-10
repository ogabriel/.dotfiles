#!/bin/sh

systemctl --user unmask pulseaudio
systemctl --user --now disable pipewire{,-pulse}.{socket,service}
systemctl --user --now enable pulseaudio.service pulseaudio.socket
