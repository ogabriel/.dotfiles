#!/bin/sh

# install pipewire
sudo add-apt-repository ppa:pipewire-debian/pipewire-upstream
sudo apt update
sudo apt install pipewire
sudo apt install libspa-0.2-bluetooth
sudo apt install pipewire-audio-client-libraries

# disable pulseaudio and enable pipewire
systemctl --user daemon-reload
systemctl --user --now disable pulseaudio.service pulseaudio.socket
systemctl --user mask pulseaudio
systemctl --user --now enable pipewire-media-session.service

# remove things not needed
sudo apt remove ofono
sudo apt remove ofono-phonesim

# copy configs
sudo cp ~/.dotfiles/bluetooth/bluez-hardware.conf /usr/share/spa2.2/bluez5/
sudo cp ~/.dotfiles/bluetooth/bluez-monitor.conf /usr/share/pipewire/media-session.d/bluez-monitor.conf
