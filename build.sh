#!/bin/bash

# Todo: run init and clean as needed
echo "Step 1/4: Trim"
ffmpeg -i temp/103_MoonPhases2021.m4v -vf trim=09.800:33.000 -y temp/trimmed.mkv
echo "Step 2/4: Threshold"
ffmpeg -i temp/trimmed.mkv -f lavfi -i color=#777777:s=1280x720 -f lavfi -i color=black:s=1280x720 -f lavfi -i color=white:s=1280x720 -filter_complex threshold -y temp/threshold.mkv
echo "Step 3/4: Scale"
ffmpeg -i temp/threshold.mkv -vf scale=w=170:h=96 -y temp/scaled.mkv
echo "Step 4/4: Save as individual files"
mkdir out
ffmpeg -i temp/scaled.mkv -r 360/23 -y "out/luna%03d.bmp"

