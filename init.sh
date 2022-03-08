#!/bin/bash

echo "Installing dependencies"
sudo apt install ffmpeg
echo "Downloading video from https://moon.nasa.gov/moon-in-motion/moon-phases/"
mkdir temp
wget https://moon.nasa.gov/system/video_items/103_MoonPhases2021.m4v -P temp/
wget https://ssd.jpl.nasa.gov/ftp/eph/planets/bsp/de421.bsp -P temp/
mkdir out
echo "Finished"

