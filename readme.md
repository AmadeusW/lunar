# Lunar

Experiment with PaPiRus eink

![lunar v1](https://user-images.githubusercontent.com/1673956/157181037-94fa8aec-6d07-484e-9d54-cc0631cd56d4.jpg)


## Sources

- 103_MoonPhases2021.m4v
  - From https://moon.nasa.gov/moon-in-motion/moon-phases/
- [de421.bsp](https://ssd.jpl.nasa.gov/ftp/eph/planets/bsp/de421.bsp)
  - From https://ssd.jpl.nasa.gov/ftp/eph/planets/bsp/

## Workflow

Run on desktop:
`init.sh`
`build.sh`

Which runs the following steps:

Trim video from 0:09 to 0:33
 `ffmpeg -i 103_MoonPhases2021.m4v -vf trim=09.800:33.000 trimmed.mkv`

Threshold
 `ffmpeg -i trimmed.mkv -f lavfi -i color=#777777:s=1280x720 -f lavfi -i color=black:s=1280x720 -f lavfi -i color=white:s=1280x720 -filter_complex threshold threshold.mkv`

Scale down
 `ffmpeg -i threshold.mkv -vf scale=w=170:h=96 scaled.mkv`

Save the 23 second video as 360 bmps
 `ffmpeg -i scaled.mkv -r 360/23 $luna%03d.bmp`
 
 Copy the output files to raspberry pi
 On pi, set up the eink display and run the python files
