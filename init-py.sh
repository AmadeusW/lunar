#!/bin/bash

echo "Downloading ephemeris"
mkdir temp
wget https://ssd.jpl.nasa.gov/ftp/eph/planets/bsp/de421.bsp -P temp/
echo "Finished"

