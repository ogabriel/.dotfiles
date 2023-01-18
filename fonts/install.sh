#!/bin/sh

wget -O temp/jetbrains_mono.zip https://download-cdn.jetbrains.com/fonts/JetBrainsMono-2.304.zip
unzip temp/jetbrains_mono.zip -d temp/jetbrains_mono

mv jetbrains_mono/fonts /usr/share/fonts/
