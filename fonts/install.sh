#!/bin/sh

wget -O /tmp/jetbrains_mono.zip https://download-cdn.jetbrains.com/fonts/JetBrainsMono-2.304.zip
unzip /tmp/jetbrains_mono.zip -d /tmp/jetbrains_mono

sudo mv /tmp/jetbrains_mono/fonts /usr/share/fonts/
